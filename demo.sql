/*
 Navicat Premium Data Transfer

 Source Server         : ubuntu-101
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 192.168.10.101:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 15/07/2021 18:22:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` datetime NULL DEFAULT NULL COMMENT '数据最后更新时间',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `confirm` int(11) NULL DEFAULT NULL COMMENT '累计确诊',
  `confirm_add` int(11) NULL DEFAULT NULL COMMENT '新增治愈',
  `heal` int(11) NULL DEFAULT NULL COMMENT '累计治愈',
  `dead` int(11) NULL DEFAULT NULL COMMENT '累计死亡',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5094 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES (4631, '2021-07-15 16:45:16', '台湾', '地区待确认', 15346, 44, 12083, 759);
INSERT INTO `details` VALUES (4632, '2021-07-15 16:45:16', '云南', '境外输入', 216, 7, 111, 0);
INSERT INTO `details` VALUES (4633, '2021-07-15 16:45:16', '云南', '德宏州', 164, 5, 98, 0);
INSERT INTO `details` VALUES (4634, '2021-07-15 16:45:16', '云南', '昭通市', 25, 0, 25, 0);
INSERT INTO `details` VALUES (4635, '2021-07-15 16:45:16', '云南', '昆明', 53, 0, 53, 0);
INSERT INTO `details` VALUES (4636, '2021-07-15 16:45:16', '云南', '保山市', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4637, '2021-07-15 16:45:16', '云南', '玉溪', 14, 0, 13, 1);
INSERT INTO `details` VALUES (4638, '2021-07-15 16:45:16', '云南', '红河', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4639, '2021-07-15 16:45:16', '云南', '曲靖', 13, 0, 13, 0);
INSERT INTO `details` VALUES (4640, '2021-07-15 16:45:16', '云南', '大理', 13, 0, 13, 0);
INSERT INTO `details` VALUES (4641, '2021-07-15 16:45:16', '云南', '西双版纳州', 15, 0, 14, 1);
INSERT INTO `details` VALUES (4642, '2021-07-15 16:45:16', '云南', '文山州', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4643, '2021-07-15 16:45:16', '云南', '普洱', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4644, '2021-07-15 16:45:16', '云南', '楚雄州', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4645, '2021-07-15 16:45:16', '云南', '丽江市', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4646, '2021-07-15 16:45:16', '云南', '临沧', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4647, '2021-07-15 16:45:16', '香港', '地区待确认', 11956, 3, 11669, 212);
INSERT INTO `details` VALUES (4648, '2021-07-15 16:45:16', '上海', '境外输入', 1886, 0, 1821, 0);
INSERT INTO `details` VALUES (4649, '2021-07-15 16:45:16', '上海', '静安', 16, 0, 15, 1);
INSERT INTO `details` VALUES (4650, '2021-07-15 16:45:16', '上海', '黄浦', 22, 0, 21, 1);
INSERT INTO `details` VALUES (4651, '2021-07-15 16:45:16', '上海', '地区待确认', 0, 0, 0, 0);
INSERT INTO `details` VALUES (4652, '2021-07-15 16:45:16', '上海', '长宁', 14, 0, 14, 0);
INSERT INTO `details` VALUES (4653, '2021-07-15 16:45:16', '上海', '浦东', 69, 0, 69, 0);
INSERT INTO `details` VALUES (4654, '2021-07-15 16:45:16', '上海', '境外来沪', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4655, '2021-07-15 16:45:16', '上海', '外地来沪', 113, 0, 112, 1);
INSERT INTO `details` VALUES (4656, '2021-07-15 16:45:16', '上海', '嘉定', 9, 0, 7, 2);
INSERT INTO `details` VALUES (4657, '2021-07-15 16:45:16', '上海', '徐汇', 18, 0, 17, 1);
INSERT INTO `details` VALUES (4658, '2021-07-15 16:45:16', '上海', '宝山', 26, 0, 25, 1);
INSERT INTO `details` VALUES (4659, '2021-07-15 16:45:16', '上海', '青浦', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4660, '2021-07-15 16:45:16', '上海', '金山', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4661, '2021-07-15 16:45:16', '上海', '虹口', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4662, '2021-07-15 16:45:16', '上海', '奉贤', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4663, '2021-07-15 16:45:16', '上海', '杨浦', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4664, '2021-07-15 16:45:16', '上海', '普陀', 11, 0, 11, 0);
INSERT INTO `details` VALUES (4665, '2021-07-15 16:45:16', '上海', '松江', 14, 0, 14, 0);
INSERT INTO `details` VALUES (4666, '2021-07-15 16:45:16', '上海', '闵行', 19, 0, 19, 0);
INSERT INTO `details` VALUES (4667, '2021-07-15 16:45:16', '上海', '崇明', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4668, '2021-07-15 16:45:16', '广东', '境外输入', 1225, 12, 1074, 0);
INSERT INTO `details` VALUES (4669, '2021-07-15 16:45:16', '广东', '东莞', 102, 0, 98, 1);
INSERT INTO `details` VALUES (4670, '2021-07-15 16:45:16', '广东', '肇庆', 19, 0, 18, 1);
INSERT INTO `details` VALUES (4671, '2021-07-15 16:45:16', '广东', '佛山', 101, 0, 101, 0);
INSERT INTO `details` VALUES (4672, '2021-07-15 16:45:16', '广东', '广州', 523, 0, 522, 1);
INSERT INTO `details` VALUES (4673, '2021-07-15 16:45:16', '广东', '深圳', 431, 0, 428, 3);
INSERT INTO `details` VALUES (4674, '2021-07-15 16:45:16', '广东', '湛江', 23, 0, 23, 0);
INSERT INTO `details` VALUES (4675, '2021-07-15 16:45:16', '广东', '汕尾', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4676, '2021-07-15 16:45:16', '广东', '中山', 67, 0, 67, 0);
INSERT INTO `details` VALUES (4677, '2021-07-15 16:45:16', '广东', '河源', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4678, '2021-07-15 16:45:16', '广东', '珠海', 98, 0, 97, 1);
INSERT INTO `details` VALUES (4679, '2021-07-15 16:45:16', '广东', '汕头', 25, 0, 25, 0);
INSERT INTO `details` VALUES (4680, '2021-07-15 16:45:16', '广东', '揭阳', 10, 0, 10, 0);
INSERT INTO `details` VALUES (4681, '2021-07-15 16:45:16', '广东', '江门', 23, 0, 23, 0);
INSERT INTO `details` VALUES (4682, '2021-07-15 16:45:16', '广东', '梅州', 16, 0, 16, 0);
INSERT INTO `details` VALUES (4683, '2021-07-15 16:45:16', '广东', '阳江', 14, 0, 14, 0);
INSERT INTO `details` VALUES (4684, '2021-07-15 16:45:16', '广东', '茂名', 14, 0, 14, 0);
INSERT INTO `details` VALUES (4685, '2021-07-15 16:45:16', '广东', '韶关', 10, 0, 9, 1);
INSERT INTO `details` VALUES (4686, '2021-07-15 16:45:16', '广东', '清远', 12, 0, 12, 0);
INSERT INTO `details` VALUES (4687, '2021-07-15 16:45:16', '广东', '惠州', 62, 0, 62, 0);
INSERT INTO `details` VALUES (4688, '2021-07-15 16:45:16', '广东', '潮州', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4689, '2021-07-15 16:45:16', '广东', '地区待确认', 0, 0, 92, 0);
INSERT INTO `details` VALUES (4690, '2021-07-15 16:45:16', '浙江', '境外输入', 169, 2, 116, 0);
INSERT INTO `details` VALUES (4691, '2021-07-15 16:45:16', '浙江', '金华', 55, 0, 55, 0);
INSERT INTO `details` VALUES (4692, '2021-07-15 16:45:16', '浙江', '省十里丰监狱', 36, 0, 36, 0);
INSERT INTO `details` VALUES (4693, '2021-07-15 16:45:16', '浙江', '丽水', 17, 0, 17, 0);
INSERT INTO `details` VALUES (4694, '2021-07-15 16:45:16', '浙江', '舟山', 10, 0, 10, 0);
INSERT INTO `details` VALUES (4695, '2021-07-15 16:45:16', '浙江', '衢州', 14, 0, 14, 0);
INSERT INTO `details` VALUES (4696, '2021-07-15 16:45:16', '浙江', '台州', 147, 0, 147, 0);
INSERT INTO `details` VALUES (4697, '2021-07-15 16:45:16', '浙江', '绍兴', 42, 0, 42, 0);
INSERT INTO `details` VALUES (4698, '2021-07-15 16:45:16', '浙江', '嘉兴', 46, 0, 46, 0);
INSERT INTO `details` VALUES (4699, '2021-07-15 16:45:16', '浙江', '湖州', 10, 0, 10, 0);
INSERT INTO `details` VALUES (4700, '2021-07-15 16:45:16', '浙江', '温州', 504, 0, 503, 1);
INSERT INTO `details` VALUES (4701, '2021-07-15 16:45:16', '浙江', '宁波', 157, 0, 157, 0);
INSERT INTO `details` VALUES (4702, '2021-07-15 16:45:16', '浙江', '杭州', 181, 0, 181, 0);
INSERT INTO `details` VALUES (4703, '2021-07-15 16:45:16', '四川', '境外输入', 567, 1, 525, 0);
INSERT INTO `details` VALUES (4704, '2021-07-15 16:45:16', '四川', '眉山', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4705, '2021-07-15 16:45:16', '四川', '雅安', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4706, '2021-07-15 16:45:16', '四川', '德阳', 18, 0, 18, 0);
INSERT INTO `details` VALUES (4707, '2021-07-15 16:45:16', '四川', '自贡', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4708, '2021-07-15 16:45:16', '四川', '攀枝花', 16, 0, 16, 0);
INSERT INTO `details` VALUES (4709, '2021-07-15 16:45:16', '四川', '泸州', 24, 0, 24, 0);
INSERT INTO `details` VALUES (4710, '2021-07-15 16:45:16', '四川', '凉山', 13, 0, 13, 0);
INSERT INTO `details` VALUES (4711, '2021-07-15 16:45:16', '四川', '甘孜', 78, 0, 78, 0);
INSERT INTO `details` VALUES (4712, '2021-07-15 16:45:16', '四川', '阿坝', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4713, '2021-07-15 16:45:16', '四川', '资阳', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4714, '2021-07-15 16:45:16', '四川', '成都', 158, 0, 155, 3);
INSERT INTO `details` VALUES (4715, '2021-07-15 16:45:16', '四川', '巴中', 24, 0, 24, 0);
INSERT INTO `details` VALUES (4716, '2021-07-15 16:45:16', '四川', '达州', 42, 0, 42, 0);
INSERT INTO `details` VALUES (4717, '2021-07-15 16:45:16', '四川', '广安', 30, 0, 30, 0);
INSERT INTO `details` VALUES (4718, '2021-07-15 16:45:16', '四川', '宜宾', 12, 0, 12, 0);
INSERT INTO `details` VALUES (4719, '2021-07-15 16:45:16', '四川', '南充', 39, 0, 39, 0);
INSERT INTO `details` VALUES (4720, '2021-07-15 16:45:16', '四川', '乐山', 3, 0, 3, 0);
INSERT INTO `details` VALUES (4721, '2021-07-15 16:45:16', '四川', '内江', 22, 0, 22, 0);
INSERT INTO `details` VALUES (4722, '2021-07-15 16:45:16', '四川', '遂宁', 17, 0, 17, 0);
INSERT INTO `details` VALUES (4723, '2021-07-15 16:45:16', '四川', '广元', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4724, '2021-07-15 16:45:16', '四川', '绵阳', 22, 0, 22, 0);
INSERT INTO `details` VALUES (4725, '2021-07-15 16:45:16', '福建', '境外输入', 404, 1, 364, 0);
INSERT INTO `details` VALUES (4726, '2021-07-15 16:45:16', '福建', '莆田', 56, 0, 56, 0);
INSERT INTO `details` VALUES (4727, '2021-07-15 16:45:16', '福建', '漳州', 20, 0, 20, 0);
INSERT INTO `details` VALUES (4728, '2021-07-15 16:45:16', '福建', '地区待确认', 0, 0, 0, 0);
INSERT INTO `details` VALUES (4729, '2021-07-15 16:45:16', '福建', '宁德', 26, 0, 26, 0);
INSERT INTO `details` VALUES (4730, '2021-07-15 16:45:16', '福建', '龙岩', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4731, '2021-07-15 16:45:16', '福建', '南平', 20, 0, 20, 0);
INSERT INTO `details` VALUES (4732, '2021-07-15 16:45:16', '福建', '三明', 14, 0, 14, 0);
INSERT INTO `details` VALUES (4733, '2021-07-15 16:45:16', '福建', '泉州', 47, 0, 47, 0);
INSERT INTO `details` VALUES (4734, '2021-07-15 16:45:16', '福建', '厦门', 35, 0, 35, 0);
INSERT INTO `details` VALUES (4735, '2021-07-15 16:45:16', '福建', '福州', 72, 0, 71, 1);
INSERT INTO `details` VALUES (4736, '2021-07-15 16:45:16', '湖北', '境外输入', 53, 0, 25, 0);
INSERT INTO `details` VALUES (4737, '2021-07-15 16:45:16', '湖北', '武汉', 50340, 0, 46471, 3869);
INSERT INTO `details` VALUES (4738, '2021-07-15 16:45:16', '湖北', '荆州', 1580, 0, 1528, 52);
INSERT INTO `details` VALUES (4739, '2021-07-15 16:45:16', '湖北', '黄冈', 2907, 0, 2782, 125);
INSERT INTO `details` VALUES (4740, '2021-07-15 16:45:16', '湖北', '十堰', 672, 0, 664, 8);
INSERT INTO `details` VALUES (4741, '2021-07-15 16:45:16', '湖北', '孝感', 3518, 0, 3389, 129);
INSERT INTO `details` VALUES (4742, '2021-07-15 16:45:16', '湖北', '仙桃', 575, 0, 553, 22);
INSERT INTO `details` VALUES (4743, '2021-07-15 16:45:16', '湖北', '黄石', 1015, 0, 976, 39);
INSERT INTO `details` VALUES (4744, '2021-07-15 16:45:16', '湖北', '荆门', 928, 0, 887, 41);
INSERT INTO `details` VALUES (4745, '2021-07-15 16:45:16', '湖北', '宜昌', 931, 0, 894, 37);
INSERT INTO `details` VALUES (4746, '2021-07-15 16:45:16', '湖北', '襄阳', 1175, 0, 1135, 40);
INSERT INTO `details` VALUES (4747, '2021-07-15 16:45:16', '湖北', '鄂州', 1394, 0, 1335, 59);
INSERT INTO `details` VALUES (4748, '2021-07-15 16:45:16', '湖北', '天门', 496, 0, 481, 15);
INSERT INTO `details` VALUES (4749, '2021-07-15 16:45:16', '湖北', '潜江', 198, 0, 189, 9);
INSERT INTO `details` VALUES (4750, '2021-07-15 16:45:16', '湖北', '恩施州', 252, 0, 245, 7);
INSERT INTO `details` VALUES (4751, '2021-07-15 16:45:16', '湖北', '随州', 1307, 0, 1262, 45);
INSERT INTO `details` VALUES (4752, '2021-07-15 16:45:16', '湖北', '咸宁', 836, 0, 821, 15);
INSERT INTO `details` VALUES (4753, '2021-07-15 16:45:16', '湖北', '神农架', 11, 0, 11, 0);
INSERT INTO `details` VALUES (4754, '2021-07-15 16:45:16', '天津', '境外输入', 261, 0, 248, 0);
INSERT INTO `details` VALUES (4755, '2021-07-15 16:45:16', '天津', '宁河区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4756, '2021-07-15 16:45:16', '天津', '北辰区', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4757, '2021-07-15 16:45:16', '天津', '宝坻区', 60, 0, 58, 2);
INSERT INTO `details` VALUES (4758, '2021-07-15 16:45:16', '天津', '河北区', 12, 0, 12, 0);
INSERT INTO `details` VALUES (4759, '2021-07-15 16:45:16', '天津', '津南区', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4760, '2021-07-15 16:45:16', '天津', '南开区', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4761, '2021-07-15 16:45:16', '天津', '河东区', 15, 0, 14, 1);
INSERT INTO `details` VALUES (4762, '2021-07-15 16:45:16', '天津', '滨海新区', 13, 0, 13, 0);
INSERT INTO `details` VALUES (4763, '2021-07-15 16:45:16', '天津', '和平区', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4764, '2021-07-15 16:45:16', '天津', '外地来津', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4765, '2021-07-15 16:45:16', '天津', '武清区', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4766, '2021-07-15 16:45:16', '天津', '东丽区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4767, '2021-07-15 16:45:16', '天津', '河西区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4768, '2021-07-15 16:45:16', '天津', '西青区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4769, '2021-07-15 16:45:16', '天津', '红桥区', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4770, '2021-07-15 16:45:16', '河南', '境外输入', 51, 0, 40, 0);
INSERT INTO `details` VALUES (4771, '2021-07-15 16:45:16', '河南', '许昌', 39, 0, 38, 1);
INSERT INTO `details` VALUES (4772, '2021-07-15 16:45:16', '河南', '地区待确认', 0, 0, 0, 0);
INSERT INTO `details` VALUES (4773, '2021-07-15 16:45:16', '河南', '周口', 76, 0, 75, 1);
INSERT INTO `details` VALUES (4774, '2021-07-15 16:45:16', '河南', '南阳', 156, 0, 153, 3);
INSERT INTO `details` VALUES (4775, '2021-07-15 16:45:16', '河南', '信阳', 274, 0, 272, 2);
INSERT INTO `details` VALUES (4776, '2021-07-15 16:45:16', '河南', '郑州', 157, 0, 152, 5);
INSERT INTO `details` VALUES (4777, '2021-07-15 16:45:16', '河南', '安阳', 53, 0, 53, 0);
INSERT INTO `details` VALUES (4778, '2021-07-15 16:45:16', '河南', '济源示范区', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4779, '2021-07-15 16:45:16', '河南', '新乡', 57, 0, 54, 3);
INSERT INTO `details` VALUES (4780, '2021-07-15 16:45:16', '河南', '漯河', 36, 0, 36, 0);
INSERT INTO `details` VALUES (4781, '2021-07-15 16:45:16', '河南', '商丘', 91, 0, 88, 3);
INSERT INTO `details` VALUES (4782, '2021-07-15 16:45:16', '河南', '驻马店', 139, 0, 139, 0);
INSERT INTO `details` VALUES (4783, '2021-07-15 16:45:16', '河南', '焦作', 32, 0, 31, 1);
INSERT INTO `details` VALUES (4784, '2021-07-15 16:45:16', '河南', '开封', 26, 0, 26, 0);
INSERT INTO `details` VALUES (4785, '2021-07-15 16:45:16', '河南', '平顶山', 58, 0, 57, 1);
INSERT INTO `details` VALUES (4786, '2021-07-15 16:45:16', '河南', '洛阳', 31, 0, 30, 1);
INSERT INTO `details` VALUES (4787, '2021-07-15 16:45:16', '河南', '濮阳', 17, 0, 17, 0);
INSERT INTO `details` VALUES (4788, '2021-07-15 16:45:16', '河南', '鹤壁', 19, 0, 19, 0);
INSERT INTO `details` VALUES (4789, '2021-07-15 16:45:16', '河南', '三门峡', 7, 0, 6, 1);
INSERT INTO `details` VALUES (4790, '2021-07-15 16:45:16', '陕西', '境外输入', 389, 0, 378, 0);
INSERT INTO `details` VALUES (4791, '2021-07-15 16:45:16', '陕西', '韩城', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4792, '2021-07-15 16:45:16', '陕西', '渭南', 17, 0, 17, 0);
INSERT INTO `details` VALUES (4793, '2021-07-15 16:45:16', '陕西', '地区待确认', 0, 0, 0, 0);
INSERT INTO `details` VALUES (4794, '2021-07-15 16:45:16', '陕西', '咸阳', 17, 0, 17, 0);
INSERT INTO `details` VALUES (4795, '2021-07-15 16:45:16', '陕西', '汉中', 26, 0, 26, 0);
INSERT INTO `details` VALUES (4796, '2021-07-15 16:45:16', '陕西', '杨凌', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4797, '2021-07-15 16:45:16', '陕西', '西安', 121, 0, 118, 3);
INSERT INTO `details` VALUES (4798, '2021-07-15 16:45:16', '陕西', '榆林', 3, 0, 3, 0);
INSERT INTO `details` VALUES (4799, '2021-07-15 16:45:16', '陕西', '商洛', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4800, '2021-07-15 16:45:16', '陕西', '铜川', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4801, '2021-07-15 16:45:16', '陕西', '延安', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4802, '2021-07-15 16:45:16', '陕西', '宝鸡', 13, 0, 13, 0);
INSERT INTO `details` VALUES (4803, '2021-07-15 16:45:16', '陕西', '安康', 26, 0, 26, 0);
INSERT INTO `details` VALUES (4804, '2021-07-15 16:45:16', '江苏', '境外输入', 116, 0, 107, 0);
INSERT INTO `details` VALUES (4805, '2021-07-15 16:45:16', '江苏', '南京', 94, 0, 93, 0);
INSERT INTO `details` VALUES (4806, '2021-07-15 16:45:16', '江苏', '徐州', 79, 0, 79, 0);
INSERT INTO `details` VALUES (4807, '2021-07-15 16:45:16', '江苏', '宿迁', 13, 0, 13, 0);
INSERT INTO `details` VALUES (4808, '2021-07-15 16:45:16', '江苏', '南通', 40, 0, 40, 0);
INSERT INTO `details` VALUES (4809, '2021-07-15 16:45:16', '江苏', '苏州', 87, 0, 87, 0);
INSERT INTO `details` VALUES (4810, '2021-07-15 16:45:16', '江苏', '无锡', 55, 0, 55, 0);
INSERT INTO `details` VALUES (4811, '2021-07-15 16:45:16', '江苏', '盐城', 27, 0, 27, 0);
INSERT INTO `details` VALUES (4812, '2021-07-15 16:45:16', '江苏', '连云港', 48, 0, 48, 0);
INSERT INTO `details` VALUES (4813, '2021-07-15 16:45:16', '江苏', '淮安', 66, 0, 66, 0);
INSERT INTO `details` VALUES (4814, '2021-07-15 16:45:16', '江苏', '镇江', 12, 0, 12, 0);
INSERT INTO `details` VALUES (4815, '2021-07-15 16:45:16', '江苏', '常州', 51, 0, 51, 0);
INSERT INTO `details` VALUES (4816, '2021-07-15 16:45:16', '江苏', '扬州', 23, 0, 23, 0);
INSERT INTO `details` VALUES (4817, '2021-07-15 16:45:16', '江苏', '泰州', 37, 0, 37, 0);
INSERT INTO `details` VALUES (4818, '2021-07-15 16:45:16', '湖南', '境外输入', 45, 0, 36, 0);
INSERT INTO `details` VALUES (4819, '2021-07-15 16:45:16', '湖南', '常德', 82, 0, 82, 0);
INSERT INTO `details` VALUES (4820, '2021-07-15 16:45:16', '湖南', '怀化', 40, 0, 40, 0);
INSERT INTO `details` VALUES (4821, '2021-07-15 16:45:16', '湖南', '永州', 44, 0, 44, 0);
INSERT INTO `details` VALUES (4822, '2021-07-15 16:45:16', '湖南', '郴州', 39, 0, 39, 0);
INSERT INTO `details` VALUES (4823, '2021-07-15 16:45:16', '湖南', '益阳', 60, 0, 60, 0);
INSERT INTO `details` VALUES (4824, '2021-07-15 16:45:16', '湖南', '张家界', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4825, '2021-07-15 16:45:16', '湖南', '湘西自治州', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4826, '2021-07-15 16:45:16', '湖南', '岳阳', 156, 0, 155, 1);
INSERT INTO `details` VALUES (4827, '2021-07-15 16:45:16', '湖南', '邵阳', 102, 0, 101, 1);
INSERT INTO `details` VALUES (4828, '2021-07-15 16:45:16', '湖南', '湘潭', 36, 0, 36, 0);
INSERT INTO `details` VALUES (4829, '2021-07-15 16:45:16', '湖南', '株洲', 80, 0, 80, 0);
INSERT INTO `details` VALUES (4830, '2021-07-15 16:45:16', '湖南', '衡阳', 48, 0, 48, 0);
INSERT INTO `details` VALUES (4831, '2021-07-15 16:45:16', '湖南', '长沙', 242, 0, 240, 2);
INSERT INTO `details` VALUES (4832, '2021-07-15 16:45:16', '湖南', '娄底', 76, 0, 76, 0);
INSERT INTO `details` VALUES (4833, '2021-07-15 16:45:16', '北京', '境外输入', 251, 0, 244, 0);
INSERT INTO `details` VALUES (4834, '2021-07-15 16:45:16', '北京', '东城', 19, 0, 19, 0);
INSERT INTO `details` VALUES (4835, '2021-07-15 16:45:16', '北京', '怀柔', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4836, '2021-07-15 16:45:16', '北京', '顺义', 45, 0, 45, 0);
INSERT INTO `details` VALUES (4837, '2021-07-15 16:45:16', '北京', '大兴', 134, 0, 134, 0);
INSERT INTO `details` VALUES (4838, '2021-07-15 16:45:16', '北京', '地区待确认', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4839, '2021-07-15 16:45:16', '北京', '密云', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4840, '2021-07-15 16:45:16', '北京', '外地来京', 25, 0, 25, 0);
INSERT INTO `details` VALUES (4841, '2021-07-15 16:45:16', '北京', '石景山', 15, 0, 15, 0);
INSERT INTO `details` VALUES (4842, '2021-07-15 16:45:16', '北京', '朝阳', 80, 0, 80, 0);
INSERT INTO `details` VALUES (4843, '2021-07-15 16:45:16', '北京', '通州', 20, 0, 11, 9);
INSERT INTO `details` VALUES (4844, '2021-07-15 16:45:16', '北京', '房山', 20, 0, 20, 0);
INSERT INTO `details` VALUES (4845, '2021-07-15 16:45:16', '北京', '门头沟', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4846, '2021-07-15 16:45:16', '北京', '西城', 59, 0, 59, 0);
INSERT INTO `details` VALUES (4847, '2021-07-15 16:45:16', '北京', '海淀', 82, 0, 82, 0);
INSERT INTO `details` VALUES (4848, '2021-07-15 16:45:16', '北京', '丰台', 273, 0, 273, 0);
INSERT INTO `details` VALUES (4849, '2021-07-15 16:45:16', '北京', '延庆', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4850, '2021-07-15 16:45:16', '北京', '昌平', 30, 0, 30, 0);
INSERT INTO `details` VALUES (4851, '2021-07-15 16:45:16', '安徽', '境外输入', 7, 0, 3, 0);
INSERT INTO `details` VALUES (4852, '2021-07-15 16:45:16', '安徽', '滁州', 13, 0, 13, 0);
INSERT INTO `details` VALUES (4853, '2021-07-15 16:45:16', '安徽', '合肥', 176, 0, 175, 1);
INSERT INTO `details` VALUES (4854, '2021-07-15 16:45:16', '安徽', '阜阳', 156, 0, 156, 0);
INSERT INTO `details` VALUES (4855, '2021-07-15 16:45:16', '安徽', '宣城', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4856, '2021-07-15 16:45:16', '安徽', '池州', 17, 0, 17, 0);
INSERT INTO `details` VALUES (4857, '2021-07-15 16:45:16', '安徽', '亳州', 108, 0, 108, 0);
INSERT INTO `details` VALUES (4858, '2021-07-15 16:45:16', '安徽', '宿州', 41, 0, 41, 0);
INSERT INTO `details` VALUES (4859, '2021-07-15 16:45:16', '安徽', '六安', 77, 0, 77, 0);
INSERT INTO `details` VALUES (4860, '2021-07-15 16:45:16', '安徽', '黄山', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4861, '2021-07-15 16:45:16', '安徽', '安庆', 83, 0, 83, 0);
INSERT INTO `details` VALUES (4862, '2021-07-15 16:45:16', '安徽', '铜陵', 29, 0, 29, 0);
INSERT INTO `details` VALUES (4863, '2021-07-15 16:45:16', '安徽', '淮北', 27, 0, 27, 0);
INSERT INTO `details` VALUES (4864, '2021-07-15 16:45:16', '安徽', '马鞍山', 38, 0, 38, 0);
INSERT INTO `details` VALUES (4865, '2021-07-15 16:45:16', '安徽', '淮南', 27, 0, 27, 0);
INSERT INTO `details` VALUES (4866, '2021-07-15 16:45:16', '安徽', '蚌埠', 160, 0, 155, 5);
INSERT INTO `details` VALUES (4867, '2021-07-15 16:45:16', '安徽', '芜湖', 34, 0, 34, 0);
INSERT INTO `details` VALUES (4868, '2021-07-15 16:45:16', '辽宁', '境外输入', 106, 0, 102, 0);
INSERT INTO `details` VALUES (4869, '2021-07-15 16:45:16', '辽宁', '丹东', 11, 0, 11, 0);
INSERT INTO `details` VALUES (4870, '2021-07-15 16:45:16', '辽宁', '地区待确认', 0, 0, 0, 0);
INSERT INTO `details` VALUES (4871, '2021-07-15 16:45:16', '辽宁', '沈阳', 74, 0, 74, 0);
INSERT INTO `details` VALUES (4872, '2021-07-15 16:45:16', '辽宁', '大连', 161, 0, 161, 0);
INSERT INTO `details` VALUES (4873, '2021-07-15 16:45:16', '辽宁', '铁岭', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4874, '2021-07-15 16:45:16', '辽宁', '抚顺', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4875, '2021-07-15 16:45:16', '辽宁', '朝阳市', 6, 0, 5, 1);
INSERT INTO `details` VALUES (4876, '2021-07-15 16:45:16', '辽宁', '营口', 11, 0, 11, 0);
INSERT INTO `details` VALUES (4877, '2021-07-15 16:45:16', '辽宁', '葫芦岛', 12, 0, 11, 1);
INSERT INTO `details` VALUES (4878, '2021-07-15 16:45:16', '辽宁', '鞍山', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4879, '2021-07-15 16:45:16', '辽宁', '锦州', 12, 0, 12, 0);
INSERT INTO `details` VALUES (4880, '2021-07-15 16:45:16', '辽宁', '盘锦', 11, 0, 11, 0);
INSERT INTO `details` VALUES (4881, '2021-07-15 16:45:16', '辽宁', '阜新', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4882, '2021-07-15 16:45:16', '辽宁', '本溪', 3, 0, 3, 0);
INSERT INTO `details` VALUES (4883, '2021-07-15 16:45:16', '辽宁', '辽阳', 3, 0, 3, 0);
INSERT INTO `details` VALUES (4884, '2021-07-15 16:45:16', '内蒙古', '境外输入', 292, 0, 288, 0);
INSERT INTO `details` VALUES (4885, '2021-07-15 16:45:16', '内蒙古', '呼伦贝尔', 37, 0, 37, 0);
INSERT INTO `details` VALUES (4886, '2021-07-15 16:45:16', '内蒙古', '包头', 11, 0, 11, 0);
INSERT INTO `details` VALUES (4887, '2021-07-15 16:45:16', '内蒙古', '呼和浩特', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4888, '2021-07-15 16:45:16', '内蒙古', '乌兰察布', 3, 0, 3, 0);
INSERT INTO `details` VALUES (4889, '2021-07-15 16:45:16', '内蒙古', '锡林郭勒', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4890, '2021-07-15 16:45:16', '内蒙古', '赤峰', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4891, '2021-07-15 16:45:16', '内蒙古', '通辽', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4892, '2021-07-15 16:45:16', '内蒙古', '鄂尔多斯', 11, 0, 11, 0);
INSERT INTO `details` VALUES (4893, '2021-07-15 16:45:16', '内蒙古', '巴彦淖尔', 8, 0, 7, 1);
INSERT INTO `details` VALUES (4894, '2021-07-15 16:45:16', '内蒙古', '兴安盟', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4895, '2021-07-15 16:45:16', '内蒙古', '乌海', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4896, '2021-07-15 16:45:16', '重庆', '境外输入', 25, 0, 22, 0);
INSERT INTO `details` VALUES (4897, '2021-07-15 16:45:16', '重庆', '涪陵区', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4898, '2021-07-15 16:45:16', '重庆', '长寿区', 22, 0, 22, 0);
INSERT INTO `details` VALUES (4899, '2021-07-15 16:45:16', '重庆', '荣昌区', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4900, '2021-07-15 16:45:16', '重庆', '大足区', 14, 0, 14, 0);
INSERT INTO `details` VALUES (4901, '2021-07-15 16:45:16', '重庆', '丰都县', 10, 0, 10, 0);
INSERT INTO `details` VALUES (4902, '2021-07-15 16:45:16', '重庆', '潼南区', 18, 0, 18, 0);
INSERT INTO `details` VALUES (4903, '2021-07-15 16:45:16', '重庆', '铜梁区', 10, 0, 10, 0);
INSERT INTO `details` VALUES (4904, '2021-07-15 16:45:16', '重庆', '南岸区', 15, 0, 15, 0);
INSERT INTO `details` VALUES (4905, '2021-07-15 16:45:16', '重庆', '九龙坡区', 21, 0, 20, 1);
INSERT INTO `details` VALUES (4906, '2021-07-15 16:45:16', '重庆', '沙坪坝区', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4907, '2021-07-15 16:45:16', '重庆', '江北区', 28, 0, 28, 0);
INSERT INTO `details` VALUES (4908, '2021-07-15 16:45:16', '重庆', '万州区', 118, 0, 114, 4);
INSERT INTO `details` VALUES (4909, '2021-07-15 16:45:16', '重庆', '两江新区', 17, 0, 17, 0);
INSERT INTO `details` VALUES (4910, '2021-07-15 16:45:16', '重庆', '巴南区', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4911, '2021-07-15 16:45:16', '重庆', '渝中区', 20, 0, 20, 0);
INSERT INTO `details` VALUES (4912, '2021-07-15 16:45:16', '重庆', '垫江县', 20, 0, 20, 0);
INSERT INTO `details` VALUES (4913, '2021-07-15 16:45:16', '重庆', '云阳县', 25, 0, 25, 0);
INSERT INTO `details` VALUES (4914, '2021-07-15 16:45:16', '重庆', '奉节县', 22, 0, 22, 0);
INSERT INTO `details` VALUES (4915, '2021-07-15 16:45:16', '重庆', '石柱县', 15, 0, 15, 0);
INSERT INTO `details` VALUES (4916, '2021-07-15 16:45:16', '重庆', '綦江区', 23, 0, 23, 0);
INSERT INTO `details` VALUES (4917, '2021-07-15 16:45:16', '重庆', '渝北区', 17, 0, 17, 0);
INSERT INTO `details` VALUES (4918, '2021-07-15 16:45:16', '重庆', '彭水县', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4919, '2021-07-15 16:45:16', '重庆', '忠县', 21, 0, 21, 0);
INSERT INTO `details` VALUES (4920, '2021-07-15 16:45:16', '重庆', '开州区', 21, 0, 20, 1);
INSERT INTO `details` VALUES (4921, '2021-07-15 16:45:16', '重庆', '合川区', 23, 0, 23, 0);
INSERT INTO `details` VALUES (4922, '2021-07-15 16:45:16', '重庆', '巫溪县', 14, 0, 14, 0);
INSERT INTO `details` VALUES (4923, '2021-07-15 16:45:16', '重庆', '大渡口区', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4924, '2021-07-15 16:45:16', '重庆', '巫山县', 10, 0, 10, 0);
INSERT INTO `details` VALUES (4925, '2021-07-15 16:45:16', '重庆', '万盛经开区', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4926, '2021-07-15 16:45:16', '重庆', '酉阳县', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4927, '2021-07-15 16:45:16', '重庆', '璧山区', 9, 0, 9, 0);
INSERT INTO `details` VALUES (4928, '2021-07-15 16:45:16', '重庆', '高新区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4929, '2021-07-15 16:45:16', '重庆', '永川区', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4930, '2021-07-15 16:45:16', '重庆', '江津区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4931, '2021-07-15 16:45:16', '重庆', '武隆区', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4932, '2021-07-15 16:45:16', '重庆', '梁平区', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4933, '2021-07-15 16:45:16', '重庆', '城口县', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4934, '2021-07-15 16:45:16', '重庆', '黔江区', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4935, '2021-07-15 16:45:16', '重庆', '秀山县', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4936, '2021-07-15 16:45:16', '广西', '境外输入', 24, 0, 22, 0);
INSERT INTO `details` VALUES (4937, '2021-07-15 16:45:16', '广西', '桂林', 32, 0, 32, 0);
INSERT INTO `details` VALUES (4938, '2021-07-15 16:45:16', '广西', '北海', 44, 0, 43, 1);
INSERT INTO `details` VALUES (4939, '2021-07-15 16:45:16', '广西', '防城港', 19, 0, 19, 0);
INSERT INTO `details` VALUES (4940, '2021-07-15 16:45:16', '广西', '来宾', 11, 0, 11, 0);
INSERT INTO `details` VALUES (4941, '2021-07-15 16:45:16', '广西', '柳州', 24, 0, 24, 0);
INSERT INTO `details` VALUES (4942, '2021-07-15 16:45:16', '广西', '河池', 28, 0, 27, 1);
INSERT INTO `details` VALUES (4943, '2021-07-15 16:45:16', '广西', '南宁', 56, 0, 56, 0);
INSERT INTO `details` VALUES (4944, '2021-07-15 16:45:16', '广西', '玉林', 11, 0, 11, 0);
INSERT INTO `details` VALUES (4945, '2021-07-15 16:45:16', '广西', '钦州', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4946, '2021-07-15 16:45:16', '广西', '贵港', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4947, '2021-07-15 16:45:16', '广西', '梧州', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4948, '2021-07-15 16:45:16', '广西', '百色', 3, 0, 3, 0);
INSERT INTO `details` VALUES (4949, '2021-07-15 16:45:16', '广西', '贺州', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4950, '2021-07-15 16:45:16', '澳门', '地区待确认', 55, 0, 53, 0);
INSERT INTO `details` VALUES (4951, '2021-07-15 16:45:16', '山西', '境外输入', 115, 0, 114, 0);
INSERT INTO `details` VALUES (4952, '2021-07-15 16:45:16', '山西', '晋中', 41, 0, 41, 0);
INSERT INTO `details` VALUES (4953, '2021-07-15 16:45:16', '山西', '太原', 21, 0, 21, 0);
INSERT INTO `details` VALUES (4954, '2021-07-15 16:45:16', '山西', '大同', 12, 0, 12, 0);
INSERT INTO `details` VALUES (4955, '2021-07-15 16:45:16', '山西', '运城', 19, 0, 19, 0);
INSERT INTO `details` VALUES (4956, '2021-07-15 16:45:16', '山西', '忻州', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4957, '2021-07-15 16:45:16', '山西', '晋城', 10, 0, 10, 0);
INSERT INTO `details` VALUES (4958, '2021-07-15 16:45:16', '山西', '长治', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4959, '2021-07-15 16:45:16', '山西', '朔州', 8, 0, 8, 0);
INSERT INTO `details` VALUES (4960, '2021-07-15 16:45:16', '山西', '临汾', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4961, '2021-07-15 16:45:16', '山西', '阳泉', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4962, '2021-07-15 16:45:16', '山西', '吕梁', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4963, '2021-07-15 16:45:16', '海南', '境外输入', 19, 0, 18, 0);
INSERT INTO `details` VALUES (4964, '2021-07-15 16:45:16', '海南', '保亭', 3, 0, 3, 0);
INSERT INTO `details` VALUES (4965, '2021-07-15 16:45:16', '海南', '海口', 39, 0, 39, 0);
INSERT INTO `details` VALUES (4966, '2021-07-15 16:45:16', '海南', '儋州', 15, 0, 14, 1);
INSERT INTO `details` VALUES (4967, '2021-07-15 16:45:16', '海南', '东方', 3, 0, 2, 1);
INSERT INTO `details` VALUES (4968, '2021-07-15 16:45:16', '海南', '万宁', 13, 0, 13, 0);
INSERT INTO `details` VALUES (4969, '2021-07-15 16:45:16', '海南', '澄迈县', 9, 0, 8, 1);
INSERT INTO `details` VALUES (4970, '2021-07-15 16:45:16', '海南', '昌江县', 7, 0, 7, 0);
INSERT INTO `details` VALUES (4971, '2021-07-15 16:45:16', '海南', '三亚', 55, 0, 54, 1);
INSERT INTO `details` VALUES (4972, '2021-07-15 16:45:16', '海南', '琼海', 6, 0, 5, 1);
INSERT INTO `details` VALUES (4973, '2021-07-15 16:45:16', '海南', '临高县', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4974, '2021-07-15 16:45:16', '海南', '陵水县', 4, 0, 4, 0);
INSERT INTO `details` VALUES (4975, '2021-07-15 16:45:16', '海南', '乐东', 2, 0, 2, 0);
INSERT INTO `details` VALUES (4976, '2021-07-15 16:45:16', '海南', '文昌', 3, 0, 3, 0);
INSERT INTO `details` VALUES (4977, '2021-07-15 16:45:16', '海南', '定安县', 3, 0, 2, 1);
INSERT INTO `details` VALUES (4978, '2021-07-15 16:45:16', '海南', '琼中县', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4979, '2021-07-15 16:45:16', '宁夏', '境外输入', 4, 0, 3, 0);
INSERT INTO `details` VALUES (4980, '2021-07-15 16:45:16', '宁夏', '银川', 34, 0, 34, 0);
INSERT INTO `details` VALUES (4981, '2021-07-15 16:45:16', '宁夏', '吴忠', 28, 0, 28, 0);
INSERT INTO `details` VALUES (4982, '2021-07-15 16:45:16', '宁夏', '固原', 5, 0, 5, 0);
INSERT INTO `details` VALUES (4983, '2021-07-15 16:45:16', '宁夏', '中卫', 3, 0, 3, 0);
INSERT INTO `details` VALUES (4984, '2021-07-15 16:45:16', '宁夏', '石嘴山', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4985, '2021-07-15 16:45:16', '宁夏', '宁东管委会', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4986, '2021-07-15 16:45:16', '江西', '境外输入', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4987, '2021-07-15 16:45:16', '江西', '南昌', 231, 0, 231, 0);
INSERT INTO `details` VALUES (4988, '2021-07-15 16:45:16', '江西', '赣州', 74, 0, 73, 1);
INSERT INTO `details` VALUES (4989, '2021-07-15 16:45:16', '江西', '九江', 116, 0, 116, 0);
INSERT INTO `details` VALUES (4990, '2021-07-15 16:45:16', '江西', '新余', 129, 0, 129, 0);
INSERT INTO `details` VALUES (4991, '2021-07-15 16:45:16', '江西', '上饶', 123, 0, 123, 0);
INSERT INTO `details` VALUES (4992, '2021-07-15 16:45:16', '江西', '抚州', 72, 0, 72, 0);
INSERT INTO `details` VALUES (4993, '2021-07-15 16:45:16', '江西', '吉安', 22, 0, 22, 0);
INSERT INTO `details` VALUES (4994, '2021-07-15 16:45:16', '江西', '萍乡', 33, 0, 33, 0);
INSERT INTO `details` VALUES (4995, '2021-07-15 16:45:16', '江西', '宜春', 106, 0, 106, 0);
INSERT INTO `details` VALUES (4996, '2021-07-15 16:45:16', '江西', '鹰潭', 18, 0, 18, 0);
INSERT INTO `details` VALUES (4997, '2021-07-15 16:45:16', '江西', '景德镇', 6, 0, 6, 0);
INSERT INTO `details` VALUES (4998, '2021-07-15 16:45:16', '江西', '赣江新区', 1, 0, 1, 0);
INSERT INTO `details` VALUES (4999, '2021-07-15 16:45:16', '河北', '石家庄', 898, 0, 897, 1);
INSERT INTO `details` VALUES (5000, '2021-07-15 16:45:16', '河北', '邢台', 94, 0, 93, 1);
INSERT INTO `details` VALUES (5001, '2021-07-15 16:45:16', '河北', '保定', 49, 0, 49, 0);
INSERT INTO `details` VALUES (5002, '2021-07-15 16:45:16', '河北', '地区待确认', 0, 0, 0, 0);
INSERT INTO `details` VALUES (5003, '2021-07-15 16:45:16', '河北', '廊坊', 33, 0, 33, 0);
INSERT INTO `details` VALUES (5004, '2021-07-15 16:45:16', '河北', '境外输入', 36, 0, 36, 0);
INSERT INTO `details` VALUES (5005, '2021-07-15 16:45:16', '河北', '沧州', 49, 0, 46, 3);
INSERT INTO `details` VALUES (5006, '2021-07-15 16:45:16', '河北', '张家口', 43, 0, 43, 0);
INSERT INTO `details` VALUES (5007, '2021-07-15 16:45:16', '河北', '唐山', 58, 0, 57, 1);
INSERT INTO `details` VALUES (5008, '2021-07-15 16:45:16', '河北', '邯郸', 32, 0, 32, 0);
INSERT INTO `details` VALUES (5009, '2021-07-15 16:45:16', '河北', '承德', 7, 0, 7, 0);
INSERT INTO `details` VALUES (5010, '2021-07-15 16:45:16', '河北', '衡水', 8, 0, 8, 0);
INSERT INTO `details` VALUES (5011, '2021-07-15 16:45:16', '河北', '秦皇岛', 10, 0, 9, 1);
INSERT INTO `details` VALUES (5012, '2021-07-15 16:45:16', '西藏', '拉萨', 1, 0, 1, 0);
INSERT INTO `details` VALUES (5013, '2021-07-15 16:45:16', '黑龙江', '境外输入', 392, 0, 392, 0);
INSERT INTO `details` VALUES (5014, '2021-07-15 16:45:16', '黑龙江', '哈尔滨', 410, 0, 406, 4);
INSERT INTO `details` VALUES (5015, '2021-07-15 16:45:16', '黑龙江', '绥化', 536, 0, 532, 4);
INSERT INTO `details` VALUES (5016, '2021-07-15 16:45:16', '黑龙江', '地区待确认', 2, 0, 2, 0);
INSERT INTO `details` VALUES (5017, '2021-07-15 16:45:16', '黑龙江', '齐齐哈尔', 44, 0, 43, 1);
INSERT INTO `details` VALUES (5018, '2021-07-15 16:45:16', '黑龙江', '大庆', 29, 0, 28, 1);
INSERT INTO `details` VALUES (5019, '2021-07-15 16:45:16', '黑龙江', '黑河', 24, 0, 24, 0);
INSERT INTO `details` VALUES (5020, '2021-07-15 16:45:16', '黑龙江', '牡丹江', 36, 0, 36, 0);
INSERT INTO `details` VALUES (5021, '2021-07-15 16:45:16', '黑龙江', '大兴安岭', 3, 0, 3, 0);
INSERT INTO `details` VALUES (5022, '2021-07-15 16:45:16', '黑龙江', '双鸭山', 52, 0, 49, 3);
INSERT INTO `details` VALUES (5023, '2021-07-15 16:45:16', '黑龙江', '鸡西', 46, 0, 46, 0);
INSERT INTO `details` VALUES (5024, '2021-07-15 16:45:16', '黑龙江', '鹤岗', 5, 0, 5, 0);
INSERT INTO `details` VALUES (5025, '2021-07-15 16:45:16', '黑龙江', '七台河', 17, 0, 17, 0);
INSERT INTO `details` VALUES (5026, '2021-07-15 16:45:16', '黑龙江', '伊春', 1, 0, 1, 0);
INSERT INTO `details` VALUES (5027, '2021-07-15 16:45:16', '黑龙江', '佳木斯', 15, 0, 15, 0);
INSERT INTO `details` VALUES (5028, '2021-07-15 16:45:16', '贵州', '境外输入', 1, 0, 1, 0);
INSERT INTO `details` VALUES (5029, '2021-07-15 16:45:16', '贵州', '贵阳', 36, 0, 35, 1);
INSERT INTO `details` VALUES (5030, '2021-07-15 16:45:16', '贵州', '遵义', 32, 0, 32, 0);
INSERT INTO `details` VALUES (5031, '2021-07-15 16:45:16', '贵州', '六盘水', 10, 0, 9, 1);
INSERT INTO `details` VALUES (5032, '2021-07-15 16:45:16', '贵州', '毕节', 23, 0, 23, 0);
INSERT INTO `details` VALUES (5033, '2021-07-15 16:45:16', '贵州', '黔南州', 17, 0, 17, 0);
INSERT INTO `details` VALUES (5034, '2021-07-15 16:45:16', '贵州', '安顺', 4, 0, 4, 0);
INSERT INTO `details` VALUES (5035, '2021-07-15 16:45:16', '贵州', '黔东南州', 10, 0, 10, 0);
INSERT INTO `details` VALUES (5036, '2021-07-15 16:45:16', '贵州', '铜仁', 10, 0, 10, 0);
INSERT INTO `details` VALUES (5037, '2021-07-15 16:45:16', '贵州', '黔西南州', 4, 0, 4, 0);
INSERT INTO `details` VALUES (5038, '2021-07-15 16:45:16', '吉林', '通化', 313, 0, 312, 1);
INSERT INTO `details` VALUES (5039, '2021-07-15 16:45:16', '吉林', '长春', 150, 0, 150, 0);
INSERT INTO `details` VALUES (5040, '2021-07-15 16:45:16', '吉林', '松原', 6, 0, 6, 0);
INSERT INTO `details` VALUES (5041, '2021-07-15 16:45:16', '吉林', '四平', 17, 0, 16, 1);
INSERT INTO `details` VALUES (5042, '2021-07-15 16:45:16', '吉林', '吉林', 48, 0, 47, 1);
INSERT INTO `details` VALUES (5043, '2021-07-15 16:45:16', '吉林', '境外输入', 19, 0, 19, 0);
INSERT INTO `details` VALUES (5044, '2021-07-15 16:45:16', '吉林', '白城', 1, 0, 1, 0);
INSERT INTO `details` VALUES (5045, '2021-07-15 16:45:16', '吉林', '公主岭', 6, 0, 6, 0);
INSERT INTO `details` VALUES (5046, '2021-07-15 16:45:16', '吉林', '辽源', 7, 0, 7, 0);
INSERT INTO `details` VALUES (5047, '2021-07-15 16:45:16', '吉林', '延边', 5, 0, 5, 0);
INSERT INTO `details` VALUES (5048, '2021-07-15 16:45:16', '吉林', '梅河口市', 1, 0, 1, 0);
INSERT INTO `details` VALUES (5049, '2021-07-15 16:45:16', '青海', '海北州', 3, 0, 3, 0);
INSERT INTO `details` VALUES (5050, '2021-07-15 16:45:16', '青海', '西宁', 15, 0, 15, 0);
INSERT INTO `details` VALUES (5051, '2021-07-15 16:45:16', '甘肃', '境外输入', 103, 0, 103, 0);
INSERT INTO `details` VALUES (5052, '2021-07-15 16:45:16', '甘肃', '兰州', 37, 0, 35, 2);
INSERT INTO `details` VALUES (5053, '2021-07-15 16:45:16', '甘肃', '定西', 9, 0, 9, 0);
INSERT INTO `details` VALUES (5054, '2021-07-15 16:45:16', '甘肃', '地区待确认', 0, 0, 0, 0);
INSERT INTO `details` VALUES (5055, '2021-07-15 16:45:16', '甘肃', '平凉', 9, 0, 9, 0);
INSERT INTO `details` VALUES (5056, '2021-07-15 16:45:16', '甘肃', '庆阳', 3, 0, 3, 0);
INSERT INTO `details` VALUES (5057, '2021-07-15 16:45:16', '甘肃', '白银', 4, 0, 4, 0);
INSERT INTO `details` VALUES (5058, '2021-07-15 16:45:16', '甘肃', '甘南州', 8, 0, 8, 0);
INSERT INTO `details` VALUES (5059, '2021-07-15 16:45:16', '甘肃', '天水', 12, 0, 12, 0);
INSERT INTO `details` VALUES (5060, '2021-07-15 16:45:16', '甘肃', '陇南', 4, 0, 4, 0);
INSERT INTO `details` VALUES (5061, '2021-07-15 16:45:16', '甘肃', '临夏', 3, 0, 3, 0);
INSERT INTO `details` VALUES (5062, '2021-07-15 16:45:16', '甘肃', '张掖', 2, 0, 2, 0);
INSERT INTO `details` VALUES (5063, '2021-07-15 16:45:16', '甘肃', '金昌', 1, 0, 1, 0);
INSERT INTO `details` VALUES (5064, '2021-07-15 16:45:16', '新疆', '喀什', 80, 0, 80, 0);
INSERT INTO `details` VALUES (5065, '2021-07-15 16:45:16', '新疆', '乌鲁木齐', 845, 0, 845, 0);
INSERT INTO `details` VALUES (5066, '2021-07-15 16:45:16', '新疆', '地区待确认', 1, 0, 1, 0);
INSERT INTO `details` VALUES (5067, '2021-07-15 16:45:16', '新疆', '昌吉州', 5, 0, 5, 0);
INSERT INTO `details` VALUES (5068, '2021-07-15 16:45:16', '新疆', '兵团第九师', 4, 0, 3, 1);
INSERT INTO `details` VALUES (5069, '2021-07-15 16:45:16', '新疆', '吐鲁番', 3, 0, 3, 0);
INSERT INTO `details` VALUES (5070, '2021-07-15 16:45:16', '新疆', '第八师石河子', 4, 0, 3, 1);
INSERT INTO `details` VALUES (5071, '2021-07-15 16:45:16', '新疆', '兵团第四师', 10, 0, 9, 1);
INSERT INTO `details` VALUES (5072, '2021-07-15 16:45:16', '新疆', '伊犁州', 18, 0, 18, 0);
INSERT INTO `details` VALUES (5073, '2021-07-15 16:45:16', '新疆', '六师五家渠', 2, 0, 2, 0);
INSERT INTO `details` VALUES (5074, '2021-07-15 16:45:16', '新疆', '兵团第十二师', 3, 0, 3, 0);
INSERT INTO `details` VALUES (5075, '2021-07-15 16:45:16', '新疆', '巴州', 3, 0, 3, 0);
INSERT INTO `details` VALUES (5076, '2021-07-15 16:45:16', '新疆', '阿克苏', 1, 0, 1, 0);
INSERT INTO `details` VALUES (5077, '2021-07-15 16:45:16', '新疆', '第七师', 1, 0, 1, 0);
INSERT INTO `details` VALUES (5078, '2021-07-15 16:45:16', '山东', '境外输入', 105, 0, 105, 0);
INSERT INTO `details` VALUES (5079, '2021-07-15 16:45:16', '山东', '青岛', 80, 0, 79, 1);
INSERT INTO `details` VALUES (5080, '2021-07-15 16:45:16', '山东', '济宁', 260, 0, 260, 0);
INSERT INTO `details` VALUES (5081, '2021-07-15 16:45:16', '山东', '济南', 47, 0, 47, 0);
INSERT INTO `details` VALUES (5082, '2021-07-15 16:45:16', '山东', '菏泽', 18, 0, 18, 0);
INSERT INTO `details` VALUES (5083, '2021-07-15 16:45:16', '山东', '泰安', 35, 0, 33, 2);
INSERT INTO `details` VALUES (5084, '2021-07-15 16:45:16', '山东', '淄博', 30, 0, 29, 1);
INSERT INTO `details` VALUES (5085, '2021-07-15 16:45:16', '山东', '枣庄', 24, 0, 24, 0);
INSERT INTO `details` VALUES (5086, '2021-07-15 16:45:16', '山东', '烟台', 47, 0, 47, 0);
INSERT INTO `details` VALUES (5087, '2021-07-15 16:45:16', '山东', '潍坊', 44, 0, 44, 0);
INSERT INTO `details` VALUES (5088, '2021-07-15 16:45:16', '山东', '威海', 38, 0, 37, 1);
INSERT INTO `details` VALUES (5089, '2021-07-15 16:45:16', '山东', '日照', 16, 0, 16, 0);
INSERT INTO `details` VALUES (5090, '2021-07-15 16:45:16', '山东', '临沂', 49, 0, 49, 0);
INSERT INTO `details` VALUES (5091, '2021-07-15 16:45:16', '山东', '德州', 37, 0, 35, 2);
INSERT INTO `details` VALUES (5092, '2021-07-15 16:45:16', '山东', '聊城', 38, 0, 38, 0);
INSERT INTO `details` VALUES (5093, '2021-07-15 16:45:16', '山东', '滨州', 15, 0, 15, 0);

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `ds` datetime NOT NULL COMMENT '日期',
  `confirm` int(11) NULL DEFAULT NULL COMMENT '累计确诊',
  `confirm_add` int(11) NULL DEFAULT NULL COMMENT '当日新增确诊',
  `suspect` int(11) NULL DEFAULT NULL COMMENT '剩余疑似',
  `suspect_add` int(11) NULL DEFAULT NULL COMMENT '当日新增疑似',
  `heal` int(11) NULL DEFAULT NULL COMMENT '累计治愈',
  `heal_add` int(11) NULL DEFAULT NULL COMMENT '当日新增治愈',
  `dead` int(11) NULL DEFAULT NULL COMMENT '累计死亡',
  `dead_add` int(11) NULL DEFAULT NULL COMMENT '当日新增死亡',
  PRIMARY KEY (`ds`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('2021-05-16 00:00:00', 104428, 236, 1, 1, 98635, 28, 4858, 0);
INSERT INTO `history` VALUES ('2021-05-17 00:00:00', 104786, 358, 1, 1, 98666, 31, 4858, 0);
INSERT INTO `history` VALUES ('2021-05-18 00:00:00', 105044, 258, 1, 0, 98687, 21, 4860, 2);
INSERT INTO `history` VALUES ('2021-05-19 00:00:00', 105330, 286, 1, 0, 98711, 24, 4860, 0);
INSERT INTO `history` VALUES ('2021-05-20 00:00:00', 105647, 317, 1, 0, 98729, 18, 4861, 1);
INSERT INTO `history` VALUES ('2021-05-21 00:00:00', 105972, 325, 3, 2, 98746, 17, 4861, 0);
INSERT INTO `history` VALUES ('2021-05-22 00:00:00', 106715, 743, 2, 0, 98754, 8, 4863, 2);
INSERT INTO `history` VALUES ('2021-05-23 00:00:00', 107195, 480, 3, 1, 98765, 11, 4869, 6);
INSERT INTO `history` VALUES ('2021-05-24 00:00:00', 107807, 612, 3, 0, 98789, 24, 4875, 6);
INSERT INTO `history` VALUES ('2021-05-25 00:00:00', 108361, 554, 2, 0, 98805, 16, 4881, 6);
INSERT INTO `history` VALUES ('2021-05-26 00:00:00', 109016, 655, 2, 0, 98818, 13, 4892, 11);
INSERT INTO `history` VALUES ('2021-05-27 00:00:00', 109693, 677, 3, 2, 98840, 22, 4905, 13);
INSERT INTO `history` VALUES ('2021-05-28 00:00:00', 110263, 570, 2, 0, 98859, 19, 4924, 19);
INSERT INTO `history` VALUES ('2021-05-29 00:00:00', 110766, 503, 2, 0, 98870, 11, 4945, 21);
INSERT INTO `history` VALUES ('2021-05-30 00:00:00', 111147, 381, 2, 0, 98889, 19, 4955, 10);
INSERT INTO `history` VALUES ('2021-05-31 00:00:00', 111525, 378, 2, 1, 98903, 14, 4970, 15);
INSERT INTO `history` VALUES ('2021-06-01 00:00:00', 111887, 362, 2, 0, 98921, 18, 4983, 13);
INSERT INTO `history` VALUES ('2021-06-02 00:00:00', 112458, 571, 2, 0, 98928, 7, 4995, 12);
INSERT INTO `history` VALUES ('2021-06-03 00:00:00', 113068, 610, 2, 0, 98946, 18, 5012, 17);
INSERT INTO `history` VALUES ('2021-06-04 00:00:00', 113565, 497, 3, 1, 98958, 12, 5033, 21);
INSERT INTO `history` VALUES ('2021-06-05 00:00:00', 114106, 541, 4, 2, 98987, 29, 5070, 37);
INSERT INTO `history` VALUES ('2021-06-06 00:00:00', 114474, 368, 2, 0, 98996, 9, 5106, 36);
INSERT INTO `history` VALUES ('2021-06-07 00:00:00', 114707, 233, 2, 0, 99023, 27, 5132, 26);
INSERT INTO `history` VALUES ('2021-06-08 00:00:00', 114929, 222, 11, 11, 99035, 12, 5154, 22);
INSERT INTO `history` VALUES ('2021-06-09 00:00:00', 115229, 300, 11, 0, 99056, 21, 5179, 25);
INSERT INTO `history` VALUES ('2021-06-10 00:00:00', 115507, 278, 10, 9, 99071, 15, 5207, 28);
INSERT INTO `history` VALUES ('2021-06-11 00:00:00', 115820, 313, 10, 1, 99089, 18, 5231, 24);
INSERT INTO `history` VALUES ('2021-06-12 00:00:00', 116103, 283, 2, 1, 99112, 23, 5257, 26);
INSERT INTO `history` VALUES ('2021-06-13 00:00:00', 116301, 198, 2, 0, 99126, 14, 5283, 26);
INSERT INTO `history` VALUES ('2021-06-14 00:00:00', 116507, 206, 2, 0, 99136, 10, 5298, 15);
INSERT INTO `history` VALUES ('2021-06-15 00:00:00', 116665, 158, 3, 3, 99153, 17, 5306, 8);
INSERT INTO `history` VALUES ('2021-06-16 00:00:00', 116853, 188, 1, 0, 99169, 16, 5324, 18);
INSERT INTO `history` VALUES ('2021-06-17 00:00:00', 117051, 198, 1, 1, 99184, 15, 5343, 19);
INSERT INTO `history` VALUES ('2021-06-18 00:00:00', 117272, 221, 1, 1, 99217, 33, 5364, 21);
INSERT INTO `history` VALUES ('2021-06-19 00:00:00', 117421, 149, 1, 0, 99237, 20, 5384, 20);
INSERT INTO `history` VALUES ('2021-06-20 00:00:00', 117548, 127, 1, 0, 99247, 10, 5395, 11);
INSERT INTO `history` VALUES ('2021-06-21 00:00:00', 117651, 103, 1, 0, 105682, 6435, 5415, 20);
INSERT INTO `history` VALUES ('2021-06-22 00:00:00', 117759, 108, 1, 0, 106259, 577, 5421, 6);
INSERT INTO `history` VALUES ('2021-06-23 00:00:00', 117880, 121, 2, 1, 107252, 993, 5445, 24);
INSERT INTO `history` VALUES ('2021-06-24 00:00:00', 118040, 160, 9, 7, 107531, 279, 5451, 6);
INSERT INTO `history` VALUES ('2021-06-25 00:00:00', 118145, 105, 0, 0, 107930, 399, 5456, 5);
INSERT INTO `history` VALUES ('2021-06-26 00:00:00', 118241, 96, 0, 0, 108225, 295, 5469, 13);
INSERT INTO `history` VALUES ('2021-06-27 00:00:00', 118358, 117, 1, 1, 108247, 22, 5478, 9);
INSERT INTO `history` VALUES ('2021-06-28 00:00:00', 118439, 81, 1, 0, 108269, 22, 5481, 3);
INSERT INTO `history` VALUES ('2021-06-29 00:00:00', 118503, 64, 0, 0, 108454, 185, 5490, 9);
INSERT INTO `history` VALUES ('2021-06-30 00:00:00', 118573, 70, 0, 0, 108595, 141, 5495, 5);
INSERT INTO `history` VALUES ('2021-07-01 00:00:00', 118644, 71, 1, 1, 108726, 131, 5508, 13);
INSERT INTO `history` VALUES ('2021-07-02 00:00:00', 118736, 92, 7, 7, 108797, 71, 5523, 15);
INSERT INTO `history` VALUES ('2021-07-03 00:00:00', 118832, 96, 3, 3, 109019, 222, 5533, 10);
INSERT INTO `history` VALUES ('2021-07-04 00:00:00', 118896, 64, 3, 0, 109360, 341, 5535, 2);
INSERT INTO `history` VALUES ('2021-07-05 00:00:00', 118951, 55, 1, 0, 109535, 175, 5537, 2);
INSERT INTO `history` VALUES ('2021-07-06 00:00:00', 119036, 85, 5, 4, 109729, 194, 5554, 17);
INSERT INTO `history` VALUES ('2021-07-07 00:00:00', 119094, 58, 4, 2, 109856, 127, 5563, 9);
INSERT INTO `history` VALUES ('2021-07-08 00:00:00', 119141, 47, 3, 0, 110059, 203, 5566, 3);
INSERT INTO `history` VALUES ('2021-07-09 00:00:00', 119204, 63, 2, 2, 110155, 96, 5578, 12);
INSERT INTO `history` VALUES ('2021-07-10 00:00:00', 119262, 58, 3, 1, 110340, 185, 5584, 6);
INSERT INTO `history` VALUES ('2021-07-11 00:00:00', 119321, 59, 4, 1, 110462, 122, 5588, 4);
INSERT INTO `history` VALUES ('2021-07-12 00:00:00', 119374, 53, 3, 0, 110532, 70, 5589, 1);
INSERT INTO `history` VALUES ('2021-07-13 00:00:00', 119428, 54, 2, 0, 110601, 69, 5595, 6);
INSERT INTO `history` VALUES ('2021-07-14 00:00:00', 119485, 57, 2, 0, 110691, 90, 5601, 6);

-- ----------------------------
-- Table structure for hotsearch
-- ----------------------------
DROP TABLE IF EXISTS `hotsearch`;
CREATE TABLE `hotsearch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 535 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotsearch
-- ----------------------------
INSERT INTO `hotsearch` VALUES (525, '2021-07-15 18:21:41', '上海18周岁以上人群新冠疫苗接种率达90.3%');
INSERT INTO `hotsearch` VALUES (526, '2021-07-15 18:21:41', '福建多地即将启动12-17岁人群新冠疫苗接种');
INSERT INTO `hotsearch` VALUES (527, '2021-07-15 18:21:41', '湖北省普惠型小微企业贷款馀额比疫情前增长39%');
INSERT INTO `hotsearch` VALUES (528, '2021-07-15 18:21:41', '北京国安足球俱乐部回应参加亚冠成员中有人核酸检测阳性');
INSERT INTO `hotsearch` VALUES (529, '2021-07-15 18:21:41', '7月15日云南陇川疫情最新数据公布');
INSERT INTO `hotsearch` VALUES (530, '2021-07-15 18:21:41', '7月14日河南省新增1例境外输入无症状感染者');
INSERT INTO `hotsearch` VALUES (531, '2021-07-15 18:21:41', '上海朗脉中标价值1.12亿元的疫苗车间工程项目');
INSERT INTO `hotsearch` VALUES (532, '2021-07-15 18:21:41', '安徽界首107岁老人主动接种新冠疫苗');
INSERT INTO `hotsearch` VALUES (533, '2021-07-15 18:21:41', '北京国安参加亚冠有个别成员核酸检测结果呈阳性');
INSERT INTO `hotsearch` VALUES (534, '2021-07-15 18:21:41', '云南陇川发现3例本土新冠肺炎确诊病例');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '123456', '管理员', '12306@qq.com', '15655556666');

SET FOREIGN_KEY_CHECKS = 1;
