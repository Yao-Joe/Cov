from flask import Flask as _Flask, jsonify, flash
from flask import request
from flask import render_template
from flask.json import JSONEncoder as _JSONEncoder
from jieba.analyse import extract_tags
import spider
import decimal
import utils
import string


class JSONEncoder(_JSONEncoder):
    def default(self, o):
        if isinstance(o, decimal.Decimal):
            return float(o)
        super(_JSONEncoder, self).default(o)


class Flask(_Flask):
    json_encoder = JSONEncoder


app = Flask(__name__)


# -------------前台页面相关服务接口start----------------
# 系统默认路径前台跳转
@app.route('/')
def main_page():
    return render_template("main.html")


# 获取服务器时间
@app.route('/time')
def get_time():
    return utils.get_time()


# 中间统计数据
@app.route('/c1')
def get_c1_data():
    data = utils.get_c1_data()
    return jsonify({"confirm": data[0], "suspect": data[1], "heal": data[2], "dead": data[3]})


# 中间地图统计数据
@app.route('/c2')
def get_c2_data():
    res = []
    for tup in utils.get_c2_data():
        res.append({"name": tup[0], "value": int(tup[1])})
    return jsonify({"data": res})


# 左上数据 累计确诊数据
@app.route('/l1')
def get_l1_data():
    data = utils.get_l1_data()
    day, confirm, suspect, heal, dead = [], [], [], [], []
    for a, b, c, d, e in data[7:]:
        day.append(a.strftime("%m-%d"))
        confirm.append(b)
        suspect.append(c)
        heal.append(d)
        dead.append(e)
    return jsonify({"day": day, "confirm": confirm, "suspect": suspect, "heal": heal, "dead": dead})


# 左下数据 新增确诊以及疑似
@app.route('/l2')
def get_l2_data():
    data = utils.get_l2_data()
    day, confirm_add, suspect_add = [], [], []
    for a, b, c in data[7:]:
        day.append(a.strftime("%m-%d"))
        confirm_add.append(b)
        suspect_add.append(c)
    return jsonify({"day": day, "confirm_add": confirm_add, "suspect_add": suspect_add})


# 右边上面数据 疫情确诊前5
@app.route('/r1')
def get_r1_data():
    data = utils.get_r1_data()
    city = []
    confirm = []
    for k, v in data:
        city.append(k)
        confirm.append(int(v))
    return jsonify({"city": city, "confirm": confirm})


# 右边下面数据 热点新闻词
@app.route('/r2')
def get_r2_data():
    data = utils.get_r2_data()
    d = []
    for i in data:
        k = i[0].rstrip(string.digits)
        v = i[0][len(k) - 1:]
        ks = extract_tags(k)
        for j in ks:
            if not j.isdigit():
                d.append({"name": j, "value": "111"})
    return jsonify({"kws": d})


# -------------前台页面相关服务接口end-----------------
## 登录
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        if not all([username, password]):
            flash('参数不完整')
        res = utils.get_user(username, password)
        if res:
            return render_template('index.html')
        else:
            return render_template('login_error.html')
    return render_template('login.html')


# 登录页面跳转
@app.route('/admin')
def admin():
    return render_template('login.html')


# 后台首页面跳转
@app.route('/html/welcome')
def welcome():
    return render_template('html/welcome.html')


# 区域数据监测页面跳转
@app.route('/html/new')
def new():
    return render_template('html/new.html')


# 历史统计数据监测页面跳转
@app.route('/html/old')
def old():
    return render_template('html/old.html')


# 新闻标题数据监测页面跳转
@app.route('/html/news')
def news():
    return render_template('html/news.html')


# 获取分页历史统计数据
@app.route('/old/list', methods=["POST"])
def old_list():
    get_data = request.form.to_dict()
    page_size = get_data.get('page_size')
    page_no = get_data.get('page_no')
    param = get_data.get('param')
    data, count, page_list, max_page = utils.get_old_list(int(page_size), int(page_no), param)
    return jsonify({"data": data, "count": count, "page_no": page_no, "page_list": page_list, "max_page": max_page})


# 修改历史统计数据
@app.route('/old/edit', methods=["POST"])
def old_edit():
    get_data = request.form.to_dict()
    ds = get_data.get('ds')
    confirm = get_data.get('confirm')
    confirm_add = get_data.get('confirm_add')
    suspect = get_data.get('suspect')
    suspect_add = get_data.get('suspect_add')
    heal = get_data.get('heal')
    heal_add = get_data.get('heal_add')
    dead = get_data.get('dead')
    dead_add = get_data.get('dead_add')
    utils.edit_old(ds, confirm, confirm_add, suspect, suspect_add, heal, heal_add, dead, dead_add)
    return '200'


# 获取分页区域统计数据
@app.route('/new/list', methods=["POST"])
def new_list():
    get_data = request.form.to_dict()
    page_size = get_data.get('page_size')
    page_no = get_data.get('page_no')
    param = get_data.get('param')
    data, count, page_list, max_page = utils.get_new_list(int(page_size), int(page_no), param)
    return jsonify({"data": data, "count": count, "page_no": page_no, "page_list": page_list, "max_page": max_page})


# 修改区域统计数据
@app.route('/new/edit', methods=["POST"])
def new_edit():
    get_data = request.form.to_dict()
    id = get_data.get('id')
    confirm = get_data.get('confirm')
    confirm_add = get_data.get('confirm_add')
    heal = get_data.get('heal')
    dead = get_data.get('dead')
    utils.edit_new(id, confirm, confirm_add, heal, dead)
    return '200'


# 获取分页新闻标题数据
@app.route('/news/list', methods=["POST"])
def news_list():
    get_data = request.form.to_dict()
    page_size = get_data.get('page_size')
    page_no = get_data.get('page_no')
    param = get_data.get('param')
    data, count, page_list, max_page = utils.get_news_list(int(page_size), int(page_no), param)
    return jsonify({"data": data, "count": count, "page_no": page_no, "page_list": page_list, "max_page": max_page})


# 修改新闻标题数据
@app.route('/news/edit', methods=["POST"])
def news_edit():
    get_data = request.form.to_dict()
    id = get_data.get('id')
    content = get_data.get('content')
    utils.edit_news(id, content)
    return '200'


from concurrent.futures import ThreadPoolExecutor


# 后台调用爬虫
@app.route('/spider/start', methods=["POST"])
def online():
    executor = ThreadPoolExecutor(2)
    executor.submit(spider.online())
    return '200'


# -------------后台相关服务接口end-----------------

if __name__ == '__main__':
    # 端口号设置
    app.run(host="127.0.0.1", port=5000)
