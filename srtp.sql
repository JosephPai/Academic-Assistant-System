/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : srtp

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-06-18 10:24:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course_table`
-- ----------------------------
DROP TABLE IF EXISTS `course_table`;
CREATE TABLE `course_table` (
  `name` char(50) NOT NULL,
  `1_1` char(50) DEFAULT NULL,
  `1_2` char(50) DEFAULT NULL,
  `1_3` char(50) DEFAULT NULL,
  `1_4` char(50) DEFAULT NULL,
  `1_5` char(50) DEFAULT NULL,
  `2_1` char(50) DEFAULT NULL,
  `2_2` char(50) DEFAULT NULL,
  `2_3` char(50) DEFAULT NULL,
  `2_4` char(50) DEFAULT NULL,
  `2_5` char(50) DEFAULT NULL,
  `3_1` char(50) DEFAULT NULL,
  `3_2` char(50) DEFAULT NULL,
  `3_3` char(50) DEFAULT NULL,
  `3_4` char(50) DEFAULT NULL,
  `3_5` char(50) DEFAULT NULL,
  `4_1` char(50) DEFAULT NULL,
  `4_2` char(50) DEFAULT NULL,
  `4_3` char(50) DEFAULT NULL,
  `4_4` char(50) DEFAULT NULL,
  `4_5` char(50) DEFAULT NULL,
  `5_1` char(50) DEFAULT NULL,
  `5_2` char(50) DEFAULT NULL,
  `5_3` char(50) DEFAULT NULL,
  `5_4` char(50) DEFAULT NULL,
  `5_5` char(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_table
-- ----------------------------
INSERT INTO `course_table` VALUES ('admin', 'null', 'null', '陈媛 信号与系统 教学楼 公选', '班晓娟 编译原理 机电楼 必修', 'null', 'null', '王昭顺 计算机体系结构 机电楼 必修', '朱超 模式识别 机电楼 专选', 'null', '朱超 模式识别 机电楼 专选', '班晓娟 编译原理 逸夫楼 必修', '孙昌爱 软件工程 逸夫楼 必修', '何杰 嵌入式 机电楼 专选', '何杰 嵌入式 机电楼 专选', 'null', 'null', 'null', '储继迅 工科数学分析 逸夫楼 必修', '孙昌爱 软件工程 逸夫楼 必修', '王昭顺 计算机体系结构 机电楼 必修', 'null', '王成耀 数据结构 机电楼 实验', 'null', '孙昌爱 软件工程 逸夫楼 必修', 'null');

-- ----------------------------
-- Table structure for `fail_course`
-- ----------------------------
DROP TABLE IF EXISTS `fail_course`;
CREATE TABLE `fail_course` (
  `course` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fail_course
-- ----------------------------
INSERT INTO `fail_course` VALUES ('教师：何杰  课程：嵌入式  类别：专选');
INSERT INTO `fail_course` VALUES ('教师：王睿  课程：人工智能  类别：专选');
INSERT INTO `fail_course` VALUES ('教师：王睿  课程：人工智能  类别：专选');

-- ----------------------------
-- Table structure for `funds`
-- ----------------------------
DROP TABLE IF EXISTS `funds`;
CREATE TABLE `funds` (
  `outlay` text NOT NULL,
  `time` date NOT NULL,
  `money` text NOT NULL,
  `invoice` int(11) NOT NULL,
  `srtpid` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funds
-- ----------------------------
INSERT INTO `funds` VALUES ('购买书籍', '2018-05-15', '200', '0', '1');
INSERT INTO `funds` VALUES ('麻辣烫', '2018-06-06', '66', '0', '1');
INSERT INTO `funds` VALUES ('打印机', '2018-04-03', '1000', '1', '2');
INSERT INTO `funds` VALUES ('单片机', '2016-05-09', '82', '1', '3');
INSERT INTO `funds` VALUES ('路费', '2018-05-25', '200', '1', '1');
INSERT INTO `funds` VALUES ('打印机', '2018-06-01', '500', '1', '1');

-- ----------------------------
-- Table structure for `ggg`
-- ----------------------------
DROP TABLE IF EXISTS `ggg`;
CREATE TABLE `ggg` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stuid` bigint(20) NOT NULL,
  `teacher` text NOT NULL,
  `pro` longtext NOT NULL,
  `summary` longtext,
  `task_file` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `mid_file` varchar(255) DEFAULT NULL,
  `final_file` varchar(255) DEFAULT NULL,
  `semester` char(50) DEFAULT '2017-2018-2',
  `status` char(255) DEFAULT '0',
  `start_file` longtext,
  `start_tea` longtext,
  `mid_tea` longtext,
  `final_tea` longtext,
  PRIMARY KEY (`id`,`stuid`)
) ENGINE=InnoDB AUTO_INCREMENT=201806031110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ggg
-- ----------------------------
INSERT INTO `ggg` VALUES ('201806031103', '41504679', '张欣欣', '设计一款本科教学秘书辅助系统', '项目研究将直接指导国防科技创新实践与人才培养，提高人才培养质量，并为导师指导研究生从事国防科技创新，为校园文化培育与人才培养改革提供参考；为高校人才培养提供政策建议，以期为高层次国防科技人才培养提供有效支撑和借鉴，如，将有关工程硕士的培养向工程博士层次扩展等。', null, null, null, null, '2017-2018-02', '0', '刘志的开题报告.docx', '开题报告反馈', '中期审查反馈', '最终论文反馈');
INSERT INTO `ggg` VALUES ('201806031105', '41524157', '殷绪成', '防火墙技术中的计算机安全构建应用', '由于信息技术的不断发展，技术机网络被广泛地应用，并使人类的生产生活发生了重大变革，网络安全问题跟随着计算机网络广泛应用出现，使用防火墙是提高计算机网络安全的有效方法。该文将对防火墙的概念以及功能进行分析，并研究计算机安全构建中防火墙的应用。', '任务书.docx', null, '中期审批.docx', '最终论文.docx', '2017-2018-01', '0', '开题报告.docx', '开题报告反馈意见.docx', '中期审批反馈.docx', '最终论文反馈意见.docx');
INSERT INTO `ggg` VALUES ('201806031108', '41524157', '殷绪成', '数据库冗余计算', '数据库冗余计算', '任务书.docx', null, '中期审批.docx', '最终论文.docx', '2017-2018-01', '0', '开题报告.docx', '开题报告反馈意见.docx', '中期审批反馈.docx', '最终论文反馈.docx');
INSERT INTO `ggg` VALUES ('201806031109', '41504675', '殷绪成', '论红楼梦对当代文学的的影响', '论红楼梦对当代文学的影响', null, null, null, null, '2017-2018-01', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `information`
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `srtp_name` char(20) NOT NULL,
  `leader_id` char(8) NOT NULL,
  `teacher_name` char(6) NOT NULL,
  `publish_time` char(20) NOT NULL,
  `level` char(6) DEFAULT NULL,
  `background` text,
  `result` text,
  `budget` int(6) DEFAULT NULL,
  `member_id1` char(8) DEFAULT NULL,
  `member_id2` char(8) DEFAULT NULL,
  `status` char(6) NOT NULL DEFAULT '0',
  `mid_file` text,
  `final_file` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES ('1', '深度学习', '41504675', '殷绪成', '2018-02-03', '校级', '深度学习的概念源于人工神经网络的研究。含多隐层的多层感知器就是一种深度学习结构。', '深度学习通过组合低层特征形成更加抽象的高层表示属性类别或特征', '3000', '41504676', '41504677', '0', '三国历史中期审查.pdf', '这会肯定对了！.docx');
INSERT INTO `information` VALUES ('2', '模式识别', '41504676', '殷绪成', '2018-03-15', '院级', '模式识别（英语：Pattern Recognition），就是通过计算机用数学技术方法来研究模式的自动处理和判读。', '模式识别作为人工智能的一个重要应用领域也得到了飞速发展。模式识别就是用计算机通过计算的方法根据样本的特征对样本进行分类。', '2000', '41504677', '41504678', '1', null, null);
INSERT INTO `information` VALUES ('3', '人工智能', '41504677', '殷绪成', '2018-04-16', '市级', '人工智能（Artificial Intelligence），英文缩写为AI。它是研究、开发用于模拟、延伸和扩展人的智能的理论、方法、技术及应用系统的一门新的技术科学。', '人工智能实验室(AiLab)是人工智能领域的网上资讯门户,本站汇集了各类人工智能学科知识和学习资料,是各位人工智能爱好者学习和交流不可或缺的平台', '4000', '41504678', '41504679', '1', null, null);
INSERT INTO `information` VALUES ('4', '计算机网络', '41504678', '殷绪成', '2018-04-12', '校级', '人工智能（Artificial Intelligence），英文缩写为AI。它是研究、开发用于模拟、延伸和扩展人的智能的理论、方法、技术及应用系统的一门新的技术科学。', '人工智能实验室(AiLab)是人工智能领域的网上资讯门户,本站汇集了各类人工智能学科知识和学习资料,是各位人工智能爱好者学习和交流不可或缺的平台', '3000', '41504675', '41504676', '1', null, null);
INSERT INTO `information` VALUES ('5', '软件工程', '41504679', '啦啦啦啦', '2018-02-06', '国家级', '人工智能（Artificial Intelligence），英文缩写为AI。它是研究、开发用于模拟、延伸和扩展人的智能的理论、方法、技术及应用系统的一门新的技术科学。', '人工智能实验室(AiLab)是人工智能领域的网上资讯门户,本站汇集了各类人工智能学科知识和学习资料,是各位人工智能爱好者学习和交流不可或缺的平台', '5000', '41504676', '41504677', '0', null, null);
INSERT INTO `information` VALUES ('6', '计算机体系结构', '41504677', '刘备', '2018-06-01', '国家级', '真没什么背景', '能有啥成果', '10000', '41504675', '41504676', '1', null, null);
INSERT INTO `information` VALUES ('7', '编译原理', '41504679', '张飞', '2018-07-01', '校级', '张飞能有啥背景', '我也想要成果呀', '5000', '41504675', '41504678', '1', null, null);
INSERT INTO `information` VALUES ('8', '数据结构', '41504678', '关羽', '2018-03-05', '市级', '我真的编不出来背景了...', '好了无所谓了', '100', '41504675', '41504676', '1', null, null);
INSERT INTO `information` VALUES ('9', '数据结构', '41504678', '关羽', '2018-03-15', '市级', '我真的编不出来背景了...', '好了无所谓了', '100', '41504675', '41504676', '1', null, null);
INSERT INTO `information` VALUES ('10', '数值计算方法', '41504679', '张飞', '2018-07-03', '校级', '张飞能有啥背景', '我也想要成果呀', '5000', '41504675', '41504678', '1', null, null);
INSERT INTO `information` VALUES ('11', '通信原理概论', '41504679', '张飞', '2018-07-02', '校级', '张飞能有啥背景', '我也想要成果呀', '5000', '41504675', '41504678', '1', null, null);
INSERT INTO `information` VALUES ('12', '三国历史', '41504675', '曹操', '2018-12-03', '国家级', '123', '123', '3000', '41504678', '41504679', '2', '三国历史中期审查.pdf', null);
INSERT INTO `information` VALUES ('13', '三国历史', '41504675', '孙权', '2018-12-03', '国家级', '123', '123', '3000', '41504678', '41504679', '3', null, null);
INSERT INTO `information` VALUES ('17', '刘备的一生', '41504675', '刘备', '2018-12-05', '国家级', '刘备少年时拜卢植为师；早年颠沛流离，备尝艰辛，投靠过多个诸侯，曾参与镇压黄巾起义。先后率军救援北海相孔融、徐州牧陶谦等。陶谦病亡后，将徐州让与刘备。赤壁之战时，刘备与孙权联盟击败曹操，趁势夺取荆州。而后进取益州。于章武元年（221年）在成都称帝，国号汉，史称蜀或蜀汉。《三国志》评刘备的机权干略不及曹操，但其弘毅宽厚，知人待士，百折不挠，终成帝业。刘备也称自己做事“每与操反，事乃成尔”。', '章武三年（223年），刘备病逝于白帝城，终年六十三岁，谥号昭烈皇帝，庙号烈祖 [1]  ，葬惠陵。后世有众多文艺作品以其为主角，在成都武侯祠有昭烈庙为纪念。 [2-3] ', '2000', '41504676', '41504678', '3', null, null);
INSERT INTO `information` VALUES ('18', '刘备的一生', '41504675', '刘备', '2018-12-28', '国家级', '刘备少年时拜卢植为师；早年颠沛流离，备尝艰辛，投靠过多个诸侯，曾参与镇压黄巾起义。先后率军救援北海相孔融、徐州牧陶谦等。陶谦病亡后，将徐州让与刘备。赤壁之战时，刘备与孙权联盟击败曹操，趁势夺取荆州。而后进取益州。于章武元年（221年）在成都称帝，国号汉，史称蜀或蜀汉。《三国志》评刘备的机权干略不及曹操，但其弘毅宽厚，知人待士，百折不挠，终成帝业。刘备也称自己做事“每与操反，事乃成尔”。', '章武三年（223年），刘备病逝于白帝城，终年六十三岁，谥号昭烈皇帝，庙号烈祖 [1]  ，葬惠陵。后世有众多文艺作品以其为主角，在成都武侯祠有昭烈庙为纪念。 [2-3] ', '2000', '41504676', '41504678', '1', '刘备的一生中期审查.pdf', null);
INSERT INTO `information` VALUES ('19', '深入学习软件工程', '41524157', '殷绪成', '2018-02-02', '院级', '深入学习软件工程', '深入学习软件工程', '3000', '41504675', '41524136', '1', null, null);
INSERT INTO `information` VALUES ('20', '深入学习人工智能', '41524157', '殷绪成', '2018-02-02', '院级', '深入学习人工智能', '深入学习人工智能', '3000', '41504675', '41524136', '0', null, null);

-- ----------------------------
-- Table structure for `password`
-- ----------------------------
DROP TABLE IF EXISTS `password`;
CREATE TABLE `password` (
  `id` char(255) DEFAULT NULL,
  `password` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of password
-- ----------------------------
INSERT INTO `password` VALUES ('41504675', '41504675');
INSERT INTO `password` VALUES ('41504676', '41504676');
INSERT INTO `password` VALUES ('41504677', '41504677');
INSERT INTO `password` VALUES ('t0001', 'jiaoshi');
INSERT INTO `password` VALUES ('t0002', 'jiaoshi');
INSERT INTO `password` VALUES ('admin', 'admin');
INSERT INTO `password` VALUES ('41504679', '41504679');
INSERT INTO `password` VALUES ('t0006', 'jiaoshi');
INSERT INTO `password` VALUES ('41524157', '123');

-- ----------------------------
-- Table structure for `srtp_tea`
-- ----------------------------
DROP TABLE IF EXISTS `srtp_tea`;
CREATE TABLE `srtp_tea` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `srtp_name` char(20) DEFAULT NULL,
  `teacher_name` char(10) DEFAULT NULL,
  `introduction` text,
  `major` text,
  `teacher_telnum` text,
  `teacher_email` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of srtp_tea
-- ----------------------------
INSERT INTO `srtp_tea` VALUES ('1', '我发布了一个项目', '张三', 'SRTP项目', '计算机、信安', '18810522313', '123@123.com');
INSERT INTO `srtp_tea` VALUES ('2', '深入学习软件工程', '殷绪成', '深入学习软件工程', '计算机', '18811112222', '159@123.com');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` char(8) NOT NULL,
  `name` char(6) NOT NULL,
  `institute` char(6) NOT NULL,
  `class` char(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('41504675', '宋建成', '计通', '计1502');
INSERT INTO `student` VALUES ('41504679', '刘志', '冶金', '冶金1504');
INSERT INTO `student` VALUES ('41524133', '何宇晖', '经管', '经济1501');
INSERT INTO `student` VALUES ('41524136', '白泽琛', '机械', '机械1503');
INSERT INTO `student` VALUES ('41524146', '李哲', '文法', '法学1502');
INSERT INTO `student` VALUES ('41524157', '赵宇', '计通', '计1502');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` varchar(8) NOT NULL,
  `teacher_name` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('t0001', '殷绪成', '计通学院', '教授');
INSERT INTO `teacher` VALUES ('t0002', '张三', '计通学院', '教授');
INSERT INTO `teacher` VALUES ('t0003', '李四', '文法学院', '副教授');
INSERT INTO `teacher` VALUES ('t0004', '王五', '计通学院', '副教授');
INSERT INTO `teacher` VALUES ('t0005', '程序', '计通学院', '教授');
INSERT INTO `teacher` VALUES ('t0006', '张欣欣', '计通学院', '校长');

-- ----------------------------
-- Table structure for `teachreserch`
-- ----------------------------
DROP TABLE IF EXISTS `teachreserch`;
CREATE TABLE `teachreserch` (
  `teachReserch_id` int(11) NOT NULL AUTO_INCREMENT,
  `teachReserch_name` varchar(45) DEFAULT NULL,
  `first_id` varchar(45) DEFAULT NULL,
  `apply_time` varchar(45) DEFAULT NULL,
  `guide_id` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `ifNfinish` varchar(45) DEFAULT NULL COMMENT '是否有未完成的项目',
  `fund` double DEFAULT NULL,
  `background` text,
  `bascis` text,
  `goal` text,
  `content` text,
  `method` text,
  `paper` varchar(45) DEFAULT NULL,
  `mid_file` text,
  `final_file` text,
  `status` varchar(45) DEFAULT '0',
  `partner_one` varchar(45) DEFAULT NULL,
  `partner_two` varchar(45) DEFAULT NULL,
  `partner_three` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teachReserch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachreserch
-- ----------------------------
INSERT INTO `teachreserch` VALUES ('1', '基于CNN的步态识别', 't0002', '2018-06-06', 'g111', '重点专项', '否', '3000', '项目背景', '项目基础', '项目目标', '项目内容', '采用方法', '期待发表的论文', '', '', '2', 't0005', 't0003', 't0004');
INSERT INTO `teachreserch` VALUES ('2', '基于 CDIO 的工程管理专业应用型“卓越工程师”人才培养模式探索 ', 't0002', '2018-06-06', 'g111', '重点专项', '否', '2000', '工程管理专业是一个新的专业，兼具工程技术和管理的综合特征，本专业的培养目标是培养适应现代化建设需要，德、智、体全面发展，具备工程技术及经济管理、法律等基本知识，获得工程师基本训练，具有较强实践能力、创新能力、组织管理能力的高级工程管理人才；专业覆盖面宽，从业范围广，社会需求大，但从总体上看，建设行业的工程师的培养还不能满足我国经济高速发展的需要，由于招生扩大而相应配套措施、师资力量和实习基地等工作未能及时跟上，使得高校教育教学质量不尽如人意，高校毕业生走入社会以后不具备工程师的基本素质，不能开展相应的技术工作，导致建设行业就业人员的素质和能力整体偏低。因此，工程管理专业如何探索创新人才教育培养新模式又怎样练就“卓越工程师”就需要迫切解决的重大课题。\r\n ', '现在，关于研究卓越计划的文献有很多，大致可分为以下两类。一类是对“卓越工程师培养计划”，对卓越工程师培养提出建议、启示或思考。张文生、宋克苑提出应回归工程教育理念，通过制定专门性培养方案、培养模式、培养青年教师工程教育能力、建立健全保障体系等措施培养卓越工程师。袭克提出将专业教育变为素质教育和人的全面发展的教育、将面向行业的教育转变为面向新型工业化教育、将学校教育转变为产学合作教育', '本项目拟采用文献研究法、历史分析法以及比较研究法。\r\n第一，文献研究法：对文献进行查阅、分析与整理，并力图寻找事物的本质属性的研究方法。本项目涉及到一些关于工程管理专业工程教育、工程师、卓越工程师教育培养计划方面的书籍、报告及文献等。通过对文献的挖掘、整理和分析，获得对本研究有很大价值的研究资料，并以此通过借鉴对卓越工程师培养进行研究。\r\n ', '对于工程管理专业应用型“卓越工程师”人才培养模式的建立，应从国外“卓越工程师”培养计划的经验入手，结合我国工程行业对工程管理专业人才的要求，建立基于的工程管理专业应用型“卓越工程师”人才培养模式。\r\n ', '本项目拟采用文献研究法、历史分析法以及比较研究法。', 'IEEE', '文献研究中期审查.pdf', 'CNN最终.pdf', '3', 't0001', 't0005', 't0003');
INSERT INTO `teachreserch` VALUES ('3', '学分制下法学本科考试的实践与改革', 't0004', '2018-06-10', 'g222', '重点专项', 'on', '5000', '法学本科考试是高校法学教育的关键环节，学分制下考试特点有了较大变化。考试不仅要完成对学生学习情况的考查任务，还要检查教师的教学效果与水平，诊断教学中存在的问题，反馈教与学过程中的各种信息。这对于激励学生学习及其教师改进教学方法具有重要作用。法学本科考试的运行质量直接关系到高校法学教育的整体教学效果，关系到我国法律人才的培养和法治社会的建设。但是，当前我国高校仍一直沿用传统的考试模式，学生考试的目的单单是为了取得一个高分数，而这个高分数并不能全面、客观地反映学生的综合素质。随着我国法学教育的不断发展，传统法学本科考试模式已经不能适应教育改革的需要。因此，积极开展法学本科考试模式的改革实践，提高我国的法学教育水平和培养高素质的法律人才，成为我们当前急需研究和加以解决的课题。', '近年来，全国各地院校都热衷于兴办法学本科教育，使得我国法学本科教育的规模急速扩大，无论速度还是数量都十分可观。然而在考试环节，由于受长期应试教育思想的影响，法学本科的考试模式基本是高中文科考试模式的延续，考试这根指挥棒不能正确发挥其导向作用，考试模式存在许多弊端。', '（1）通过认真研究，找出当前法学本科考试制度的症结所在，并积极采取灵活而又科学的教学改革措施，提高高校法学本科教育的整体质量。\r\n（2）努力探索适应新时期学生培养和教学改革的教学运行管理体制、机制、方法及手段，实现人才培养模式的改革与创新为主的综合改革实践目标。', '（1） 学分制下法学本科考试出现的问题何在，分析造成这种现象的原因。\r\n（2） 当前法学本科考试的利弊论证。\r\n（3）完善法学本科考试的措施。包括树立正确的法学本科考试价值理念、合理安排法学本科考试的方式、强化对学生综合素质的考查，严格成绩评判标准等。', '（1）通过制度保障，使学生认识到考试的公平合理性，防止侥幸心理的产生。\r\n（2）通过健全考试模式的设计，比如在完善考试大纲的指导下，推行试题库和案例数据库建设，逐步做到标准命题、随机抽题、区分均匀、难度适中的笔试评价，并将笔试成绩限定在所占总成绩的一定比例。让单元测试、小论文、调查报告、读书报告等考核形式成为考试结构中必不可少的部分。使得学生在丰富多样的方式中各有侧重，发挥各自的个性与潜能。', 'EI', null, null, '1', 't0001', 't0003', 't0005');
INSERT INTO `teachreserch` VALUES ('4', '学分制下法学本科考试的实践与改革', 't0004', '2018-06-10', 'g222', '重点专项', 'on', '5000', '法学本科考试是高校法学教育的关键环节，学分制下考试特点有了较大变化。考试不仅要完成对学生学习情况的考查任务，还要检查教师的教学效果与水平，诊断教学中存在的问题，反馈教与学过程中的各种信息。这对于激励学生学习及其教师改进教学方法具有重要作用。法学本科考试的运行质量直接关系到高校法学教育的整体教学效果，关系到我国法律人才的培养和法治社会的建设。但是，当前我国高校仍一直沿用传统的考试模式，学生考试的目的单单是为了取得一个高分数，而这个高分数并不能全面、客观地反映学生的综合素质。随着我国法学教育的不断发展，传统法学本科考试模式已经不能适应教育改革的需要。因此，积极开展法学本科考试模式的改革实践，提高我国的法学教育水平和培养高素质的法律人才，成为我们当前急需研究和加以解决的课题。', '近年来，全国各地院校都热衷于兴办法学本科教育，使得我国法学本科教育的规模急速扩大，无论速度还是数量都十分可观。然而在考试环节，由于受长期应试教育思想的影响，法学本科的考试模式基本是高中文科考试模式的延续，考试这根指挥棒不能正确发挥其导向作用，考试模式存在许多弊端。', '（1）通过认真研究，找出当前法学本科考试制度的症结所在，并积极采取灵活而又科学的教学改革措施，提高高校法学本科教育的整体质量。\r\n（2）努力探索适应新时期学生培养和教学改革的教学运行管理体制、机制、方法及手段，实现人才培养模式的改革与创新为主的综合改革实践目标。', '（1） 学分制下法学本科考试出现的问题何在，分析造成这种现象的原因。\r\n（2） 当前法学本科考试的利弊论证。\r\n（3）完善法学本科考试的措施。包括树立正确的法学本科考试价值理念、合理安排法学本科考试的方式、强化对学生综合素质的考查，严格成绩评判标准等。', '（1）通过制度保障，使学生认识到考试的公平合理性，防止侥幸心理的产生。\r\n（2）通过健全考试模式的设计，比如在完善考试大纲的指导下，推行试题库和案例数据库建设，逐步做到标准命题、随机抽题、区分均匀、难度适中的笔试评价，并将笔试成绩限定在所占总成绩的一定比例。让单元测试、小论文、调查报告、读书报告等考核形式成为考试结构中必不可少的部分。使得学生在丰富多样的方式中各有侧重，发挥各自的个性与潜能。', 'EI', null, null, '0', 't0001', 't0003', 't0005');
INSERT INTO `teachreserch` VALUES ('5', '学分制下法学本科考试的实践与改革', 't0004', '2018-06-10', 'g222', '重点专项', 'on', '5000', '法学本科考试是高校法学教育的关键环节，学分制下考试特点有了较大变化。考试不仅要完成对学生学习情况的考查任务，还要检查教师的教学效果与水平，诊断教学中存在的问题，反馈教与学过程中的各种信息。这对于激励学生学习及其教师改进教学方法具有重要作用。法学本科考试的运行质量直接关系到高校法学教育的整体教学效果，关系到我国法律人才的培养和法治社会的建设。但是，当前我国高校仍一直沿用传统的考试模式，学生考试的目的单单是为了取得一个高分数，而这个高分数并不能全面、客观地反映学生的综合素质。随着我国法学教育的不断发展，传统法学本科考试模式已经不能适应教育改革的需要。因此，积极开展法学本科考试模式的改革实践，提高我国的法学教育水平和培养高素质的法律人才，成为我们当前急需研究和加以解决的课题。', '近年来，全国各地院校都热衷于兴办法学本科教育，使得我国法学本科教育的规模急速扩大，无论速度还是数量都十分可观。然而在考试环节，由于受长期应试教育思想的影响，法学本科的考试模式基本是高中文科考试模式的延续，考试这根指挥棒不能正确发挥其导向作用，考试模式存在许多弊端。', '（1）通过认真研究，找出当前法学本科考试制度的症结所在，并积极采取灵活而又科学的教学改革措施，提高高校法学本科教育的整体质量。\r\n（2）努力探索适应新时期学生培养和教学改革的教学运行管理体制、机制、方法及手段，实现人才培养模式的改革与创新为主的综合改革实践目标。', '（1） 学分制下法学本科考试出现的问题何在，分析造成这种现象的原因。\r\n（2） 当前法学本科考试的利弊论证。\r\n（3）完善法学本科考试的措施。包括树立正确的法学本科考试价值理念、合理安排法学本科考试的方式、强化对学生综合素质的考查，严格成绩评判标准等。', '（1）通过制度保障，使学生认识到考试的公平合理性，防止侥幸心理的产生。\r\n（2）通过健全考试模式的设计，比如在完善考试大纲的指导下，推行试题库和案例数据库建设，逐步做到标准命题、随机抽题、区分均匀、难度适中的笔试评价，并将笔试成绩限定在所占总成绩的一定比例。让单元测试、小论文、调查报告、读书报告等考核形式成为考试结构中必不可少的部分。使得学生在丰富多样的方式中各有侧重，发挥各自的个性与潜能。', 'EI', null, null, '0', 't0001', 't0003', 't0005');
INSERT INTO `teachreserch` VALUES ('6', '学分制下法学本科考试的实践与改革', 't0004', '2018-06-10', 'g222', '重点专项', 'on', '5000', '法学本科考试是高校法学教育的关键环节，学分制下考试特点有了较大变化。考试不仅要完成对学生学习情况的考查任务，还要检查教师的教学效果与水平，诊断教学中存在的问题，反馈教与学过程中的各种信息。这对于激励学生学习及其教师改进教学方法具有重要作用。法学本科考试的运行质量直接关系到高校法学教育的整体教学效果，关系到我国法律人才的培养和法治社会的建设。但是，当前我国高校仍一直沿用传统的考试模式，学生考试的目的单单是为了取得一个高分数，而这个高分数并不能全面、客观地反映学生的综合素质。随着我国法学教育的不断发展，传统法学本科考试模式已经不能适应教育改革的需要。因此，积极开展法学本科考试模式的改革实践，提高我国的法学教育水平和培养高素质的法律人才，成为我们当前急需研究和加以解决的课题。', '近年来，全国各地院校都热衷于兴办法学本科教育，使得我国法学本科教育的规模急速扩大，无论速度还是数量都十分可观。然而在考试环节，由于受长期应试教育思想的影响，法学本科的考试模式基本是高中文科考试模式的延续，考试这根指挥棒不能正确发挥其导向作用，考试模式存在许多弊端。', '（1）通过认真研究，找出当前法学本科考试制度的症结所在，并积极采取灵活而又科学的教学改革措施，提高高校法学本科教育的整体质量。\r\n（2）努力探索适应新时期学生培养和教学改革的教学运行管理体制、机制、方法及手段，实现人才培养模式的改革与创新为主的综合改革实践目标。', '（1） 学分制下法学本科考试出现的问题何在，分析造成这种现象的原因。\r\n（2） 当前法学本科考试的利弊论证。\r\n（3）完善法学本科考试的措施。包括树立正确的法学本科考试价值理念、合理安排法学本科考试的方式、强化对学生综合素质的考查，严格成绩评判标准等。', '（1）通过制度保障，使学生认识到考试的公平合理性，防止侥幸心理的产生。\r\n（2）通过健全考试模式的设计，比如在完善考试大纲的指导下，推行试题库和案例数据库建设，逐步做到标准命题、随机抽题、区分均匀、难度适中的笔试评价，并将笔试成绩限定在所占总成绩的一定比例。让单元测试、小论文、调查报告、读书报告等考核形式成为考试结构中必不可少的部分。使得学生在丰富多样的方式中各有侧重，发挥各自的个性与潜能。', 'EI', null, null, '0', 't0001', 't0003', 't0005');
INSERT INTO `teachreserch` VALUES ('7', '基于国防科技创新实践的高层次人才培养模式与支撑体系研究', 't0005', '2018-06-02', 'g333', '重点专项', '1', '10000', '高层次科技创新人才，是新型高素质军事人才的重要组成部分。《军队高层次科技创新人才工程实施办法》明确提出要加强军队与高校、科研院所的合作，不断提升军队高层人才科技创新能力，加快实现关键领域人才建设局部跃升。在军民融合思想指导下，全国已经有118所非军事院校参与国防生的培养，每年为军队输送了大量人才。但从层次上来说，这种以集中式知识传授为主的本科层次国防生还不能满足国防高层次人才需求。如何有效实现国防发展需要与高校人才培养的对接，加大人才培养模式的改革与实践，提高人才培养质量，即要融得上，更要融得好，为国防工业和军队输送更高层次（硕士及以上）国防科技创新人才，具有重要现实与战略意义。本项目拟以合肥工业大学国防装备技术研究院、光电技术研究院、化工机械研究所、微电子所、化工学院特种材料所等专职科研单位所开展的国防科技创新实践为载体，不断丰富硕士以及上人才培养模式改革与实践，构建人才培养支撑体系，以期为高层次国防科技创新人才培养提供有益探索与借鉴。', '美国在二战后颁布了《国防教育法》，从国家层面赋予了非军事院校开展国防教育与科研的责任。在美国的国防科技工业发展过程中，明确要求完善以军事科研单位、大学和企业为核心的国防科技技术体系，把高等教育的发展视作关系国家安危乃至生死存亡的一个关键性因素。二战结束后，日本通过政府的大力扶持，逐步建立了以私营企业为主的军事工业，成为日本国防科技的主力军，并形成官、军、民三方相结合的决策运行体制。英国国防部在2006年公开发布《面向21世纪的国防技术战略》，并强调大学等相关研究机构要充分了解英国国防技术发展的现状与趋势，鼓励更多的学生从事国防科学技术相关领域研究。英国防部预备役局在全国十余所大学设立陆军军官训练团、海军训练中心和空军飞行中队。学生可自愿参加陆、海、空军组织的训练活动。俄罗斯普通高校继承了前苏联设置军事教研室和军事训练系的传统，大力支持军事爱国主义教育，特别注重国防教育融入学生课程与生活环境，为军队培养了大批具有高层次专业知识与科技创新能力的国防人才。', '项目负责人和项目组成员来自于学校从事国防科研一线的专职科研机构及管理部门，在推进高校服务国防人才培养、科技创新、军民融合组织与实施方面具有丰富的理论与实践经验。近年来，学校组建了若干专职科研机构，专职从事国防科技创新工作，承担了包括国防973、国防基础科研、军品配套、产学研合作项目多项，每年国防科研经费达5000万以上。项目组围绕军民融合和国防科技人才培养实践，并承担省级以上项目2项，积累了相关理论研究与实证数据、资料等等，发表论文近20篇。同时，项目组及学校相关单位，以国防科研项目为载体，对高层次国防科技人的培养模式（如文化培育、工程训练、科学研究、产学研合作等）进行了有益探索，为本课题的实施奠定了基础。', '项目承担单位近十年来在国防科技创新的组织、项目管理、保密与质量体系建设等方面积累了较为丰富的实践经验。学校“三证”齐全，还是省军民结合发展研究院的建设依托单位。学校与二炮部队、中航工业集团、中国电子科技集团及其所属科研院所建立了密切的产学研合作关系，以参军入伍、联合培养、工程硕士班等形式为军队和国防军工单位输送了大量高层次毕业生。如，2011-2013年，学校毕业生参军或到国防工业企业就业有1117人，其中硕士以上约占1/3（参军71人，到十大军工集团从事国防科技创新的人数为276人）。同时，2011年以来，学校每年为二炮部队培养30名工程硕士；学校与中电38所、中航新乡集团都开展了研究生联合培养及工程硕士培养的合作。从而为本项目的实施与目标达成提供了实践基础。', '项目研究将直接指导国防科技创新实践与人才培养，提高人才培养质量，并为导师指导研究生从事国防科技创新，为校园文化培育与人才培养改革提供参考；为高校人才培养提供政策建议，以期为高层次国防科技人才培养提供有效支撑和借鉴，如，将有关工程硕士的培养向工程博士层次扩展等。', 'SCI、EI', null, null, '3', 't0003', 't0004', 't0001');
INSERT INTO `teachreserch` VALUES ('8', '基于国防科技创新实践的高层次人才培养模式与支撑体系研究', 't0005', '2018-06-02', 'g333', '重点专项', '1', '10000', '高层次科技创新人才，是新型高素质军事人才的重要组成部分。《军队高层次科技创新人才工程实施办法》明确提出要加强军队与高校、科研院所的合作，不断提升军队高层人才科技创新能力，加快实现关键领域人才建设局部跃升。在军民融合思想指导下，全国已经有118所非军事院校参与国防生的培养，每年为军队输送了大量人才。但从层次上来说，这种以集中式知识传授为主的本科层次国防生还不能满足国防高层次人才需求。如何有效实现国防发展需要与高校人才培养的对接，加大人才培养模式的改革与实践，提高人才培养质量，即要融得上，更要融得好，为国防工业和军队输送更高层次（硕士及以上）国防科技创新人才，具有重要现实与战略意义。本项目拟以合肥工业大学国防装备技术研究院、光电技术研究院、化工机械研究所、微电子所、化工学院特种材料所等专职科研单位所开展的国防科技创新实践为载体，不断丰富硕士以及上人才培养模式改革与实践，构建人才培养支撑体系，以期为高层次国防科技创新人才培养提供有益探索与借鉴。', '美国在二战后颁布了《国防教育法》，从国家层面赋予了非军事院校开展国防教育与科研的责任。在美国的国防科技工业发展过程中，明确要求完善以军事科研单位、大学和企业为核心的国防科技技术体系，把高等教育的发展视作关系国家安危乃至生死存亡的一个关键性因素。二战结束后，日本通过政府的大力扶持，逐步建立了以私营企业为主的军事工业，成为日本国防科技的主力军，并形成官、军、民三方相结合的决策运行体制。英国国防部在2006年公开发布《面向21世纪的国防技术战略》，并强调大学等相关研究机构要充分了解英国国防技术发展的现状与趋势，鼓励更多的学生从事国防科学技术相关领域研究。英国防部预备役局在全国十余所大学设立陆军军官训练团、海军训练中心和空军飞行中队。学生可自愿参加陆、海、空军组织的训练活动。俄罗斯普通高校继承了前苏联设置军事教研室和军事训练系的传统，大力支持军事爱国主义教育，特别注重国防教育融入学生课程与生活环境，为军队培养了大批具有高层次专业知识与科技创新能力的国防人才。', '项目负责人和项目组成员来自于学校从事国防科研一线的专职科研机构及管理部门，在推进高校服务国防人才培养、科技创新、军民融合组织与实施方面具有丰富的理论与实践经验。近年来，学校组建了若干专职科研机构，专职从事国防科技创新工作，承担了包括国防973、国防基础科研、军品配套、产学研合作项目多项，每年国防科研经费达5000万以上。项目组围绕军民融合和国防科技人才培养实践，并承担省级以上项目2项，积累了相关理论研究与实证数据、资料等等，发表论文近20篇。同时，项目组及学校相关单位，以国防科研项目为载体，对高层次国防科技人的培养模式（如文化培育、工程训练、科学研究、产学研合作等）进行了有益探索，为本课题的实施奠定了基础。', '项目承担单位近十年来在国防科技创新的组织、项目管理、保密与质量体系建设等方面积累了较为丰富的实践经验。学校“三证”齐全，还是省军民结合发展研究院的建设依托单位。学校与二炮部队、中航工业集团、中国电子科技集团及其所属科研院所建立了密切的产学研合作关系，以参军入伍、联合培养、工程硕士班等形式为军队和国防军工单位输送了大量高层次毕业生。如，2011-2013年，学校毕业生参军或到国防工业企业就业有1117人，其中硕士以上约占1/3（参军71人，到十大军工集团从事国防科技创新的人数为276人）。同时，2011年以来，学校每年为二炮部队培养30名工程硕士；学校与中电38所、中航新乡集团都开展了研究生联合培养及工程硕士培养的合作。从而为本项目的实施与目标达成提供了实践基础。', '项目研究将直接指导国防科技创新实践与人才培养，提高人才培养质量，并为导师指导研究生从事国防科技创新，为校园文化培育与人才培养改革提供参考；为高校人才培养提供政策建议，以期为高层次国防科技人才培养提供有效支撑和借鉴，如，将有关工程硕士的培养向工程博士层次扩展等。', 'SCI、EI', null, null, '3', 't0003', 't0004', 't0001');

-- ----------------------------
-- Table structure for `teachreserch_fund`
-- ----------------------------
DROP TABLE IF EXISTS `teachreserch_fund`;
CREATE TABLE `teachreserch_fund` (
  `fund_id` int(11) NOT NULL AUTO_INCREMENT,
  `office_supply` double DEFAULT NULL,
  `data_fee` double DEFAULT NULL,
  `travel_expenses` double DEFAULT NULL,
  PRIMARY KEY (`fund_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachreserch_fund
-- ----------------------------
INSERT INTO `teachreserch_fund` VALUES ('1', '1000', '200', '300');
INSERT INTO `teachreserch_fund` VALUES ('2', '150', '200', '3000');

-- ----------------------------
-- Table structure for `textbook`
-- ----------------------------
DROP TABLE IF EXISTS `textbook`;
CREATE TABLE `textbook` (
  `textbook_id` int(11) NOT NULL AUTO_INCREMENT,
  `textbook_name` varchar(45) DEFAULT NULL,
  `apply_time` varchar(45) DEFAULT NULL,
  `first_author_id` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `word` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `fund` varchar(45) DEFAULT NULL,
  `partner_one` varchar(45) DEFAULT NULL,
  `partner_two` varchar(45) DEFAULT NULL,
  `outline` varchar(45) DEFAULT NULL,
  `purpose` text,
  `goal` text,
  `mid_file` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT '0',
  `final_file` text,
  PRIMARY KEY (`textbook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textbook
-- ----------------------------
INSERT INTO `textbook` VALUES ('1', '微信小程序入门教程', '2018-06-05', 't0003', '新编', '10', '程序设计基础', '3000', 't0002', 't0003', '大纲还不知道', '目的也不清楚', '暂时没有目标', '123', '3', null);
INSERT INTO `textbook` VALUES ('2', 'Mysql从删库到跑路', '2018-06-06', 't0002', '新编', '1', '程序员素质养成', '1000', 't0001', 't0003', '大纲还不知道', '目的也不清楚', null, 'CNN中期审查.doc', '3', 'Mysql最终审查.pdf');
INSERT INTO `textbook` VALUES ('3', '通信原理（第7版）', '2018-06-06', 't0004', '新编', '50000', '通信原理概论', '1000', 't0002', 't0003', '能有啥大纲？', '东汉末年，天下大乱，曹操以汉天子的名义征讨四方，对内消灭二袁、吕布、刘表、马超、韩遂等割据势力，对外降服南匈奴、乌桓、鲜卑等，统一了中国北方，并实行一系列政策恢复经济生产和社会秩序，扩大屯田、兴修水利、奖励农桑、重视手工业、安置流亡人口、实行“租调制”，从而使中原社会渐趋稳定、经济出现转机。 [3]  黄河流域在曹操统治下，政治渐见清明，经济逐步恢复，阶级压迫稍有减轻，社会风气有所好转。曹操在汉朝的名义下所采取的一些措施具有积极作用。', null, null, '2', null);
INSERT INTO `textbook` VALUES ('8', '离散数学', '2018-06-11', 't0001', '新编', '30000', '离散数学', '2000', 't0002', 't0003', '数学基础', '离散数学是研究离散量的结构及其相互关系的数学学科，是现代数学的一个重要分支。离散的含义是指不同的连接在一起的元素，主要是研究基于离散量的结构和相互间的关系，其对象一般是有限个或可数个元素。离散数学在各学科领域，特别在计算机科学与技术领域有着广泛的应用，同时离散数学也是计算机专业的许多专业课程，如程序设计语言、数据结构、操作系统、编译技术、人工智能、数据库、算法设计与分析、理论计算机科学基础等必不可少的先行课程。通过离散数学的学习，不但可以掌握处理离散结构的描述工具和方法，为后续课程的学习创造条件，而且可以提高抽象思维和严格的逻辑推理能力，为将来参与创新性的研究和开发工作打下坚实的基础。', null, '离散数学教材.docx', '3', '离散数学最终审批.docx');
INSERT INTO `textbook` VALUES ('9', '软件工程', '2018-06-06', 't0002', '新编', '10000', '软件工程', '1000', 't0006', 't0005', '大纲就是大纲', '没啥目的', '啥目标都行', null, '3', null);
INSERT INTO `textbook` VALUES ('10', '离散', '2018-06-17', 't0001', '教改', '30000', '离散数学', '200', 't0002', 't0003', '数学基础', '数学', null, null, '1', null);

-- ----------------------------
-- Table structure for `textbook_fund`
-- ----------------------------
DROP TABLE IF EXISTS `textbook_fund`;
CREATE TABLE `textbook_fund` (
  `fund_id` int(11) NOT NULL AUTO_INCREMENT,
  `office_supply` double DEFAULT NULL,
  `data_fee` double DEFAULT NULL,
  `travel_expenses` double DEFAULT NULL,
  PRIMARY KEY (`fund_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textbook_fund
-- ----------------------------
INSERT INTO `textbook_fund` VALUES ('1', '100', '200', '300');
INSERT INTO `textbook_fund` VALUES ('2', '200', '200', '300');
INSERT INTO `textbook_fund` VALUES ('3', '200', '4500', '6564');
INSERT INTO `textbook_fund` VALUES ('5', '100', '200', '300');
INSERT INTO `textbook_fund` VALUES ('8', '100', '200', '300');

-- ----------------------------
-- Table structure for `time_table`
-- ----------------------------
DROP TABLE IF EXISTS `time_table`;
CREATE TABLE `time_table` (
  `course_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(40) DEFAULT NULL,
  `teacher_name` varchar(20) NOT NULL,
  `frequency` int(11) DEFAULT NULL,
  `building` varchar(40) DEFAULT NULL,
  `classes` varchar(40) DEFAULT NULL,
  `section1` varchar(20) DEFAULT NULL,
  `section2` varchar(20) DEFAULT NULL,
  `section3` varchar(20) DEFAULT NULL,
  `section4` varchar(20) DEFAULT NULL,
  `section5` varchar(20) DEFAULT NULL,
  `Monday` varchar(45) DEFAULT NULL,
  `Tuesday` varchar(45) DEFAULT NULL,
  `Wednesday` varchar(45) DEFAULT NULL,
  `Thurday` varchar(45) DEFAULT NULL,
  `Friday` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20179 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of time_table
-- ----------------------------
INSERT INTO `time_table` VALUES ('10045', '信号与系统', '陈媛', '1', '教学楼', '公选', '1', '1', '0', '1', '1', '0', '1', '0', '0', '1');
INSERT INTO `time_table` VALUES ('10081', '软件工程', '孙昌爱', '3', '逸夫楼', '必修', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `time_table` VALUES ('10083', '工科数学分析', '储继迅', '1', '逸夫楼', '必修', '1', '1', '0', '1', '0', '1', '0', '1', '1', '1');
INSERT INTO `time_table` VALUES ('20000', '嵌入式', '何杰', '3', '机电楼', '专选', 'null', '1', '1', 'null', 'null', 'null', '1', '1', 'null', 'null');
INSERT INTO `time_table` VALUES ('20015', '模式识别', '朱超', '2', '机电楼', '专选', '1', '1', '1', '1', '0', '1', '0', '0', '1', '0');
INSERT INTO `time_table` VALUES ('20156', '编译原理', '班晓娟', '2', '机电楼', '必修', '0', '0', '1', '0', '1', '0', '1', '0', '0', '1');
INSERT INTO `time_table` VALUES ('20176', '数据结构', '王成耀', '1', '机电楼', '实验', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `time_table` VALUES ('20177', '人工智能', '王睿', '2', '教学楼', '专选', 'null', '1', 'null', '1', 'null', '1', 'null', 'null', 'null', '1');
INSERT INTO `time_table` VALUES ('20178', '计算机体系结构', '王昭顺', '2', '机电楼', '必修', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Event structure for `插入记录`
-- ----------------------------
DROP EVENT IF EXISTS `插入记录`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `插入记录` ON SCHEDULE AT '2018-06-05 09:00:49' ON COMPLETION NOT PRESERVE ENABLE DO INSERT INTO srtp(srtp_name,leader_id,teacher_name,publish_time,background,result)
    		         VALUES(srtp_name,leader_id,teacher_name,publish_time,background,result)
;;
DELIMITER ;