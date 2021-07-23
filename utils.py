import time
import pymysql


def get_time():
    time_str = time.strftime("%Y{}%m{}%d{} %X")
    return time_str.format("年", "月", "日")


def get_conn():
    # 建立连接
    conn = pymysql.connect(host="192.168.10.101", user="root", password="hyf365888", db="demo", charset="utf8")
    # c创建游标A
    cursor = conn.cursor()
    return conn, cursor


def close_conn(conn, cursor):
    if cursor:
        cursor.close()
    if conn:
        conn.close()


def query(sql, *args):
    """

    :param sql:
    :param args:
    :return:
    """
    conn, cursor = get_conn()
    cursor.execute(sql, args)
    res = cursor.fetchall()
    conn.commit()
    close_conn(conn, cursor)
    return res


def test():
    sql = "select * from details"
    res = query(sql)
    return res[0]


def get_c1_data():
    sql = "select sum(confirm)," \
          "(select suspect from history order by ds desc limit 1)," \
          "sum(heal),sum(dead) from details " \
          "where update_time=(select update_time from details order by update_time desc limit 1) "
    res = query(sql)
    return res[0]


def get_c2_data():
    sql = "select province,sum(confirm) from details " \
          "where update_time=(select update_time from details " \
          "order by update_time desc limit 1) " \
          "group by province"
    res = query(sql)
    return res


def get_l1_data():
    sql = "select ds,confirm,suspect,heal,dead from history"
    res = query(sql)
    return res


def get_l2_data():
    sql = "select ds,confirm_add,suspect_add from history"
    res = query(sql)
    return res


def get_r1_data():
    sql = 'select city,confirm from ' \
          '(select city,confirm from details ' \
          'where update_time=(select update_time from details order by update_time desc limit 1) ' \
          'and province not in ("湖北","北京","上海","天津","重庆","香港") ' \
          'union all ' \
          'select province as city,sum(confirm) as confirm from details ' \
          'where update_time=(select update_time from details order by update_time desc limit 1) ' \
          'and province in ("北京","上海","天津","重庆","香港") group by province) as a ' \
          'order by confirm desc limit 5'
    res = query(sql)
    return res


def get_r2_data():
    sql = "select content from hotsearch order by id desc limit 20"
    res = query(sql)
    return res


def get_user(username, password):
    sql = "select id from sys_user where username= '" + username + "' and password= '" + password + "'"
    res = query(sql)
    return res


def get_old_list(page_size, page_no, param):
    count_sql = "select count(*) from history where " + param
    count_res = query(count_sql)[0][0]
    start = page_size * (page_no - 1)
    start = 0 if start < 0 else start
    sql = "select * from history where " + param + " order by ds desc limit " + str(start) + "," + str(page_size)
    res = query(sql)
    data_page = []
    page_list = []
    max_page = 0
    if count_res % page_size == 0:
        max_page = int(count_res / page_size)
    else:
        max_page = int(count_res / page_size) + 1
    if max_page <= 5:
        page_list = [i for i in range(1, max_page + 1, 1)]
    elif page_no + 2 > max_page:
        page_list = [i for i in range(max_page - 5, max_page + 1, 1)]
    elif page_no - 2 < 1:
        page_list = [i for i in range(1, 6, 1)]
    else:
        page_list = [i for i in range(page_no - 2, page_no + 3, 1)]
    for a, b, c, d, e, f, g, h, i in res:
        item = [a.strftime("%Y-%m-%d"), b, c, d, e, f, g, h, i]
        data_page.append(item)
    return data_page, count_res, page_list, max_page


def get_new_list(page_size, page_no, param):
    param = param.replace("\\", "")
    count_sql = "select count(*) from details where " + param
    count_res = query(count_sql)[0][0]
    start = page_size * (page_no - 1)
    start = 0 if start < 0 else start
    sql = "select * from details where " + param + " order by id desc limit " + str(start) + "," + str(page_size)
    res = query(sql)
    data_page = []
    page_list = []
    max_page = 0
    if count_res % page_size == 0:
        max_page = int(count_res / page_size)
    else:
        max_page = int(count_res / page_size) + 1
    if max_page <= 5:
        page_list = [i for i in range(1, max_page + 1, 1)]
    elif page_no + 2 > max_page:
        page_list = [i for i in range(max_page - 5, max_page + 1, 1)]
    elif page_no - 2 < 1:
        page_list = [i for i in range(1, 6, 1)]
    else:
        page_list = [i for i in range(page_no - 2, page_no + 3, 1)]
    for a, b, c, d, e, f, g, h in res:
        item = [a, b.strftime("%Y-%m-%d"), c, d, e, f, g, h]
        data_page.append(item)
    return data_page, count_res, page_list, max_page

def get_news_list(page_size, page_no, param):
    param = param.replace("\\", "")
    count_sql = "select count(*) from hotsearch where " + param
    count_res = query(count_sql)[0][0]
    start = page_size * (page_no - 1)
    start = 0 if start < 0 else start
    sql = "select * from hotsearch where " + param + " order by id desc limit " + str(start) + "," + str(page_size)
    res = query(sql)
    data_page = []
    page_list = []
    max_page = 0
    if count_res % page_size == 0:
        max_page = int(count_res / page_size)
    else:
        max_page = int(count_res / page_size) + 1
    if max_page <= 5:
        page_list = [i for i in range(1, max_page + 1, 1)]
    elif page_no + 2 > max_page:
        page_list = [i for i in range(max_page - 5, max_page + 1, 1)]
    elif page_no - 2 < 1:
        page_list = [i for i in range(1, 6, 1)]
    else:
        page_list = [i for i in range(page_no - 2, page_no + 3, 1)]
    for a, b, c in res:
        item = [a, b.strftime("%Y-%m-%d %H:%M:%S"), c]
        data_page.append(item)
    return data_page, count_res, page_list, max_page


def edit_old(ds, confirm, confirm_add, suspect, suspect_add, heal, heal_add, dead, dead_add):
    sql = "update history set confirm=" + confirm + ",confirm_add=" + confirm_add + ",suspect=" + suspect + ",suspect_add=" + suspect_add + ",heal=" + heal + ",heal_add=" + heal_add + ",dead=" + dead + ",dead_add=" + dead_add + " where ds ='" + ds + "'"
    res = query(sql)
    return res


def edit_new(id, confirm, confirm_add, heal, dead):
    sql = "update details set confirm=" + confirm + ",confirm_add=" + confirm_add + ",heal=" + heal + ",dead=" + dead + " where id =" + id
    res = query(sql)
    return res


def edit_news(id, content):
    sql = "update details set content='" + content + "' where id =" + id
    res = query(sql)
    return res


if __name__ == "__main__":
    print(get_old_list(30, 1, ''))
    # print(test())
