
CREATE DATABASE IF NOT EXISTS `hospital`;
USE `hospital`;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `departId` int(16) NOT NULL AUTO_INCREMENT COMMENT '科室ID',
  `departName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '科室名称',
  `hospName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctorNum` int(11) NOT NULL DEFAULT 0 COMMENT '医生数量',
  `departInfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '科室描述',
  `departType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '科室类型',
  `departScope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '诊治范围',
  PRIMARY KEY (`departId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES (1, '灰指甲科', '惠州市中心人民医院', 1, '运用国际前沿技术“渗透软化疗法”结合离子导入，使高效外用离子快速直接渗透病甲根部，突破了传统治疗无法穿透甲板深层杀菌的难题点击咨询权威专家，彻底杀灭潜藏在甲板深层病菌，修复受损甲床，促进新甲再生，达到杀菌保养为一体。该技术是目前最安全有效的治疗方法之一。从而使灰指甲获得治疗。', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (2, '耳鼻喉科', '惠州市中心人民医院', 2, '泌尿外科是医院重点发展的龙头科室，科室拥有权威的专家团队和一流的服务，配备有多种高科技诊疗设备和专业权威的治疗方法，针对于各种前列腺疾病、泌尿生殖感染、性功能障碍、泌尿外科手术等疾病有着很好的临床效果，在惠州地区独树一帜。', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (3, '肛肠科', '惠州市第二人民医院', 4, '肛肠科采用微创技术治疗肛瘘、痔疮等，为广大肛肠患者带来福音', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (4, '感染科', '惠州市第二人民医院', 17, '暂无相关信息', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (5, '生殖整形门诊', '惠州市第二妇幼保健院', 1, '生殖整形门诊处女膜修复手术的优点主要有：\\n    1、处女膜修复是一种依靠手术的方法来恢复已经受损的处女膜，使其性交出血，从而达到解除患者的心理负担、增强自信心、提高生活质量的社会目的。', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (6, '妇产科', '惠州市第二妇幼保健院', 5, '妇产科是医院的重点特色科室，拥有多种高科技诊疗设备和先进的治疗手段针对于各种妇科疾病有着很好的临床效果。高品质的医疗保健服务引领女性健康时代潮流，全方位满足都市女性的健康需求。', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (7, '青光眼科', '惠州爱尔眼科医院', 6, '暂无相关信息', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (8, '发育儿科', '惠州市惠阳区妇幼保健院', 8, '法国、美国留学或研修。先后承担国家、部、省级科研课题20余项，获省级以上科研成果3项。', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (9, '新生儿外科', '惠州市惠阳区妇幼保健院', 4, '现有教授1人，副教授2人，住院医生1人，收治患儿的年龄在出生至生后6个月以内。病种包括各种新生儿及小婴幼儿期发现及发病的各种先天畸形，肿瘤，急症，感染，外伤，骨折等。先天畸形主要为先天性食管闭锁、肛门直肠畸形、肥厚性幽门狭窄、肠闭锁、先天性巨结肠、肠旋转不良、环状胰腺、腹裂、脐膨出、肠重复畸形、胸腹裂孔疝、脊膜膨出等及胸腹腔、体表肿瘤如畸胎瘤、血管瘤等。', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (10, '胸外科', '惠阳长安医院', 8, '暂无相关信息', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (11, '口腔科', '惠阳长安医院', 9, '胸外科病房现有床位49张，拥有现代化病房及检测设备。为五星级科室。胸外科能非常熟练地开展包括食管癌根治、肺癌根治和纵隔肿瘤切除术以及肺、食管、纵隔良性疾病的治疗，达到国内外先进水平：很多疑难重症患者从外地医院甚至北京大医院转来我院，获得良好的治疗效果，深受患者好评，无数患者慕名而来。对于胸外伤和复合外伤，我们积累了丰富的经验。近几年科室不断开展新技术、新项目，如气管隆突成型术、总气管手术以及食管剥脱结肠代食管等，对疑难病例如支气管胸膜瘘、支气管食管瘘等的治疗均取得很好疗效', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_department` VALUES (12, '第一神经外科病房', '广东省杨村复退军人精神病医院', 8, '现有正高级职称人员2名，副高级职称人员6名，设有床位43张，年收治患者超过1000人次，年手术例数600余例。刘云会主任率先在东北三省开展的经单鼻孔-蝶窦入路切除垂体腺瘤和矢状窦分流治疗各种类型脑积水的手术，手术例数及疗效均处于国内领先水平，同时他在听神经瘤全切及面神经的保留、海绵窦肿瘤切除等方面，也具有丰富的经验，手术疗效优异。科室广泛开展了：应用三维CT血管造影筛查高危脑血管病的工作，脑和脊髓的良恶性肿瘤及血管病变、颅脑先天畸形等的显微手术治疗，血管内介入治疗技术，在国内均为顶尖', '暂无相关信息', '暂无相关信息');


-- ----------------------------
-- Table structure for t_doctor
-- ----------------------------
DROP TABLE IF EXISTS `t_doctor`;
CREATE TABLE `t_doctor`  (
  `doctorId` int(16) NOT NULL AUTO_INCREMENT COMMENT '医生ID',
  `doctorName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '医生姓名',
  `doctorSex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '男' COMMENT '医生性别',
  `hospName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `departName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctorImg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctorTitle` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '医生职称',
  `doctorDegree` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctorForte` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '医生特长',
  `doctorInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '医生信息',
  PRIMARY KEY (`doctorId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_doctor
-- ----------------------------
INSERT INTO `t_doctor` VALUES (2, '王玉玲', '女', '惠州市中心人民医院', '灰指甲科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主任医师', '副教授、硕士生导师', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (3, '庞晓刚', '男', '惠州市中心人民医院', '耳鼻喉科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主治医师', '医学博士', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (4, '薛红霞', '女', '惠州市中心人民医院', '耳鼻喉科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '副主任医师', '医学博士、留美博士后', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (5, '王晓非', '女', '惠州市第二人民医院', '肛肠科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主治医师', '医学博士', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (6, '赵桂珍', '女', '惠州市第二人民医院', '肛肠科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '教授', '医学博士', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (7, '李勇', '女', '惠州市第二妇幼保健院', '妇产科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '副主任医师', '副教授、硕士生导师', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (8, '陆景明', '男', '惠州市第二妇幼保健院', '妇产科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主任医师', '妇产科硕士', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (9, '范红杰', '女', '惠州爱尔眼科医院', '青光眼科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主治医师', '医学博士、留美博士后', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (10, '周永德', '男', '惠州爱尔眼科医院', '青光眼科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '副主任医师', '副教授、硕士生导师', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (11, '乔麟', '男', '惠阳长安医院', '口腔科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主治医师', '研究员', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (12, '谭朴泉', '男', '惠阳长安医院', '口腔科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '教授', '医学博士', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (13, '李莉', '女', '惠阳长安医院', '胸外科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主治医师', '教授', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (14, '王明乾', '男', '惠阳长安医院', '胸外科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '教授', '医学博士', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (15, '阎国忠', '女', '惠州市第二妇幼保健院', '新生儿外科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主治医师', '研究员', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (16, '谢惠芳', '女', '惠州市第二妇幼保健院', '新生儿外科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '副主任医师', '副教授、博士', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (17, '夏志军', '男', '惠州市第二妇幼保健院', '发育儿科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '副主任医师', '副教授、硕士生导师', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (18, '孙素云', '女', '惠州市第二妇幼保健院', '发育儿科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主任医师', '教授', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (19, '钱锡元', '男', '惠州市第二人民医院', '感染科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '教授', '教授', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (20, '黄丽萍', '女', '惠州市第二人民医院', '感染科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '副主任医师', '副教授、博士', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (21, '张贺', '男', '惠州市第二人民医院', '感染科', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主治医师', '医学博士、留美博士后', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (22, '陈培青', '女', '广东省杨村复退军人精神病医院', '第一神经外科病房', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主任医师', '研究员', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (23, '阮强', '男', '广东省杨村复退军人精神病医院', '第一神经外科病房', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '主任医师', '医学博士', '暂无相关信息', '暂无相关信息');
INSERT INTO `t_doctor` VALUES (24, '孙鑫香', '女', '惠州市第二妇幼保健院', '生殖整形门诊', 'http://ysk.99.com.cn/images/ysk_nopicture.jpg', '教授', '教授', '暂无相关信息', '暂无相关信息');


-- ----------------------------
-- Table structure for t_hospital
-- ----------------------------
DROP TABLE IF EXISTS `t_hospital`;
CREATE TABLE `t_hospital`  (
  `hospId` int(16) NOT NULL AUTO_INCREMENT COMMENT '医院ID',
  `hospName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医院名称',
  `hospDistrict` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医院所在行政区',
  `hospDeanName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '院长姓名',
  `hospImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院图片URL',
  `builtYear` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院建院年份',
  `hospNature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院类型',
  `hospLevel` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院等级',
  `departNum` int(11) NOT NULL DEFAULT 0 COMMENT '科室数量',
  `hospInfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '医院介绍',
  `hospTel` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hospAddress` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无相关信息' COMMENT '医院地址',
  `hospUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院网址',
  PRIMARY KEY (`hospId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_hospital
-- ----------------------------
INSERT INTO `t_hospital` VALUES (1, '惠州市中医医院', '惠城区', '扶玲', 'https://yyk.99.com.cn/Upload/Hospital/201006/2010060808014660.jpg', '1965', '综合医院', '三级甲等', 0, '惠州市中医医院始建于1965年，是惠州地区**的三级中医医院，担负着全市中医药医、教、研、中医药保健、康复、养生、中医药制剂研制等重任，是具有中医和中西医结合特色的现代化综合性中医院，是广东省中医名院建设单位、国家重点中医院建设单位、南方医科大学非直属附属医院、广东省普通高等医学院校教学医院、暨南大学医学院教学医院、广东省中医院协作医院。\n　　医院设菱湖和东江新城两院区。菱湖院区坐落在美丽的西子湖畔、菱湖之旁，现有编制床位400张，占地面积2.3万平方米，建筑面积2.5万平方米。东江新城院区位于惠州市大湖溪东江新城东升二路，是市委、市政府“八大民心工程”重点建设项目之一，占地面积5.9万平方米，建筑面积5.5万平方米，设床位500张。', '0752-2756756', '惠州市惠城区东江新城东升二路', 'http://www.hzszyyy.com/');
INSERT INTO `t_hospital` VALUES (2, '惠州市中心人民医院', '惠东区', '纪燕琴', 'https://img.99.com.cn/99/yy/20170901085030220.jpg', '1950', '综合医院', '三级甲等', 62, '惠州市中心人民医院位于岭南名郡惠州市区的西子湖畔、飞鹅岭下，是一所集医疗、教学、科研、预防、保健、康复、急救于一体的公立综合性三级甲等医院。2019年获批成为广东省高水平医院重点建设医院。\n　　医院创建于1950年，其前身为中国人民解放军粤赣湘边纵队白云医院留守人员组建的东江医院，1988年“撤地设市”后更名为惠州市中心人民医院至今。建院以来，医院奉行“救死扶伤，奉献社会”的办院宗旨，传承“爱院敬业、求实创新”的优良传统，秉持“仁心惠民、仁术济世”的医院精神，营造“书香人和、优质高效”的文化氛围，现已发展成为国际爱婴医院、国际紧急救援中心网络医院、国家住院医师规范化培训基地、国家全科医生临床培养基地、惠州市助理全科医师师资培训基地、中山大学附属惠州医院、广东医科大学惠州临床医学院。2018年拥有广东省博士工作站、10个科室获评国家药物临床试验基地（GCP）。近年来，又先后荣获国家卫计委“改善医疗服务示范医院”称号和创建全国“平安医院表现突出集体” 称号。2018年在“中国地级城市医院竞争力100强”排行榜中名列第21位，在“广东省域医院30强”排行榜中排名第22名，14个专科入围“全国地级城市医院16个专科30强”。医院已逐渐形成了“四位一体”的立体架构发展战略格局，包括以“广东省区域医疗中心”为龙头的总院院区，以“妇产生殖医学中心”为特色的下埔院区，以区域服务和重点项目应急救援中心为主要任务的仲恺院区，以科研教学为中心任务的江南院区。', '0752—2288288', '惠州市鹅岭北路41号', 'http://www.hzch.gd.cn/');
INSERT INTO `t_hospital` VALUES (3, '惠州市复退军人医院', '惠城区', '', 'https://yyk.99.com.cn/Upload/Hospital/201006/2010060808219299.jpg', '1974', '专科医院', '二级乙等', 2, '惠州市复退军人医院，系民政局辖属一所二级优抚医院。创建于1974年8月，有30多年光荣历史，地处风景秀丽的鹅城，惠州南出口2公里处，是一所集医疗、康复为一体的精神病专科医院。担负着惠州在市、乡复员退伍军人重症精神病患者的收治任务。在收治优抚对象精神病患者的同时，向社会开放，为社会敞开大门，收治各类社会精神病人及各种心理障碍患者，提供周到、温馨、优质的服务。', '0752-2260073', '惠州市古塘坳大道', 'http://www.jsons.cn/hospitalinfo/9A6920407F279EB');
INSERT INTO `t_hospital` VALUES (4, '惠州市第二人民医院', '惠城区', '付晓坤', 'https://yyk.99.com.cn/Upload/Hospital/201006/2010060705586101.jpg', '1966', '综合医院', '二级甲等', 7, '惠州市第二人民医院座落于市区太宝山下，菱湖之滨，依山傍水，绿树成荫。是惠州市的精神疾病专业防治机构，承担着惠州及周边地区精神病的防治、科研、教学、康复等任务。创办于1966年，历经25年由小到大、由弱到强的发展历程，特别是近几年来的解放思想、更新观念、深化改革、强化管理，医院取得了令人瞩目的成绩，技术水平、医院环境与医疗设备在同级医院中处于**地位。先后荣获惠州市\"先进单位\"、首批全国\"明明白白看病百姓放心医院\"以及\"医疗优质高效百姓放心医院\"', '0752-2182503', '惠州市下角菱湖二路17号', 'http://www.hzey.net/');
INSERT INTO `t_hospital` VALUES (5, '惠州男科医院', '惠城区', '张小青', 'https://yyk.99.com.cn/Upload/Hospital/201306/0313431225.jpg', '1998', '综合医院', '未知', 0, '作为惠州首家高起点、高疗效、优服务的现代化泌尿专科医院，惠州男科医院是集预防、保健、诊疗、科研、康复、咨询于一体的以专注男性健康事业为己任的现代化特色泌尿专科医院。惠州男科医院以科学发展观为指导，紧紧围绕服务、质量、效率、科研、和谐、文化的十二字方针，倡导“以人为本，以患者为中心”的医疗服务理念，将治疗养生与健康管理贯彻于日常诊疗服务中，不断满足惠州乃至珠三角男性朋友的健康需求和医疗需求。惠州男科医院以科学的健康理念和运营方式，建筑面积近万平方米，集诊疗区、输液区、休闲区、普通病房区、VIP病房区、洁净无菌层流手术室等相关配套于一体。率先细分八大诊疗专业：前列腺疾病诊疗专业、生殖感染诊疗专业、性功能障碍诊疗专业、男性不育诊疗专业、生殖整形诊疗专业、两性心理咨询专业、泌尿感染诊疗专业、泌尿微创诊疗专业。惠州男科医院坐落于惠州市商业核心路段麦地路，交通便利。立足惠州，面向珠三角，全面整合业内资源，以“高、精、尖”为标准，引进国际标准的诊疗设备，大步迈入精微技术时代，巨资引进微创诊疗仪、频射诊疗仪、激光诊疗仪、智源肽腔道介入治疗技术、太空舱光能治疗技术、阴茎显微背神经微控术、“海洋之星”性功能障碍康复系统、阴茎背深静脉结扎术、显微精索静脉高位结扎术、显微输精管疏通吻合术、包皮整形美容术、阴茎延长术、生物激活免疫克毒疗法、CRS超导生物热疗系统等二十余项高端设备及技术，真正做到“专病、专治、专科、专家”，把专业做大做强，把专科做精做细。', '0752-2225888', '惠州市麦地路40号', NULL);
INSERT INTO `t_hospital` VALUES (6, '惠州爱尔眼科医院', '惠城区', '李山祥', 'https://img.99.com.cn/99/hospital/2411084784.png', '2014', '专科医院', '民营医院', 1, '惠州爱尔眼科医院是爱尔眼科医院集团在惠州设立的一家重点眼科医院，致力于惠州及粤东地区的专业眼科诊疗服务，全面开展视光学、小儿眼科、青少年近视防控、斜弱视、低视力康复、准分子激光手术、白内障、青光眼、角膜病、眼底病、眼外伤、眼整形、泪道疾病以及医学验光配镜等专业眼科诊疗项目。医院按照国际标准化模式设计，医院大楼典雅气派，简洁时尚，配置了当今世界**的各类眼科检查及手术治疗设备，汇聚了大批国内外眼科高、精、尖专业技术人才，牢固树立“一切以患者为中心”的思想，秉承“致力于眼健康事业，提升人类视觉健康”的经营理念，以打造惠州人民的眼睛守护神为宗旨，不断推进眼科医疗行业发展为己任，凭借全国爱尔眼科医疗服务网络，始终致力于提供国际**水准的眼科医技服务，满足惠州及周边地区广大人民群众眼健康护理及眼疾病的诊治需求。', '5756333', '惠州市惠城区河南岸斑樟湖二横街8号', 'https://www.aierchina.com/hospital/guangdong/huizhou.html');
INSERT INTO `t_hospital` VALUES (7, '惠州仁德妇科医院', '惠城区', '王斌', 'https://img.99.com.cn/99/hospital/2810055998.jpg', '2008', '专科医院', '民营医院', 0, '惠州仁德妇科医院位于广东省惠州市区繁华地段，地理位置优越，交通便捷，环境优雅，是一家温馨的现代化妇科医院，建筑面积8千多平方米，有病床80多张，内设阳光侯诊大厅、私密诊疗区域、网络休闲吧、VIP温馨病房、宝宝游泳馆等。医院本着“高起点、高标准、高品位”的建设原则，强化医院环境、学科、设备和服务的优势和特色，倾力打造成为“管理现代化、服务人性化、资讯数字化、形象国际化”的现代化专科医院。', '0752-2370018', '惠州市惠城区麦地路20号', 'http://www.2212222.com/');
INSERT INTO `t_hospital` VALUES (8, '惠州惠阳南华泌尿专科医院', '惠阳区', '', 'https://img.99.com.cn/99/yy/20181012085709470.jpg', '2010', '专科医院', '未评级', 8, '惠州惠阳南华男科医院坐落于 惠州惠阳淡水白云三路69号 创建于2010年，该医院属于惠州市惠阳区淡水镇专业的男科医院，现有8个科室，特色科室为泌尿专科。', '0752-3775999', '惠州惠阳淡水白云三路69号', NULL);
INSERT INTO `t_hospital` VALUES (9, '惠阳长城医院', '惠阳区', '', 'https://yyk.99.com.cn/Upload/Hospital/201308/0710382925.jpg', '1992', '综合医院', '未知', 0, '惠阳长城医院创建于1992年，创院十五年以来从未发生大小医疗事故。设有内科、外科、妇科、中医骨伤科、口腔科、五官科、皮肤泌尿科；并有先进的微量元素检测仪、进口B超机、检验机、大型X光机、心电图机、麻醉呼吸机；设备齐全，医术精湛，医德高尚。2005年4月28日，在第五届中国名医论坛上，中国医学科学院院长、国务院学位委员会学科评议组组长刘德培院士欣然为长城医院题词“悬壶济事，振兴长城”勉励。长城医院始终以病人至上为困难患者减免或者全免医药费，特别是该院为身无分文的患者大开“绿色通道”大义行为，更是受到社会的高度赞誉。面对成绩，“长城人”并没有满足，而是朝着更高更大的目标前进。', '0752-3739689', '惠州市惠阳区淡水桥永六路15号', NULL);
INSERT INTO `t_hospital` VALUES (10, '广东省杨村复退军人精神病医院', '博罗区', '李树红', 'https://yyk.99.com.cn/Upload/Hospital/201006/2010060807218004.jpg', '2003', '综合医院', '二级甲等', 12, '广东省杨村复退军人精神病医院是一所以医疗、康复、预防、科研为一体的省民政厅属下专科医院，创办已40多年。主要业务是收治省复退军人和社会优抚对象的精神病患者，同时，已对外开放，增收社会精神病人。\"以病人为中心\"，为监护人排忧解难是我们的服务宗旨。\n 医院的治疗护理上，本着对患者关爱善待、实现自身价值和使病人尽快回归社会为出发点，竭诚为每一位病人悉心服务。医护队伍技术力量雄厚，经验丰富，在精神病学交流术上每年被**、省级刊物采用的论文多篇。现有的医护人员80多人（其中中级以上职称15人）。设三个男病区，一个女病区，床位共200张（设有单人房、双人房、三人房）。门诊部与住院部设精神科、内科、外科、儿科、中医科、五官；医技科设有放射、检验、药剂、B超、心电图、脑血图和脑电地形图等部门。有病人活动室、音疗室、篮球场等娱疗康复设施。', '0752-6696337', '广东省惠州市杨材镇', NULL);
INSERT INTO `t_hospital` VALUES (11, '惠阳长安医院', '惠阳区', '', 'https://yyk.99.com.cn/upload/hospital/0018/2009060303520479266.jpg', '1999', '综合医院', '一级甲等', 17, '惠阳长安医院是经国家卫生部门批准的一家集医疗、美容、保健、教学为一体的综合性医院，与韩国BK整形美容医院、韩国东洋整形美容医院、中山大学、宜春学院等国内外医学院校建立了技术协作关系，并承担临床教学任务，长期进行学术交流与专家互动。医院多次获得“全国消费者放心**整形美容机构称号”，多年来为成千上万的患者解除了病痛，有近5千名婴儿在我院出生。为无数爱美女性整理出美丽动人的漂亮仪容，为此被政府有关单位评选为“重点推广单位”、“惠州市**竞争力的十佳医疗机构”、“文明诚信单位”、“消费者信得过单位”等殊荣，本院还是惠州市城镇职工、居民医保、生育保险、工伤保险、农村合作医疗定点医院。', '0752-3872333', '惠州市惠阳淡水镇莲塘东路30号', 'http://www.hyca.cn/index.html');
INSERT INTO `t_hospital` VALUES (12, '惠州市惠阳区侨联医院', '惠阳区', '', 'https://yyk.99.com.cn/Upload/Hospital/201006/2010060807321854.jpg', NULL, '综合医院', '二级甲等', 0, '惠州市惠阳区侨联医院是惠州市惠阳区成立近二十年的国家正规综合性医院，内设中医科、内科、儿科、妇科外科、耳鼻喉科、男性科、口腔科、急诊医学科、康复医学科、医学检验科、医学影像科；拥有B超、阴道镜、激光治疗仪、丽谱刀、盆腔治疗仪、宫颈治疗仪、前列腺治疗仪等先进的专业治疗设备。积极开展日常保健指导，避孕咨询、孕产期保健、药流、无痛人流、输卵管造影术、输卵管通液术、包皮过长手术、腋臭手术、外伤清创缝合手术等。\n惠州市惠阳区侨联医院就诊环境舒适，拥有电子病历管理系统，积极维护您的隐私，输液大厅配有液晶电视免费电脑上网，让您在治疗的同时尽量减少疾病对您工作和生活的影响，并能轻松愉快，更快地恢复健康，我院还为市民提供上门出诊，代煎中药等温馨社区服务。', '0752-3379220', '惠州市惠阳区淡水叶挺西路77号', NULL);
INSERT INTO `t_hospital` VALUES (13, '惠州市惠阳区妇幼保健院', '惠阳区', '', 'https://yyk.99.com.cn/Upload/Hospital/201006/2010060807184616.jpg', '1953', '综合医院', '二级甲等', 20, '广东省惠州市惠阳区妇幼保健院创建于1953年，前身是惠阳县妇幼保健所，1957年改称为惠阳县妇幼保健院，1994年随县改市命名为惠阳市妇幼保健院，她座落于惠州市五四路14号（步行街内），位于风景秀丽的惠州西湖畔。惠阳妇幼保健院是惠州市历史最悠久、规模**、技术力量最雄厚、设备齐全的妇幼保健专科医院，是经国家评定的“一级甲等”妇幼保健院(相当于二级甲等综合医院)，是世界卫生组织、卫生部命名的“爱婴医院”，是惠州、惠阳确定的城镇职工基本医疗保险定点医疗机构。50多个春秋的创业，凝结着几代领导人的心血和全院干部、职工的辛勤劳动。', '0752-2224262', '惠州市惠阳区五四路14号', 'http://www.hybjy.com/');
INSERT INTO `t_hospital` VALUES (14, '惠阳三和医院', '惠阳区', '', 'https://yyk.99.com.cn/Upload/Hospital/201307/0410385925.png', '1993', '综合医院', '二级甲等', 5, '惠阳三和医院创建于1993年。上世纪90年代初，在我国改革开放的浪潮中，惠阳县委、县政府和惠阳人勇立潮头，率先创建了广东省首家民营医院——惠阳三和医院。此举为改革和优化医疗结构，充分利用民间资本来促进公共卫生事业发展起到示范性作用，这在惠阳卫生事业发展史上无疑是浓彩重墨的一笔。\n \n建院以来，三和医院坚持“严谨行医、诚信办院”的宗旨，在上级卫生主管部门的领导及指导下，高标准地执行国家各项卫生管理法律法规和诊疗规范。在惠阳，三和医院最早实行“无假日医院”；最早引入彩超等大型设备；最早推行“以人为本”、“以病人为中心”的优质服务理念，全心全意为惠阳人民的健康服务，得到了惠州、惠阳各级政府部门的高度赞扬和人民群众的广泛认可。沐浴着改革开放的春风，医院从无到有、从小到强到大持续稳步发展，树立了良好的形象，打造了响当当的金字招牌。', '0752-3800100', '惠州市惠阳区淡水土湖金惠大道旁康和路3号', 'http://www.hyshyy.com/pinc_lm4.asp');
INSERT INTO `t_hospital` VALUES (15, '惠阳玛莱妇产医院', '惠阳区', '房柏琴', 'https://img.99.com.cn/99/hospital/0511045261.jpg', '2007', '专科医院', '未评级', 0, '惠州市惠阳玛莱妇产医院是一家按照广东省卫生厅和惠州市惠阳区政府规划布局，经惠州市惠阳区卫生局批准设立，由玛莱妇产(中国连锁)管理机构直属管理下的集医疗、预防、保健为一体，以诊治妇产科常见病、多发病和疑难杂症为重点，专业服务于广大惠州市女性的现代化妇科、产科医院，也是惠州市惠阳区**一家大型妇产科专科医院。是北京复兴医院、佛山市**人民医院和中山大学达安检验中心的技术合作单位，惠州医学会会员单位，惠州市医保定点医院，惠阳巾帼志愿者服务队。', '0752-3655555', '惠州市惠阳区淡水街道人民六路16号', 'http://www.hyfc120.com/');
INSERT INTO `t_hospital` VALUES (16, '惠州市惠阳亚太门诊部', '惠阳区', '', 'https://img.99.com.cn/99/yy/20180328094736450.jpg', NULL, '综合医院', '未评级', 0, '惠州市惠阳亚太门诊部医院坐落于惠阳淡水人民五路63号与中山二路交叉路口（新城市场对面）创建于2018年，该医院属于综合医院，现有8个科室，特色科室为男科。', '0752-3732999', '惠阳淡水人民五路63号与中山二路交叉路口', 'http://hzytyy.cn/');
INSERT INTO `t_hospital` VALUES (17, '惠州市第二妇幼保健院', '惠城区', '许汉标', 'https://img.99.com.cn/99/hospital/2816565342.png', '1974', '专科医院', '二级甲等', 33, '惠州市第二妇幼保健院（原惠州市妇幼保健院）始建于1974年，是隶属惠城区政府的非营利性公立保健医疗机构，历经40年的发展，现已成为了一所集预防、医疗、保健、科研、教学为一体的三级级别妇幼保健院，是惠州市医保合作医疗定点单位，惠州市艾滋病母婴阻断试点单位,“广东省爱婴医院”、广东省普通高等医学院校教学医院，广东省**承担中国/联合国人口基金第五周期、第六周期国家项目任务工作单位。', '0752-2180400', '惠州市惠城区南坛东路24号', 'http://www.hzsbjy.com/');
INSERT INTO `t_hospital` VALUES (18, '惠州市第173医院', '惠城区', '罗军', 'https://img.99.com.cn/99/hospital/0816191064.jpg', '1945', '综合医院', '三级乙等', 7, '惠州市第173医院（中国人民解放军**七三医院）成立于1945年11月，是一所集医疗、教学、科研、保健、疗养为一体，以临床医疗为重点的综合性军队医院，医院隶属于广州军区，现拥有皮肤科、男科、五官科、儿科、麻醉科、妇产科等6个科室。', '0752-2616161', '广东省惠州市4560号', 'http://m.huishangbao.com/shop/173hospital/?clicktime=1576288525');
INSERT INTO `t_hospital` VALUES (19, '惠州友好泌尿专科', '惠城区', '骆院长', 'https://img.99.com.cn/99/hospital/1316301955.png', '2008', '门诊', '未评级', 0, '惠州友好泌尿专科是目前惠州地区首家男性专科医疗机构，设立了前列腺、性功能障碍、生殖感染、生殖整形、不孕不育等为特色的专业单位。秉承严谨求实的科学态度和诚信求精的行医宗旨，为广大男性朋友提供健康服务。作为国际医疗服务机构的延伸，集预防、科研、医疗、保健、康复、咨询于一体，遵循国际男性疾病诊疗高标准，专业诊治男性常见病、多发病、顽疾、生殖疾病、心理疾病、职业病等，真正做到了“专科专病专治”。惠州友好泌尿专科秉承严谨求实的科学态度和诚信求精的行医宗旨，以对男科疾病的透彻解析，科学规范化的管理，过硬的专业技术水平，全方位的服务，致力为男性服务！全力打造惠州市男性专科品牌。', '0752-2398666', '惠州市惠城区麦兴路5号', NULL);
INSERT INTO `t_hospital` VALUES (20, '惠州东江男科医院', '惠城区', '陈文山', 'https://yyk.99.com.cn/Upload/Hospital/201306/131423093.jpg', '2003', '专科医院', '未评级', 0, '作为惠州首家高起点、高疗效、优服务的现代化泌尿专科医院，惠州东江男科医院是集预防、保健、诊疗、科研、康复、咨询于一体的以专注男性健康事业为己任的现代化特色泌尿专科医院。惠州东江男科医院以科学发展观为指导，紧紧围绕服务、质量、效率、科研、和谐、文化的十二字方针，倡导“以人为本，以患者为中心”的医疗服务理念，将治疗养生与健康管理贯彻于日常诊疗服务中，不断满足惠州乃至珠三角男性朋友的健康需求和医疗需求。', '0752-2282166', '惠州市惠城区麦地路52号', 'http://www.weixinyunduan.com/weiweb/341016/');
INSERT INTO `t_hospital` VALUES (21, '惠州第三人民医院', '惠城区', '', 'https://bkimg.cdn.bcebos.com/pic/c995d143ad4bd11373f0373345e6b30f4bfbfbedafd3?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2U4MA==,xp_5,yp_5', '1954', '综合医院', '二级甲等', 32, '惠州市第三人民医院(原惠州市人民医院)，地处惠州市东平半岛中心位置，紧邻广汕国道和东江沙休闲公园，位置优越、环境优美、交通便利。前身是创建于1927年的美国基督教安息日会医院——惠安医院。经过七十多年的发展历程，现已成长为一所集医疗、教学、科研、预防康复、社区服务为一体、实际开放床位近700张的大型综合性医院，是广东省普通高等医学院校教学医院，惠州市首批爱婴医院、医保定点医院、历届文明医院。 现有南方医科大学、广州中医药大学、广东药学院、广东医学院实习医生在我院进行毕业实习。在各级政府的大力支持下，投资4.4亿元近6万平方米的第三人民医院新建综合医疗大楼已封顶，并将于2011年年底竣工投入使用，建成后医院床位总数达到1000张，将大大改善我院的就医环境和满足辖区及周边群众的医疗保健需求。', '0752-2359750', '惠州市惠城区桥东学背街1号', 'http://www.hzdsrmyy.com/');


-- ----------------------------
-- Table structure for t_numsource
-- ----------------------------
DROP TABLE IF EXISTS `t_numsource`;
CREATE TABLE `t_numsource`  (
  `numSourceNo` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '号源流水',
  `hospId` int(16) NOT NULL COMMENT '医院ID',
  `departId` int(16) NOT NULL COMMENT '科室ID',
  `doctorId` int(16) NOT NULL COMMENT '医生ID',
  `workDate` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作日',
  `workTime` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作时段',
  `initQuantity` int(11) NOT NULL COMMENT '初始号源',
  `restQuantity` int(11) NOT NULL COMMENT '剩余号源',
  `fee` decimal(10, 0) NOT NULL COMMENT '号源费用',
  PRIMARY KEY (`numSourceNo`, `doctorId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_numsource
-- ----------------------------
INSERT INTO `t_numsource` VALUES (1, 1, 1, 2, '2020-06-06', '08:00-11:00', 20, 9, 8);
INSERT INTO `t_numsource` VALUES (2, 1, 2, 3, '2020-06-06', '13:00-15:00', 10, 9, 12);
INSERT INTO `t_numsource` VALUES (3, 1, 2, 4, '2020-06-06', '13:00-15:00', 10, 10, 10);
INSERT INTO `t_numsource` VALUES (4, 4, 3, 5, '2020-06-11', '13:00-15:00', 10, 10, 20);
INSERT INTO `t_numsource` VALUES (5, 4, 3, 6, '2020-06-11', '13:00-15:00', 10, 10, 10);
INSERT INTO `t_numsource` VALUES (6, 17, 6, 7, '2020-06-12', '08:00-11:00', 10, 10, 8);
INSERT INTO `t_numsource` VALUES (7, 17, 6, 8, '2020-06-14', '13:00-15:00', 10, 10, 10);
INSERT INTO `t_numsource` VALUES (8, 11, 11, 11, '2020-06-15', '13:00-15:00', 10, 10, 20);
INSERT INTO `t_numsource` VALUES (9, 11, 11, 12, '2020-06-20', '08:00-11:00', 10, 10, 12);
INSERT INTO `t_numsource` VALUES (10, 11, 10, 13, '2020-06-20', '08:00-11:00', 10, 10, 20);
INSERT INTO `t_numsource` VALUES (11, 11, 10, 14, '2020-06-06', '13:00-15:00', 10, 10, 12);
INSERT INTO `t_numsource` VALUES (12, 6, 7, 9, '2020-06-15', '13:00-15:00', 10, 10, 1);
INSERT INTO `t_numsource` VALUES (13, 6, 7, 10, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (14, 17, 9, 15, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (15, 17, 9, 16, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (16, 17, 8, 17, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (17, 17, 8, 18, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (18, 4, 4, 19, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (19, 4, 4, 20, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (20, 4, 4, 21, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (21, 10, 12, 22, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (22, 10, 12, 23, '2020-06-15', '08:00-11:00', 10, 10, 2);
INSERT INTO `t_numsource` VALUES (24, 17, 5, 24, '2020-06-15', '08:00-11:00', 10, 9, 2);


-- ----------------------------
-- Table structure for t_records
-- ----------------------------
DROP TABLE IF EXISTS `t_records`;
CREATE TABLE IF NOT EXISTS `t_records`(
    `recordNo`			BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `hospitalId`		VARCHAR(16) NOT NULL,
    `departId`			VARCHAR(16) NOT NULL,
    `doctorId`			VARCHAR(16) NOT NULL,
    `appointmentDate`	DATE NOT NULL,
    `appointmentTime`	TIME(6) NOT NULL,
    `createTime`	    DATETIME(6) NOT NULL,
    `fee`				FLOAT(10) NOT NULL,
    `state`				TINYINT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_records
-- ----------------------------
INSERT INTO `t_records` VALUES (22, 4, 2, '惠州市中医医院', '灰指甲科', '王玉玲', '2020-6-12', '15:00-18:00', '2020-06-08 17:04:45', '', 0, 0, 1, NULL);
INSERT INTO `t_records` VALUES (23, 4, 3, '惠州市中心人民医院', '耳鼻喉科', '薛红霞', '2020-6-10', '13:00-15:00', '2020-06-08 17:19:04', '', 0, 0, 1, NULL);
INSERT INTO `t_records` VALUES (25, 4, 1, '惠州市中心人民医院', '灰指甲科', '王玉玲', '2020-6-12', '13:00-15:00', '2020-06-10 16:25:30', NULL, 0, 0, 0, NULL);
INSERT INTO `t_records` VALUES (26, 4, 2, '惠州市中心人民医院', '耳鼻喉科', '庞晓刚', '2020-6-12', '13:00-15:00', '2020-06-10 16:25:42', NULL, 0, 0, 0, NULL);
INSERT INTO `t_records` VALUES (27, 4, 24, '惠州市第二妇幼保健院', '生殖整形门诊', '孙鑫香', '2020-6-12', '13:00-15:00', '2020-06-10 16:37:48', '', 0, 0, 1, NULL);


-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
    `userId` int(16) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
    `userName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
    `userPsw` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `userIdent` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户身份证号码',
    `userSex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '男' COMMENT '用户性别',
    `userEmail` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
    `userTel` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `regTime` datetime(0) NOT NULL COMMENT '注册时间',
    `credit` int(11) NULL DEFAULT 100 COMMENT '用户信用分',
    `level` int(1) NULL DEFAULT 0,
    PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (4, '爸爸', '9DD4E461268C8034F5C8564E155C67A6', '441426198001151818', '女', 'xxx@qq.com', '18575263700', '2020-06-06 19:11:20', 100, 0);
INSERT INTO `t_user` VALUES (5, '高腰', '9DD4E461268C8034F5C8564E155C67A6', '441426198001151817', '男', 'x@qq.com', '18575263709', '2020-06-07 09:39:43', 100, 0);
INSERT INTO `t_user` VALUES (6, '爸爸', '9DD4E461268C8034F5C8564E155C67A6', '441426198001151810', '男', 'xx@qq.com', '18575263703', '2020-06-07 16:30:56', 100, 0);
INSERT INTO `t_user` VALUES (7, '高要', 'E763452E445BC146875714DC7E385CF0', '441426198001151919', '男', 'xjxj001@qq.com', '18575277777', '2020-06-10 11:30:42', 100, 0);
INSERT INTO `t_user` VALUES (8, 'admin', '21232F297A57A5A743894A0E4A801FC3', '444444444444444', '男', 'admin@qq.com', '12345678999', '2020-06-12 10:59:14', 100, 1);
INSERT INTO `t_user` VALUES (9, 'appoint', '7D8E1DE4AFE448799ECA785ED3C42095', '333333333333333333', '男', 'appoint@qq.com', '11111111111', '2020-06-12 11:02:26', 100, 2);

SET FOREIGN_KEY_CHECKS = 1;