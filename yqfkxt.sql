/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : yqfkxt

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 09/04/2024 23:19:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '帐号',
  `pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for fenbutu
-- ----------------------------
DROP TABLE IF EXISTS `fenbutu`;
CREATE TABLE `fenbutu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `diqu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地区',
  `quezhenrenshu` int NOT NULL DEFAULT 0 COMMENT '确诊人数',
  `leijiquezhen` int NOT NULL DEFAULT 0 COMMENT '累计确诊',
  `leijisiwang` int NOT NULL DEFAULT 0 COMMENT '累计死亡',
  `leijizhiyu` int NOT NULL DEFAULT 0 COMMENT '累计治愈',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分布图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fenbutu
-- ----------------------------
INSERT INTO `fenbutu` VALUES (1, '广东', 100, 4520, 42, 4420);
INSERT INTO `fenbutu` VALUES (2, '上海', 23, 89523, 106, 81250);
INSERT INTO `fenbutu` VALUES (3, '江西', 236, 8956, 15, 7960);
INSERT INTO `fenbutu` VALUES (4, '北京', 75, 11023, 42, 9953);
INSERT INTO `fenbutu` VALUES (5, '重庆', 12, 4530, 11, 4430);
INSERT INTO `fenbutu` VALUES (6, '四川', 172, 12036, 26, 11053);
INSERT INTO `fenbutu` VALUES (7, '香港', 456, 235425, 4580, 118950);
INSERT INTO `fenbutu` VALUES (8, '江苏', 452, 55662, 42, 52110);
INSERT INTO `fenbutu` VALUES (9, '浙江', 4552, 56220, 482, 48500);

-- ----------------------------
-- Table structure for lunbotu
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图片',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '连接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES (1, '1', '/upload/20220907/e564f653-8773-4fb6-b83e-ef4e6032ff66.png', '#');
INSERT INTO `lunbotu` VALUES (2, '2', '/upload/20220907/b6ce9662-6f55-431d-8715-f1b62e23e304.png', '#');
INSERT INTO `lunbotu` VALUES (3, '3', '/upload/20220907/d8678185-71ed-4e23-9c34-1929e5ab1bf8.png', '#');
INSERT INTO `lunbotu` VALUES (4, '4', '/upload/20220907/ca597c58-c5a3-4ccf-8ba8-ceeb6ad5fbfb.png', '#');

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `biao` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '表',
  `biaoid` int NOT NULL DEFAULT 0 COMMENT '表id',
  `biaoti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `pingfen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评分',
  `pinglunneirong` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `pinglunren` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '评论' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES (2, 'xinwenxinxi', 2, '法国新冠发病率下降速度放缓 平均日增感染病例1.7万例', '5', '躺平', '666', '2022-09-07 20:40:32');
INSERT INTO `pinglun` VALUES (3, 'xinwenxinxi', 8, '天津公布9月2日、3日新增阳性感染者活动轨迹', '5', '11111', '999', '2022-11-11 15:33:31');
INSERT INTO `pinglun` VALUES (4, 'xinwenxinxi', 8, '天津公布9月2日、3日新增阳性感染者活动轨迹', '5', '1111', '999', '2022-11-11 15:35:07');
INSERT INTO `pinglun` VALUES (5, 'xinwenxinxi', 8, '天津公布9月2日、3日新增阳性感染者活动轨迹', '5', '冲冲冲', '999', '2022-12-09 08:39:52');
INSERT INTO `pinglun` VALUES (6, 'xinwenxinxi', 8, '天津公布9月2日、3日新增阳性感染者活动轨迹', '5', '1111', '111', '2022-12-10 09:45:29');

-- ----------------------------
-- Table structure for pinglunhuifu
-- ----------------------------
DROP TABLE IF EXISTS `pinglunhuifu`;
CREATE TABLE `pinglunhuifu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pinglunid` int UNSIGNED NOT NULL COMMENT '评论id',
  `biao` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '表',
  `biaoid` int NOT NULL DEFAULT 0 COMMENT '表id',
  `biaoti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `pinglunneirong` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `pinglunren` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论人',
  `huifuneirong` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回复内容',
  `huifuren` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回复人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pinglunhuifu_pinglunid_index`(`pinglunid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '评论回复' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinglunhuifu
-- ----------------------------
INSERT INTO `pinglunhuifu` VALUES (1, 1, 'xinwenxinxi', 8, '广东公布9月2日、3日新增阳性感染者活动轨迹', '哈哈', '999', '123', '999', '2022-09-07 20:22:02');
INSERT INTO `pinglunhuifu` VALUES (2, 2, 'xinwenxinxi', 2, '法国新冠发病率下降速度放缓 平均日增感染病例1.7万例', '躺平', '666', '1234', '666', '2022-09-07 20:40:42');

-- ----------------------------
-- Table structure for shoucang
-- ----------------------------
DROP TABLE IF EXISTS `shoucang`;
CREATE TABLE `shoucang`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户',
  `xwid` int NOT NULL DEFAULT 0 COMMENT '关联表id',
  `biao` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '关联表',
  `biaoti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoucang
-- ----------------------------
INSERT INTO `shoucang` VALUES (1, 'admin', 9, 'xinwenxinxi', '疫情防控科普知识 | 公众该如何配合流调工作？', '2022-09-07 20:17:46');
INSERT INTO `shoucang` VALUES (4, '999', 2, 'xinwenxinxi', '法国新冠发病率下降速度放缓 平均日增感染病例1.7万例', '2022-09-07 20:20:15');
INSERT INTO `shoucang` VALUES (5, '666', 5, 'xinwenxinxi', '上海本土0新增！国内一地132人确诊及初筛阳性，源头不明', '2022-09-07 20:40:00');
INSERT INTO `shoucang` VALUES (6, '666', 3, 'xinwenxinxi', '世卫组织：日本新增确诊连续6周全球最多', '2022-09-07 20:40:03');
INSERT INTO `shoucang` VALUES (7, '666', 16, 'xinwenxinxi', '同心战疫时 丨黄码病人如何就医？', '2022-09-07 20:40:06');
INSERT INTO `shoucang` VALUES (9, '999', 5, 'xinwenxinxi', '上海本土0新增！国内一地132人确诊及初筛阳性，源头不明', '2022-11-11 15:27:49');
INSERT INTO `shoucang` VALUES (12, '999', 8, 'xinwenxinxi', '天津公布9月2日、3日新增阳性感染者活动轨迹', '2022-11-11 15:34:55');

-- ----------------------------
-- Table structure for xinwenfenlei
-- ----------------------------
DROP TABLE IF EXISTS `xinwenfenlei`;
CREATE TABLE `xinwenfenlei`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '新闻分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xinwenfenlei
-- ----------------------------
INSERT INTO `xinwenfenlei` VALUES (1, '疫情知识');
INSERT INTO `xinwenfenlei` VALUES (2, '国内疫情');
INSERT INTO `xinwenfenlei` VALUES (3, '就医流程');
INSERT INTO `xinwenfenlei` VALUES (4, '国际疫情');

-- ----------------------------
-- Table structure for xinwenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `xinwenxinxi`;
CREATE TABLE `xinwenxinxi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `fenlei` int UNSIGNED NOT NULL COMMENT '分类',
  `tupian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图片',
  `neirong` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `dianjilv` int NOT NULL DEFAULT 0 COMMENT '点击率',
  `tianjiaren` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '添加人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xinwenxinxi_fenlei_index`(`fenlei`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '新闻信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xinwenxinxi
-- ----------------------------
INSERT INTO `xinwenxinxi` VALUES (1, '：“躺平式”抗疫下的生命悲剧', 4, '/upload/20220907/5291f379-5f52-4c9e-9007-8c39990b695e.png', '<p class=\"contentFont\">当前，全球累计新冠确诊病例数已超6亿例，死亡病例数超600万例。美国和一些西方国家抗疫&ldquo;躺平&rdquo;，导致病毒在近3年间不断变异和加速传播，一个个&ldquo;悲剧性的里程碑&rdquo;反复出现，民众不得不以自己的健康甚至生命为代价，为政府的错误决策买单。</p>\n<p class=\"contentFont\"><strong>&ldquo;要命&rdquo;的躺平：灾害级别疫情蔓延</strong></p>\n<p class=\"contentFont\">从疫情之初时任美国总统特朗普的&ldquo;解放密歇根&rdquo;，到今年8月美国疾控中心再度放宽多项新冠防疫指导内容，&ldquo;躺平&rdquo;的美国已经成为全球最大&ldquo;病毒扩散国&rdquo;。目前美国确诊病例累计超过9400万，累计死亡病例超过104万。2021年，美国人的预期寿命缩短至76.1岁，两年间减少近3岁。美国媒体批评称，美国每天因新冠疫情死亡人数成百上千，但政府仍在&ldquo;玩儿手指&rdquo;。</p>\n<p class=\"contentFont\">日本第七波疫情持续高位运行。此前，日本采取了&ldquo;躺平&rdquo;的姿态，宣布将不会出台限制出行等防疫措施。据日媒统计，日本8月累计死亡病例约7000例，单日新增死亡病例已经连续半个月超200例。日本医疗系统不堪重负，医护人员感染、药品短缺，一些医院暂停收治患者。日本多家医院声明称，这一波新冠肺炎疫情蔓延已达&ldquo;灾害级别&rdquo;。日本共同社8月发布的一份民调显示，51.9%的受访者倾向于继续加强防疫。《东京新闻》26日发表社论，指出日本现阶段放宽防疫措施或操之过急。</p>\n<p class=\"contentFont\">事实反复证明，&ldquo;躺平&rdquo;抗疫的代价是人命。正如世卫组织新冠疫情应对技术主管科霍夫所说：&ldquo;今年已有100万人死于新冠肺炎，这不叫与病毒共存。&rdquo;</p>\n<p class=\"contentFont\"><strong>&ldquo;躺平&rdquo;的&ldquo;惯性&rdquo;：一&ldquo;躺&rdquo;再&ldquo;躺&rdquo;，危机接踵而至</strong></p>\n<p class=\"contentFont\">从德尔塔毒株到不断变异的奥密克戎毒株，新冠病毒传播力越来越强，导致全球死亡病例数居高不下，公众健康和经济发展受到严重损害，美国和一些西方国家&ldquo;躺平&rdquo;抗疫难辞其咎。</p>\n<p class=\"contentFont\">早在2021年9月，匹兹堡大学微生物学与分子遗传学教授沃恩&middot;库珀（vaughn cooper）与该校流行病学、传染病与微生物学教授李&middot;哈里森（lee harrison）就在&ldquo;对话&rdquo;（conversation）网站发表文章指出，传染性更强的新冠病毒变异毒株的出现，是由于不受控制的传播。庞大的感染人群给了新冠病毒大量的变异机会。文章指出，正是由于未受控制的病毒传播，变异病毒才能打破本来极难突破的&ldquo;人口瓶颈&rdquo;，发生人际传播。</p>\n<p class=\"contentFont\">今年，本在非洲以外地区很罕见的猴痘病毒肆虐欧美。然而美国等国的应对却在重蹈覆辙。《华盛顿邮报》网站8月27日发文称，美国对下一次疫情的准备几乎完全没有。如果美国不改变方向，更多的危机会接踵而至。文章指出，应对紧急公共卫生问题，应该有类似军队一般的组织，应提供金钱、人力、清晰的指挥，认清任务的紧迫性。</p>\n<p class=\"contentFont\"><strong>&ldquo;躺平&rdquo;之后：长期新冠困扰数百万美国人</strong></p>\n<p class=\"contentFont\">美国有线电视新闻网8月25日引用布鲁金斯学会发布的报告指出，1600万18-65周岁的美国成年人受长期新冠症状困扰，其中200-400万人无法工作。长期新冠的症状包括脑雾、焦虑、抑郁、疲劳和呼吸问题等。</p>\n<p class=\"contentFont\">报告指出，截至6月，美国有1070万个工作岗位面临空缺，远高于疫情前的700万。布鲁金斯学会预计，300万人无法工作每年导致的收入缺口将达到1680亿美元。如果长期新冠病人不能快速康复，经济状况将持续恶化。</p>\n<p class=\"contentFont\">经济数据之外，长期新冠影响的是许多人的生活。美国《旧金山纪事报》网站报道，为了减轻脑雾、胸痛、耳鸣、静脉曲张等症状，许多长期新冠患者花费大量的时间和金钱求医问药，甚至绝望地求诸于未经批准的&ldquo;灵丹妙药&rdquo;。</p>\n<p class=\"contentFont\">美国黑人正在不平等地承受长期新冠带来的最沉重压力。全美广播公司网站8月28日报道说，不少长期受新冠症状困扰的美国黑人就医遭到了应付了事，甚至无视，得不到治疗的他们深陷病痛。研究人员甚至预测，黑人的预期寿命未来五年将大幅下降。波士顿医疗中心传染病医生萨布丽娜&middot;阿苏穆（sabrina assoumou）博士称，结构性种族主义先是让黑人更容易感染新冠，又让黑人面临长期新冠治疗的障碍。这些障碍包括：医疗保险覆盖不足、治疗资源缺乏，以及初级照护医师的缺乏。</p>', 0, 'admin', '2022-09-07 20:07:02');
INSERT INTO `xinwenxinxi` VALUES (2, '法国新冠发病率下降速度放缓 平均日增感染病例1.7万例', 4, '/upload/20220907/91560ff2-5596-4d9a-aaf7-cf008f1e9c9f.png', '<p data-spm-anchor-id=\"0.0.0.i1\">海外网9月5日电&nbsp;据法国公共卫生局介绍，法国新冠发病率（每个星期每10万居民中的确诊数）已经降至自2021年11月以来的最低水平，但最近下降速度明显放缓，该机构建议继续接种新冠疫苗和采取防疫措施。</p>\n<p>　　据法新社报道，法国公共卫生局发布的周报显示，法国的第七波新冠疫情数据持续下降，8月22日至28日的新学年前夕，法国几乎所有地区的新冠病毒传播连续第七个星期减弱。</p>\n<p>　　但报告称，法国新冠发病率的下降速度越来越慢，过去一个星期平均日增新冠感染病例超过1.7万例。法国的新冠住院患者数量自一个半月前开始持续减少，但最近几天下降速度显著放缓，新增重症患者数量的下降也没有前几个星期那么明显。</p>\n<p>　　法国老年人群中，60岁至79岁人口中的32.6%接种了第二剂新冠加强针，80岁及以上人口这一比例为46.2%。法国公共卫生局建议民众继续接种新冠疫苗和采取防护行动，阳性患者应自我隔离，建议在人群混合场所和封闭公共空间佩戴口罩。法国卫生部长弗朗索瓦&middot;布劳恩日前表示，法国将暴发第八波疫情，但还无法预计其规模。（海外网-巴黎-鲁佳）</p>', 6, 'admin', '2022-09-07 20:08:05');
INSERT INTO `xinwenxinxi` VALUES (3, '世卫组织：日本新增确诊连续6周全球最多', 4, '/upload/20220907/eb7629a8-7beb-4b9d-b57d-91233d28b944.png', '<p><strong>日本新冠肺炎疫情愈发严峻</strong></p>\n<p><strong>　　世卫组织统计显示，日本新增确诊病例连续6周全球最多</strong></p>\n<p>　　据日本广播协会电视台的最新统计，日本9月1日新增新冠肺炎确诊病例149906例，累计确诊19117599例。这近2000万例确诊病例中，有约一半是7月以来报告的。9月1日新增死亡病例303例，累计死亡超过4万例，达40258例。世界卫生组织8月31日发布的统计数据显示，在截至8月28日的一周内，日本新增确诊病例超过125.8万人，连续6周全球最多。</p>\n<p>　　日本厚生劳动省发布的消息显示，7月以来的第七波疫情导致日本的确诊病例数居高不下，病床使用率不断上升，多地医疗资源持续紧张。据日本广播协会电视台统计，8月下旬日本全国47个地方行政区中新冠肺炎病床使用率超过半数的一度达到43个，邻近东京的神奈川县的病床使用率高达90%。东京都的病床使用率&ldquo;正在接近极限&rdquo;。厚生劳动省的数据显示，7月上旬以来的死亡病例中95%超过60岁，&ldquo;多器官衰竭&rdquo;致死的老年患者数量较多。</p>\n<p>　　确诊病例数激增，再加上部分医疗人员被感染，导致日本医疗系统严重承压，多地普通患者的就医需求遭到挤兑。日本总务省消防厅发布的数据显示，8月8日至8月14日，日本全国共发生6747起&ldquo;急救运送困难事件&rdquo;，即救护车接到需急救对象后无法立即确定运送地点，这一数据已连续8周持续增加，连续3周刷新历史最高纪录。据日本媒体报道，神户市有孕妇感染但无法住院，不得不在家中分娩，东京都有约170名需要住院进行人工透析的感染者无法住院。</p>\n<p>　　此前，京都大学医学部附属医院等京都府14家医疗机构发表联合声明表示，疫情已达到非常严重的程度&hellip;&hellip;京都府的新冠肺炎病床实质上处于饱和状态，现在处于&ldquo;本可以挽救的生命挽救不了&rdquo;的医疗崩溃状态。声明呼吁民众继续提高警惕，做好日常防范，避免非紧急、非必要的外出。</p>\n<p>　　面对愈发严峻的疫情，日本政府出于经济等方面的考虑，第七波疫情以来没有采取限制行动的防疫措施。不仅如此，政府还不断尝试给相关防控措施&ldquo;松绑&rdquo;，例如，现在2万人的单日入境人数上限将从9月7日起升至5万人。近期，日本的球赛现场依然是人头攒动，出行客流量持续恢复，新干线满座，高速公路拥堵。日本政府还考虑放松新冠病毒感染者的外出限制，允许无症状感染者外出购物等。</p>\n<p>　　日本政府正研究最快从9月中旬开始，在全国统一修改目前掌握所有新冠病毒感染者情况的做法，把必须上报的范围限定为老年人等重症化风险较高的人群。据日本共同社报道，9月2日，日本宫城、茨城、鸟取、佐贺4个地区启动了简化&ldquo;全数掌握&rdquo;新冠肺炎确诊病例的新机制，将病例上报对象限定为老年人等高风险人群，以减轻医疗一线相关信息录入的工作负担。保健所也不再对年轻的轻症患者进行健康观察。</p>\n<p>　　日本厚生劳动大臣加藤胜信表示，在刚刚结束的暑期，政府没有采取&ldquo;行动限制&rdquo;，很多人从大城市前往日本各地探亲休假，导致感染人数不断增加。他警告说，现在各学校陆续开始新学期，疫情可能在儿童群体中进一步扩散，需要格外注意。</p>\n<p>　　日本一些有识之士批评政府抗疫&ldquo;躺平&rdquo;带来严重后果，认为这种与新冠病毒&ldquo;共存&rdquo;的路线，令本已严峻的疫情雪上加霜，使得老年人和有基础疾病的弱势群体更易成为牺牲品。</p>', 4, 'admin', '2022-09-07 20:08:45');
INSERT INTO `xinwenxinxi` VALUES (4, '韩国重症患者连续12天超过500例 南非废水检测结果预警新一波疫情', 4, '/upload/20220907/b57bb8bf-5e66-4cbb-ae39-57c6241353ef.png', '<p>中新社北京9月4日电 综合消息：世界卫生组织官网最新数据显示，截至欧洲中部时间2日18时33分，全球新冠累计确诊病例601189435例，累计死亡病例6475346例。</p>\n<p><strong>美洲：美国累计新冠死亡病例超104.7万例</strong></p>\n<p>根据美国约翰斯&middot;霍普金斯大学的统计数据，截至当地时间3日，美国累计确诊病例超过9474万例，累计死亡病例超过104.7万例。</p>\n<p><strong>亚洲：韩国重症患者连续12天超过500例</strong></p>\n<p>据韩国中央防疫对策本部当地时间4日通报，截至当天0时，韩国24小时内新增新冠确诊病例72144例，新增死亡病例79例，累计确诊病例超过2356.9万例，累计死亡病例超过2.7万例。现有重症患者548例，较前一天增加28例，已连续12天保持在500例以上。</p>\n<p>据日本NHK电视台报道，截至当地时间3日18时15分，日本全国单日新增新冠确诊病例123100例，新增死亡病例288例，累计确诊病例超过1937万例，累计死亡病例超过4万例。</p>\n<p>土耳其卫生部长科贾当地时间3日通过社交媒体表示，前一天他已得知自己的新冠病毒检测结果为阴性。科贾曾于当地时间8月31日证实，他的新冠病毒检测结果呈阳性，将通过线上会议的方式继续相关工作。</p>\n<p><strong>欧洲：英国将启动新一轮疫苗接种</strong></p>\n<p>据英国媒体当地时间3日报道，该国英格兰和苏格兰地区将从当地时间5日开始，进行新一轮新冠疫苗接种，养老院居民和工作人员等将率先接种。更大范围的接种将于当地时间12日开始，老年人和身体免疫系统较弱的人士优先接种。秋季疫苗计划还包括向所有50岁以上人士提供接种。据报道，威尔士地区已经开始为养老院居民和工作人员接种新冠疫苗，北爱尔兰地区将于当地时间19日开始接种。</p>\n<p>据俄罗斯卫星通讯社报道，俄新冠病毒疫情防控指挥部当地时间3日表示，过去24小时，俄新增新冠确诊病例51699例，新增死亡病例92例，累计确诊病例超过1968万例，累计死亡病例超过38万例。单日新增确诊病例最多的是该国首都莫斯科市，为6634例。</p>\n<p><strong>非洲：废水检测结果预警南非新一波疫情</strong></p>\n<p>据《联合早报》报道，南非国家传染病研究所当地时间2日发表报告称，截至当地时间8月23日的一周内，科学家团队在比勒陀利亚附近、约翰内斯堡以及埃库尔胡莱尼的污水处理工厂检测废水时，发现样本内的新冠病毒碎片激增。</p>\n<p>报道称，检测废水是世界各国应对新冠疫情的策略之一，可以在疫情失控之前查明病毒暴发的热点区域等要素，为所在地区发出预警。南非应为新一波新冠疫情做好准备，新一波疫情可能会在9月底或10月来临。(完)</p>', 2, 'admin', '2022-09-07 20:09:34');
INSERT INTO `xinwenxinxi` VALUES (5, '上海本土0新增！国内一地132人确诊及初筛阳性，源头不明', 2, '/upload/20220907/d5f8a144-08d5-48a7-94ed-0bf0f7098f08.png', '<p class=\"one-p\">上海市卫健委今早（9月5日）通报：2022年9月4日0&mdash;24时，<strong>上海无新增本土新冠肺炎确诊病例和无症状感染者</strong>。新增境外输入性新冠肺炎确诊病例5例和无症状感染者8例，均在闭环管控中发现。</p>\n<p class=\"one-p\"><strong>本土病例情况</strong></p>\n<p class=\"one-p\">2022年9月4日0&mdash;24时，上海无新增本土新冠肺炎确诊病例。治愈出院1例。</p>\n<p class=\"one-p\"><strong>本土无症状感染者情况</strong></p>\n<p class=\"one-p\">2022年9月4日0&mdash;24时，上海无新增本土无症状感染者。</p>\n<p class=\"one-p\"><strong>成都疫情进入平台期</strong></p>\n<p class=\"one-p\"><strong>继续三天全员核酸检测</strong></p>\n<p class=\"one-p\">9月4日晚，成都市举行疫情防控工作新闻发布会，通报当前疫情防控工作的最新情况。</p>\n<p class=\"one-p\">成都市人民政府副秘书长、市卫健委主任杨小广通报，9月3日0&mdash;24时，成都市新增本土确诊病例72例，其中2例为省外来（返）蓉闭环管理人员。新增本土无症状感染者52例，其中4例为省外来（返）蓉闭环管理人员。</p>\n<p class=\"one-p\"><img class=\"content-picture\" src=\"https://inews.gtimg.com/newsapp_bt/0/15223398799/1000\" /></p>\n<p class=\"one-p\"><strong>8月12日以来，成都市累计报告本土病例1332例，其中确诊952例，无症状感染者380例。</strong></p>\n<p class=\"one-p\">成都市新增感染者人数自8月26日开始呈现上升趋势，近三天日新增病例数维持在120至160人之间，较前期有所下降，目前疫情进入平台期。</p>\n<p class=\"one-p\">9月4日，成都市新型冠状病毒肺炎疫情防控指挥部发布通告：<strong>自2022年9月5日0时至9月7日24时，在全市范围内继续开展全员核酸检测</strong>。</p>\n<p class=\"one-p\">新津区、邛崃市在科学评估本辖区疫情防控形势基础上，逐步有序恢复正常生产生活秩序，外出和上岗须持24小时内核酸检测阴性证明，并持续做好社会面疫情防控工作。</p>\n<p class=\"one-p\">全市学校、幼儿园暂缓返校，实行在线教育。校外培训机构暂停线下培训活动。</p>\n<p class=\"one-p\">全市进出各类公共场所、乘坐公共交通工具等须持24小时内核酸检测阴性证明。坚持非必要不离蓉，确需离蓉的须持24小时内核酸检测阴性证明。来（返）蓉人员在完成&ldquo;入川即检&rdquo;后，持始发地48小时内核酸检测阴性证明乘坐公共交通。</p>\n<p class=\"one-p\"><strong>贵阳此轮疫情各类病例累计达到132例</strong></p>\n<p class=\"one-p\"><strong>感染来源未明，形势严峻</strong></p>\n<p class=\"one-p\">9月5日上午，记者从贵阳贵安新冠肺炎疫情防控新闻发布会上获悉，从阳性感染者数量看，截至9月5日10时，本轮疫情累计报告确诊病例6例，无症状感染者40例，还有初筛阳性67例，复核阳性19例，各类病例累计达到132例，较前日增加28例，单日增加量仍然处于高位。</p>\n<p class=\"one-p\">此前，2022年9月4日上午，贵阳市人民政府新闻办公室举办第三场新冠肺炎疫情防控新闻发布会。记者从新闻发布会上了解到，经贵州省疾控中心实验室基因测序明确：贵阳市本次疫情毒株为新冠病毒奥密克戎BA.2.76变异毒株，与当前西藏、成都等地流行毒株相同，该毒株相对其他毒株传播力更大、传播速度更快、隐匿性更强。</p>\n<p class=\"one-p\">从目前的疫情形势及流行病学调查情况来看，<strong>本次疫情的感染来源及传播链条尚未查明，目前多数感染者与花溪区石板镇地利农产品物流园有关，该物流园人员复杂、流动性大，有广泛的社会面活动，存在跨区域的社会面传播，疫情形势十分严峻</strong>。</p>\n<p class=\"one-p\">基于以上的这些特点，结合国内、省内的新冠疫情防控经验，开展部分城区全员核酸检测，便于尽早发现新冠肺炎病例及无症状感染者并实施精准防控，有利于居民早日恢复正常生活生产秩序。</p>', 2, 'admin', '2022-09-07 20:10:25');
INSERT INTO `xinwenxinxi` VALUES (6, '国内一地新增89例阳性！这一变异株2分钟进入宿主细胞……', 2, '/upload/20220907/0a9b61a1-ef04-4e66-a110-c78973b3413d.png', '<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>9月3日0-24时，深圳<strong>新增89例阳性病例</strong>。79例在隔离观察人员中发现，4例在重点人员筛查中发现，6例在社区筛查中发现；69例诊断为新冠肺炎确诊病例，20例诊断为新冠病毒无症状感染者。</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>3日，深圳市举行疫情防控新闻发布会。深圳市卫生健康委二级巡视员林汉城表示，深圳本轮疫情存量风险较大且持续释放，<strong>社会面传播风险依然较高。</strong></p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_mediaWrap_213jB index-module_newStyle_lg-fl \">\n<div class=\"index-module_contentImg_JmmC0\">&nbsp;</div>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>奥密克戎BA.5变异株 可2分钟进入宿主细胞</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>疫情防控发布会上，深圳市第三人民医院院长卢洪洲介绍，自2021年年底出现后，奥密克戎BA.5变异株已成为全球主要流行的变异株，近期，深圳新增本土病例感染的也是<strong>以奥密克戎BA.5变异株为主</strong>。</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>从病毒学特征来看，BA.5变异株比BA.2变异株具有更强的复制和传播能力。研究还表明，BA.5变异株<strong>可以在2分钟左右进入宿主细胞，20-30分钟左右在上呼吸道呈现指数复制，12-24小时后在感染细胞中释放成熟的病毒颗粒，</strong>也就是我们通常说的开始排毒，并通过飞沫、气溶胶等方式进行传播。</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>奥密克戎BA.5变异株 对老年人的威胁仍然很大</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>今年以来，已有天津、陕西西安、北京、上海、辽宁大连、广东珠海、海南三亚、重庆等地报告感染奥密克戎BA.5变异株及其进化分支毒株的病例。</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>就传播能力而言，张伯礼院士此前表示，奥密克戎BA.5变异株被认为是<strong>目前传播力最强的毒株</strong>。研究发现其具有比前代毒株<strong>更强的免疫逃逸能力、重复感染能力</strong>。</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>就致病能力而言，BA.5感染者病情严重程度和奥密克戎早期变异株相比没有太明显变化，<strong>但是对老年人的威胁仍然很大，尤其是没有接种过疫苗的高龄老人感染BA.5，</strong>发生重症、导致死亡的风险依然很高。</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>目前，国内已报告奥密克戎BA.5变异株的多个进化分支：</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>BA.5.1、BA.5.1.3、BA.5.2、BA.5.2.1和BF.15等。其中，BF.15变异株为BA.5.2.1的子分支，为深圳本地首次发现<strong>，</strong>其隐匿性和传播力更强。</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>须警惕奥密克戎BA.5变异株 加强防范</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>面对具有如此传播能力的奥密克戎BA.5变异株，我们应如何防范？</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p><strong>科学规范佩戴口罩</strong></p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>上海市疫情防控工作领导小组专家组成员袁政安介绍，奥密克戎BA.5变异株的传播方式主要还是飞沫传播，因此市民还是要牢记<strong>&ldquo;</strong>防疫三件套&rdquo;（戴口罩、社交距离、个人卫生）和&ldquo;防护五还要&rdquo;（口罩还要戴、社交距离还要留、咳嗽喷嚏还要遮、双手还要经常洗、窗户还要尽量开），其中规范佩戴合格的口罩仍是最有效的防控措施之一。</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>再次提醒，科学规范地佩戴口罩的方式是：戴上口罩后，两个食指在鼻翼的两侧按压，使鼻夹与面部皮肤贴合，口罩完全遮住鼻子和下巴。也建议每四小时更换一次口罩，有效发挥口罩的防护能力。</p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p><strong>疫苗接种对BA.5依然有保护作用</strong></p>\n<p>&nbsp;</p>\n</div>\n<div class=\"index-module_textWrap_3ygOc index-module_newStyle_lg-fl \">\n<p>&nbsp;</p>\n<p>7月23日，在国务院联防联控机制新闻发布会上，国家卫生健康委副主任、科研攻关组疫苗研发专班负责人、中国科学院院士曾益新介绍，有研究表明，疫苗接种者的血清针对BA.5的中和能力有所下降，但是疫苗接种所产生的细胞免疫对病毒变异的耐受性相对好一些。真实世界的结果也表明，疫苗接种对于BA.5引起的肺炎、重症和死亡依然有很好的保护作用。</p>\n</div>', 0, 'admin', '2022-09-07 20:10:56');
INSERT INTO `xinwenxinxi` VALUES (7, '黑龙江省最新疫情通报', 2, '/upload/20220907/e57ea916-9c13-46fb-8097-aa437110d0b8.png', '<p>9月4日0-24时，黑龙江省新增本土新冠肺炎确诊病例4例（大庆市2例，均在萨尔图区；绥化市2例，均在肇东市），均为无症状感染者转为确诊病例；新增本土无症状感染者162例（大庆市146例，其中萨尔图区109例、龙凤区32例、让胡路区5例；绥化市14例，其中安达市8例、肇东市6例；哈尔滨市2例，均在香坊区）。新增境外输入确诊病例1例（哈尔滨市报告），新增境外输入无症状感染者1例（哈尔滨市报告）。当日解除医学观察本土无症状感染者13例（大庆市10例，齐齐哈尔市2例，黑河市1例）。</p>\n<p>截至9月4日24时，全省现有本土确诊病例128例，本土无症状感染者880例；全省现有境外输入确诊病例16例，境外输入无症状感染者8例。</p>\n<p>我省发生本土疫情，请广大群众牢固树立&ldquo;每个人都是自己健康第一责任人&rdquo;的理念，规范接种疫苗，坚持&ldquo;戴口罩、勤洗手、多通风、不聚集&rdquo;，密切关注疫情动态，如与阳性感染者活动轨迹有交集，或7天内有国内中高风险地区、涉疫地区旅居史的，立即主动向所在社区（村屯）、工作单位报备，并配合落实防控措施。如出现发热、干咳、乏力、咽痛、嗅（味）觉减退、腹泻等症状，请勿自行服药，需佩戴口罩尽快到就近的医疗机构发热门诊排查和就诊，就诊过程中避免乘坐公共交通工具，并主动告知旅居史、接触史。</p>\n<p>各市地疫情防控指挥部要对近期涉疫地区旅居史抵（返）我省人员进行排查，强化&ldquo;大数据+网格化&rdquo;，精准掌握和管控相关风险人员，排查出的风险人员评估感染风险后要第一时间落实赋码、核酸检测、隔离管理和健康监测等分类管控措施。</p>\n<p>来源：黑龙江省卫生健康委员会</p>', 0, 'admin', '2022-09-07 20:11:22');
INSERT INTO `xinwenxinxi` VALUES (8, '天津公布9月2日、3日新增阳性感染者活动轨迹', 2, '/upload/20220907/ccae4e09-5eb9-4560-802f-e458e30744c7.png', '<p><a href=\"https://www.chinanews.com.cn/\" target=\"_blank\" rel=\"noopener\">中新网</a>天津9月5日电 (杨子炀)记者从天津市疫情防控指挥部获悉，经多方流调，2022年9月2日、3日天津新增的阳性感染者活动轨迹基本确定，其中涉及到的主要区域和场所予以公布。</p>\n<p>　　8月30日6:33-6:37穆记果子铺(红桥区南头窑大街)</p>\n<p>　　7:40-22:00琦王花生店(河西区黑牛城道新业广场)</p>\n<p>　　8:00-8:10翠水便利店(河西区梅江街道翠水园)</p>\n<table class=\"adInContent\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\n<tbody>\n<tr>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<p>　　8:38-8:45香酥鸡蛋灌饼早点摊(河西区万科水晶城门口)</p>\n<p>　　11:20-11:35华润万家(河西区黑牛城道新业广场)</p>\n<p>　　17:38-17:45旺福乐连锁便利超市(河西区沂山路)</p>\n<p>　　8月31日和9月1日星煜未来教育体验中心(河西区天涛园)</p>\n<p>　　8月31日至9月2日河东万达写字楼A座(河东区津滨大道)</p>\n<p>　　8月31日7:15-7:40天津市第二医院(金钢桥院区)</p>\n<p>　　8:00-8:45地铁5号线-地铁4号线(淮河道站-成林道站-泰昌路站)</p>\n<p>　　8:30-18:00天津信实工程咨询有限公司(西青区梓苑路梦金园北楼)</p>\n<p>　　8:30-8:40香酥鸡蛋灌饼早点摊(河西区万科水晶城门口)</p>\n<p>　　10:20-11:20南开区黄河道338号力神大通传媒大厦</p>\n<p>　　11:20-11:45乐购超市(红桥区怡华路)</p>\n<p>　　11:54-12:30张亮麻辣烫(西青区迎水道华苑店)</p>\n<p>　　14:30-14:45红桥区中心小学正门(红桥区红旗路)</p>\n<p>　　14:50-15:10南开区广开街菜市场</p>\n<p>　　16:24-16:3318:19-18:22SlowCity慢城(河东区津滨大道万达广场)</p>\n<p>　　18:30-18:47薛记炒货(河西区万象城)</p>\n<p>　　18:44-19:25682公交车(解放南路地铁站站-双港新家园站)</p>\n<p>　　19:00-20:07梨花牛肉汤(河西区万象城)</p>\n<p>　　20:13-20:38华润Ole精品超市(河西区万象城)</p>\n<p>　　20:50-21:10地铁6号线(文化中心站-解放南路站)</p>\n<p>　　9月1日0:00-2：30婕婕娱乐KTV(河东区十一经路天星河畔广场)</p>\n<p>　　7:15-7:40天津市第二医院(金钢桥院区)</p>\n<p>　　7:26-8:26地铁6号线-地铁3号线(景荔道站-红旗南路站-华苑站)</p>\n<p>　　7:40-22:00琦王花生(河西区黑牛城道新业广场)</p>\n<p>　　8:30-18:00天津信实工程咨询有限公司(西青区梓苑路梦金园北楼)</p>\n<p>　　9:15-9:30河北区铁东路街社区卫生服务中心</p>\n<p>　　11:50-12:20河北区幸福道商业街(幸福道-富强道段)</p>\n<p>　　15:00-16:30河西区浯水道天涛园器材区</p>\n<p>　　16:40-16:50河西区沂山路爱湖里3号楼快递点</p>\n<p>　　18:04-19:03地铁3号线-地铁6号线(华苑站-红旗南路站-景荔道站)</p>\n<p>　　18:40-18:50旺福乐生鲜超市(河西区浯水道天涛园)</p>\n<p>　　9月2日6:40-7:00景江小吃店(河北区正义道)</p>\n<p>　　7:20-7:45亚惠美食(河西区大沽南路新生活广场)</p>\n<p>　　7:45-20:00琦王花生店(河西区南楼华润万家)</p>\n<p>　　8:00-8:45地铁5号线-地铁4号线(淮河道站-成林道站-泰昌路站)</p>\n<p>　　8:55-9:12304路公交车(双港新家园站-香堤苑站)</p>\n<p>　　9:21-9:27普泰生活超市(津南区梨双路普泰花园)</p>\n<p>　　天津市疾控部门提醒，与发布病例轨迹有交集人员，请立即主动向社区、单位或辖区疾控部门报告，配合做好集中隔离、居家隔离、健康监测、核酸检测等各项防控措施。(完)</p>', 22, 'admin', '2022-09-07 20:11:50');
INSERT INTO `xinwenxinxi` VALUES (9, '疫情防控科普知识 | 公众该如何配合流调工作？', 1, '/upload/20220907/0c7cd265-7b5b-4a2f-b27a-eca743943d6f.png', '<p>&ldquo;流调&rdquo;是流行病学调查的简称，它是控制疫情的一项关键措施。那么，公众该如何配合流调工作呢?</p>\n<p>接到流调电话怎么办？流调对象包括疑似病例、确诊病例、无症状感染者，以及与以上人员及可疑污染环境有过密切接触或共同暴露的人员。被流调或被判为密接者并不意味着一定会感染，请保持镇定，仔细回顾近期行程并如实相告。</p>\n<p>流调时，都会问些什么？个人基本信息，包括姓名、年龄、住址等；新冠疫苗接种记录，比如接种时间、疫苗种类、剂次等；健康状况，近期是否有不适，是否就医，是否有发热、干咳、乏力、嗅觉减退或丧失、味觉减退或丧失、鼻塞、流涕、咽痛、结膜炎、肌痛、腹泻等症状；近期旅居史，既往病史等；病例密切接触史，包括共同就餐、同乘公共交通、居家成员等。流调获得的所有个人信息会被严格保密，不会用于与疫情无关的其他用途。如果未能及时接听到流调电话，或者有重要信息需要补充，公众还可以回拨电话。</p>\n<p>如何详细回忆行程？查阅记录痕迹，通话记录、微信聊天记录、电子支付记录、照片、日志等，都可帮助记起出行、社交情况。事件联想，近期发生哪些印象深刻的事件，以此为起点回忆前后几日接触的人、去过的地方。习惯中的例外，除了惯常的生活工作之外，近期有无例外事件或新结识的人。共同回忆，家人、朋友、同事、同学以及有共同出行史的人员，可请他们帮助回忆。</p>\n<p>需要注意的是，真正的流调人员不会询问个人财产等与疫情传播不相关的问题，不会索要银行卡号、密码或验证码；不会以任何理由发送二维码、链接，不会要求加入QQ群或微信群，不会推销产品要求付费；流调电话基本都是本地手机号或固话，不可能是境外电话，流调电话可以回拨，诈骗电话基本不可正常回拨</p>', 8, 'admin', '2022-09-07 20:12:50');
INSERT INTO `xinwenxinxi` VALUES (10, '十问十答——涉疫情防控法律知识，你了解多少？', 1, '/upload/20220907/1dd20f7b-ebc9-4e71-87f9-69fb43201a32.png', '<p class=\"contentFont\">涉疫情防控</p>\n<p class=\"contentFont\">法律知识</p>\n<p class=\"contentFont\">Q</p>\n<p class=\"contentFont\">纳入核酸检测范围的人群，无故不参加统一组织的核酸检测，会承担何种法律责任？</p>\n<p class=\"contentImage\">&nbsp;</p>\n<p class=\"contentFont\">A</p>\n<p class=\"contentFont\">违反《传染病防治法》第12条规定的法定义务。这是拒不执行人民政府在紧急状态情况下依法发布的决定、命令的行为，属于妨害社会管理的行为，根据《治安管理处罚法》第五十条的规定，按照不同情节，可处以警告、罚款、拘留等治安管理处罚；违反传染病防治法的规定，拒绝执行卫生防疫机构依照传染病防治法提出的预防、控制措施的，引起新冠病毒传播或者有传播严重危险的，按《刑法》第三百三十条妨害传染病防治罪定罪处罚。</p>\n<p class=\"contentImage\">&nbsp;</p>\n<p class=\"contentFont\">Q</p>\n<p class=\"contentFont\">出门不戴口罩，会承担法律责任吗？</p>\n<p class=\"contentImage\">&nbsp;</p>\n<p class=\"contentFont\">A</p>\n<p class=\"contentFont\">居民乘坐公共交通工具、出入小区大门等公共场所，拒不配合管理人员的劝导佩戴口罩；或者，中高风险地区的居民外出拒不配合管理人员的劝导不戴口罩，首先承担民事责任。按照《传染病防治法》第七十七条规定，单位和个人违反本法规定，导致传染病传播、流行，给他人人身、财产造成损害的，应当依法承担民事责任。其次承担行政责任。这是拒不执行人民政府在紧急状态情况下依法发布的决定、命令的行为，属于妨害社会管理的行为，根据《治安管理处罚法》第五十条的规定，处警告或者二百元以下罚款；情节严重的，处五日以上十日以下拘留，可以并处五百元以下罚款。最后，违反传染病防治法的规定，拒绝执行卫生防疫机构依照传染病防治法提出的预防、控制措施的，引起新冠病毒传播或者有传播严重危险的，按《刑法》第三百三十条妨害传染病防治罪定罪处罚。处三年以下有期徒刑或者拘役；后果特别严重的，处三年以上七年以下有期徒刑。</p>\n<p class=\"contentImage\">&nbsp;</p>\n<p class=\"contentFont\">Q</p>\n<p class=\"contentFont\">出入小区、超市、菜场等有关场所，拒不配合健康信息核查，拒绝配合身份登记规定，会承担何种法律责任？</p>\n<p class=\"contentImage\">&nbsp;</p>\n<p class=\"contentFont\">A</p>\n<p class=\"contentFont\">这是拒不执行人民政府在紧急状态情况下依法发布的决定、命令的行为，属于妨害社会管理的行为，根据《治安管理处罚法》第五十条的规定，处警告或者二百元以下罚款；情节严重的，处五日以上十日以下拘留，可以并处五百元以下罚款。引起新型冠状病毒传播或者有传播严重危险的，按《刑法》第三百三十条妨害传染病防治罪定罪处罚。</p>', 1, 'admin', '2022-09-07 20:13:16');
INSERT INTO `xinwenxinxi` VALUES (11, '科普丨疫情防控，这些知识你需要了解！', 1, '/upload/20220907/de4254d3-2590-4306-84aa-5a76b6c91712.png', '<p>疫情防控</p>\n<p>疫情防控很重要，正确认识疫情。目前常态化疫情防控工作仍在持续开展，面对严峻复杂的疫情防控形势，请大家坚决克服麻痹思想、厌战情绪、侥幸心理和松劲心态，保持足够的重视，保持良好的心态，牢固树立常态化防控意识，做到疫情防控不松懈。疫情防控，这些防疫小知识你需要了解。</p>\n<p>如何保护自己和家人的健康？</p>\n<p>尽量减少外出活动。减少走亲访友和聚餐，尽量在家休息。减少到人员密集的公共场所活动，尤其是相对封闭，空气流动差的场所，例如公共浴池、酒吧、影院、网吧、KTV、商场、车站、机场等</p>', 3, 'admin', '2022-09-07 20:14:04');
INSERT INTO `xinwenxinxi` VALUES (12, '【防疫宣传】疫情防控知识小课堂', 1, '/upload/20220907/b37304db-71c4-4eaa-bb35-ade9d60098e5.png', '<p>鉴于当前疫情防控形势反复，请继续紧绷疫情防控这根弦，不放松警惕、不麻痹大意、不消极应付。认真学习防疫期间的防疫小知识</p>\n<p>1.积极接种新冠疫苗</p>\n<p>接种疫苗是预防新冠肺炎最好的办法，有助于建立群体免疫屏障，减缓并阻断疾病流行，保护个人和家人的健康。请家长严格按照免疫程序，按时依次接种疫苗。</p>\n<p>2.积极参与核酸检测配合做好核酸检测，并及时汇报检测情况做好家庭成员日常健康监测，如发现发热、干咳、乏力、腹泻等症状，要佩戴好口罩，及时到附近医疗机构进行排查与诊疗，并第一时间报备。</p>\n<p>3.不前往中高风险地区</p>\n<p>减少聚集性聚餐、聚会。如特殊情况必须外出要及时报备，禁止前往中高风险地区。请务必做好个人防护，并如实告知去向。</p>\n<p>4.做到勤开窗通风</p>\n<p>开窗通风，能有效降低空间内的细菌滋生，通风时长要达到30分钟。一般来说，每天开窗2~3次，每次不少于半小时。</p>\n<p>5.认真全面清洁消毒</p>\n<p>外出归来，清洁到位，当我们外出回家时，进门后进行彻底的清洁，防止将病毒携带至家中。我们需要记住，外出回家后，一定不能忘记洗手，并且用抗菌洗手液或肥皂在流动清水下进行，每个步骤最少实施五次，每次洗手时需要十至十五秒。</p>', 4, 'admin', '2022-09-07 20:15:02');
INSERT INTO `xinwenxinxi` VALUES (13, '【疫情防控】疫情期间就诊流程明白纸', 3, '/upload/20220907/af25d86c-c004-454a-9d67-f07628456e50.png', '<p><strong>一、急诊患者就医流程</strong></p>\n<p>1.心梗、中风、骨折、食物中毒等急诊患者及新生儿、孕产妇等直接拨打120急救电话。</p>\n<p>2.市医疗紧急救援中心接到电话后，安排救护车转运至附近具备急救能力的医疗机构（城区有市人民医院、市中医院、皖卫附院、市四院、世立医院等）就医。</p>\n<p>3.医疗机构接诊后，立即施救，同时开展抗原检测、核酸检测（快检及普通检测）。</p>\n<p>&nbsp;</p>\n<p><strong>二、非急诊患者就医流程</strong></p>\n<p><strong>（一）隔离点患者：</strong></p>\n<p>1.患者出现发热、上呼吸道症状、腹泻、皮肤过敏等轻症时，由驻点医生做好防护后，上门服务或通过电话、微信诊疗。</p>\n<p>2.仅需配药的，由工作人员（志愿者）将药物送至门口。</p>\n<p>3.确需至医疗机构就医的，由区指挥部安排专车送医，就医结束后，再由区指挥部安排车辆接回隔离点继续集中隔离，全程做好闭环管理。</p>\n<p><strong>（二）封控区、管控区、静态管理地区患者：</strong></p>\n<p>1.乡镇（街道）安排属地乡镇卫生院（社区卫生服务中心）承担普通症状上门就医服务并公布服务电话。</p>\n<p>2.居民出现发热、上呼吸道症状、腹泻、皮肤过敏等轻症，拨打公布的服务电话。</p>\n<p>3.乡镇卫生院（社区卫生服务中心）安排人员上门服务或电话问诊。仅需配药的，由工作人员（志愿者）送药。</p>\n<p>4.就医结束后，再由区指挥部安排车辆接回封控区、管控区。就医全程做好闭环管理，同时做好与医疗机构的信息沟通。</p>\n<p>&nbsp;</p>\n<p><strong>三、血液透析、放化疗等特殊患者就医流程</strong></p>\n<p><strong>1.患者向所在乡镇（街道）报备。</strong></p>\n<p><strong>2.乡镇（街道）安排车辆送医，并向区指挥部报备。</strong></p>\n<p><strong>3.就医结束后，再由乡镇（街道）安排车辆将患者送回。</strong>全程做好闭环管理，并同时做好与医疗机构信息对接沟通。</p>\n<p>&nbsp;</p>\n<p>所有医疗机构均要落实首诊负责制，切实保障广大患者基本就医需求并创造良好诊疗环境。严禁拒诊、推诿病人。对违反就医流程，造成疫情传播或影响群众生命健康的，将依法依规追究责任。</p>', 2, 'admin', '2022-09-07 20:15:49');
INSERT INTO `xinwenxinxi` VALUES (14, '成都卫健委发布就医流程：不得推诿急危重症患者', 3, '/upload/20220907/495c42b1-26b7-433e-aebf-184d7989c708.png', '<p>　四川在线记者从成都市卫健委获悉，为满足全市人民群众在全员核酸检测期间的就医需求，4日晚上，成都市卫健委发布了全员核酸检测期间就医流程，全文如下：</p>\n<p>　　一、 总体要求</p>\n<p>　　(一) 坚持人民至上、生命至上理念。</p>\n<p>　　(二)全市医疗机构正常运转，维护合理有序就医秩序。</p>\n<p>　　(三)严格执行首诊负责制和急危重症抢救制度。各医疗机构及时转运、妥善处置急危重症患者，畅通急救绿色通道。</p>\n<p>　　(四)不得以查验核酸阴性证明作为急危重症患者进出小区就医、转运病人和接诊的限制，任何医疗机构不得以疫情防控为由延误治疗或推诿急危重症患者。</p>\n<p>　　(五)对不能排除新冠病毒感染但急需紧急救治的急危重症患者，医疗机构在过渡手术室、过渡病房等缓冲区域积极抢救，同步开展核酸检测，排除新冠感染后转入普通病房。</p>\n<p>　　(六)所有发热门诊原则上不停诊，重症医学、血液透析、肿瘤放(化)疗、手术室、产科、新生儿科等重点科室要连续性提供服务。</p>\n<p>　　(七)社区卫生服务中心等基层医疗卫生机构应确保基本诊疗(配药)服务连续稳定。</p>\n<p>　　(八)医疗机构、药店等根据辖区居民用药需求，确保药品供应稳定。</p>\n<p>　　(九)街道社区根据人口底数，组建转运队伍，配备转运车辆，协助预约和闭环转运就诊。</p>\n<p>　　二、分类就医：不同人员适用不同就医流程</p>\n<p>　　(一)高中风险区人员</p>\n<p>　　1.优先联系驻点医疗队解决就医需求，医护人员驻点值守，提供常见病、慢性病诊治。</p>\n<p>　　2.确需外出就诊的患者，就医前需提前联系社区及定点医疗机构，由社区防控部门组织统一就诊。</p>\n<p>　　3.所在社区做好车辆安排、转运就诊等协调、指导工作;外出就诊患者严格实行闭环管理，诊疗结束后，由社区安排车辆接回。</p>\n<p>　　(二)除高中风险区外人员</p>\n<p>　　凭24小时核酸检测阴性报告、健康码绿码在小区登记报备后，自行就近前往本区域的医疗机构就诊。就医结束后&ldquo;两点一线&rdquo;尽快返回居住地，并在小区登记销账。</p>\n<p>　　(三)重点人群</p>\n<p>　　1.急危重症患者。由本人及社区联系120救护车转运就诊;如联系不到120救护车，所在社区应安排转运车就诊。</p>\n<p>　　2.血液透析、肿瘤放(化)疗患者按照&ldquo;原就诊医院优先救治&rdquo;原则进行就诊，或由原就诊医院负责协调安排后续治疗。</p>\n<p>　　3.有急诊抢救医疗需求的孕产妇，由本人或家属拨打120急救电话，同时联系社区工作人员;由社区工作人员对接120救护车及对应的定点医疗机构，明确告知120转送医院。</p>\n<p>　　三、配药购药服务</p>\n<p>　　(一)可通过社区安排的志愿者到社区卫生服务中心、二三级医院等医疗机构等代配药，或到附近营业的零售药店代购药。</p>\n<p>　　(二)医疗机构优化服务流程，开辟绿色通道，为患有多种疾病的慢性病患者提供&ldquo;一站式&rdquo;长期处方服务。</p>\n<p>　　(三)可通过各互联网医院等方式进行复诊配药。</p>\n<p>　　记者：石小宏</p>', 1, 'admin', '2022-09-07 20:16:27');
INSERT INTO `xinwenxinxi` VALUES (15, '疫情期间看病怎么办？贵阳市发布就医指南', 3, '/upload/20220907/3ac3adca-8295-4558-94c9-b85f2c7a382d.png', '<p>多彩贵州网讯（本网记者 程曦 陈李育）目前，贵阳市部分区域临时静态管理。针对疫情期间群众看病就医急难愁盼问题，9月5日，记者从贵阳贵安新冠肺炎疫情防控新闻发布会上获悉，目前贵阳市静态管理区域内定点医疗机构保持对不同类型患者院前急救和院内急诊正常开放，全力保障群众基本就医需求。</p>\n<center><img src=\"http://www.gog.cn/zonghe/pic/003/043/917/00304391768_f524c6b2.jpg\" /></center>\n<p>新闻发布会现场</p>\n<p>　　对急危重症患者，由患者家属、所在社区或集中医学观察点人员拨打120急救电话，由120救护车转运至急危重症患者救治定点医院进行救治。同时，开辟急危重症患者救治和核酸检测绿色通道，及时开展应急医疗救治，快速出具核酸检测结果。</p>\n<p>　　对于确诊和无症状感染的孕产妇由贵州省定点医疗机构&ldquo;贵阳市公共卫生救治中心下坝院区&rdquo;进行诊治；涉疫孕产妇由市级定点医疗机构&ldquo;贵阳市第一人民医院龙洞堡院区&rdquo;进行诊治；普通孕产妇在贵阳市范围内各级各类医疗机构均可就诊。任何医疗不得以疫情防控为由拒诊、推诿或延误治疗，要全力确保孕产妇和新生儿安全。如果孕产妇需紧急救治时，120绿色通道优先安排孕产妇转运，孕产妇本人或家属可直接拨打120急救电话，并及时告知所在社区(村、居)的负责人，协助联系120救护车送至医院诊治。</p>\n<p>　　对慢性病患者，采取预约诊疗、分时段就医、线上咨询、长期处方等服务措施；对必要的检验检查和常规复查等，指导患者在就近的医疗机构进行，加强家庭医生团队对慢性病患者的日常管理，通过电话随访等多种方式加强远程指导。</p>', 1, 'admin', '2022-09-07 20:16:55');
INSERT INTO `xinwenxinxi` VALUES (16, '同心战疫时 丨黄码病人如何就医？', 3, '/upload/20220907/a1fe1be7-cfc6-4ee6-b88d-13862d8e9ca1.png', '<div class=\"jsx-2558377382 text\">贵阳市疫情发生后，各大医院加紧人力调配、保障抗疫物资供给，全力抗击疫情的同时贵阳市各大医院优化诊治流程，全力保障市民正常就医。</div>\n<div class=\"jsx-2558377382 margin20\">\n<div class=\"jsx-2558377382 pic\" data-index=\"1\" data-boss=\"pic&amp;modular=content\">\n<div class=\"jsx-2558377382 responsive-image\">\n<div class=\"jsx-2558377382 sizer\">&nbsp;</div>\n<div class=\"jsx-2558377382 image-wrap\" data-boss-expo=\"pic&amp;modular=content\" data-boss-once=\"true\"><img class=\"jsx-2558377382\" src=\"https://inews.gtimg.com/newsapp_bt/0/15222854070/641\" alt=\"\" /></div>\n</div>\n</div>\n</div>\n<div class=\"jsx-2558377382 text\">贵州省人民医院加强了人员物资调配、优化诊治流程，坚决保证危、急、重症病人能够得到及时救治，同时开放24小时核酸快速检测，对于发热、急诊样本和健康码异常样本，做到最快2小时出具报告。省医就诊市民表示，&ldquo;直接在这边取号现场挂号的，就跟平时没什么两样。&rdquo;</div>\n<div class=\"jsx-2558377382 margin20\">\n<div class=\"jsx-2558377382 pic\" data-index=\"2\" data-boss=\"pic&amp;modular=content\">\n<div class=\"jsx-2558377382 responsive-image\">\n<div class=\"jsx-2558377382 sizer\">&nbsp;</div>\n<div class=\"jsx-2558377382 image-wrap\" data-boss-expo=\"pic&amp;modular=content\" data-boss-once=\"true\"><img class=\"jsx-2558377382\" src=\"https://inews.gtimg.com/newsapp_bt/0/15222854063/641\" alt=\"\" /></div>\n</div>\n</div>\n</div>\n<div class=\"jsx-2558377382 text\">针对健康码异常的危急重症病人，省医在急诊科和ICU设置了&ldquo;隔离抢救室&rdquo;。贵州省人民医院急诊科副主任医师黄佳表示，危重病人到急诊科以后就在急诊科的&ldquo;隔离抢救室&rdquo;，在隔离抢救室进行治疗，等待核酸检测结果。</div>\n<div class=\"jsx-2558377382 margin20\">\n<div class=\"jsx-2558377382 pic\" data-index=\"3\" data-boss=\"pic&amp;modular=content\">\n<div class=\"jsx-2558377382 responsive-image\">\n<div class=\"jsx-2558377382 sizer\">&nbsp;</div>\n<div class=\"jsx-2558377382 image-wrap\" data-boss-expo=\"pic&amp;modular=content\" data-boss-once=\"true\"><img class=\"jsx-2558377382\" src=\"https://inews.gtimg.com/newsapp_bt/0/15222854088/641\" alt=\"\" /></div>\n</div>\n</div>\n</div>\n<div class=\"jsx-2558377382 text\">在贵州医科大学附属医院急诊楼门口，医院搭建两个临时隔离抢救间，一位健康码显示为黄码的患者正在进行检查，由于出现肾功能衰竭和发烧症状，患者被送到贵医附院就诊，院方立即对其开展核酸检测和常规检查。</div>\n<div class=\"jsx-2558377382 margin20\">\n<div class=\"jsx-2558377382 pic\" data-index=\"4\" data-boss=\"pic&amp;modular=content\">\n<div class=\"jsx-2558377382 responsive-image\">\n<div class=\"jsx-2558377382 sizer\">&nbsp;</div>\n<div class=\"jsx-2558377382 image-wrap\" data-boss-expo=\"pic&amp;modular=content\" data-boss-once=\"true\"><img class=\"jsx-2558377382\" src=\"https://inews.gtimg.com/newsapp_bt/0/15222854075/641\" alt=\"贵州医科大学附属医院急诊医学科主任 伍国锋\" /></div>\n</div>\n</div>\n<div class=\"jsx-2558377382 desc\">贵州医科大学附属医院急诊医学科主任 伍国锋</div>\n</div>\n<div class=\"jsx-2558377382 text\">贵州医科大学附属医院急诊医学科主任伍国锋介绍，&ldquo;扫码异常、病史不清楚、轨迹情况不明、昏迷或大脑疾病不能言语、明确的风险区旅居史等风险患者，一律进入临时隔离抢救间，抢救室医师护士到达抢救后，生命体征稳定且确定患者情况后转入相应学科。核酸阳性病例闭环转入指定病房或将军山医院，情况依然不明的转入隔离病房。&rdquo;</div>', 5, 'admin', '2022-09-07 20:17:41');

-- ----------------------------
-- Table structure for yiqingshangbao
-- ----------------------------
DROP TABLE IF EXISTS `yiqingshangbao`;
CREATE TABLE `yiqingshangbao`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系电话',
  `shangbaoneirong` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '上报内容',
  `shangbaoyonghu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '上报用户',
  `huifuneirong` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回复内容',
  `zhuangtai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上报时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '疫情上报' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yiqingshangbao
-- ----------------------------
INSERT INTO `yiqingshangbao` VALUES (1, '小红', '12358265910', '12345', '999', '12345', '已回复', '2022-09-07 20:20:23');
INSERT INTO `yiqingshangbao` VALUES (2, '小王', '13425003321', '测试疫情上报', '666', '感谢您的上报！', '已回复', '2022-09-07 20:41:03');
INSERT INTO `yiqingshangbao` VALUES (3, '小红', '12358265910', '11111', '999', '', '待回复', '2022-11-03 16:10:08');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `mima` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `xingming` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `diqu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地区',
  `shoujihao` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `youxiang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮箱',
  `touxiang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '999', '999', '小红', '女', '广东', '12358265910', '8230@qq.com', '/upload/20220907/bdb44ecf-2d61-4187-ae6c-46fa44b859be.png');
INSERT INTO `yonghu` VALUES (2, '666', '666', '小王', '男', '上海', '13425003321', '323223@qq.com', '/upload/20220907/818d2099-3ae8-419a-9b0e-d878ff3c58a5.png');
INSERT INTO `yonghu` VALUES (3, '1111', '1111', '1111', '男', '广州', '12311111111', '', '/upload/20221210/c63ca36c-7228-4e5f-ba3c-abb21196f39d.jpg');
INSERT INTO `yonghu` VALUES (4, '111', '111', '111', '', '广州', '12455454511', '', '/upload/20221210/7bf90f1a-938d-4dcf-b838-23854ccf8212.jpg');

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站名称',
  `wangzhi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '友情链接' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES (1, '百度', 'http://www.baidu.com');
INSERT INTO `youqinglianjie` VALUES (2, '谷歌', 'http://www.google.cn');
INSERT INTO `youqinglianjie` VALUES (3, '新浪', 'http://www.sina.com');
INSERT INTO `youqinglianjie` VALUES (4, 'QQ', 'http://www.qq.com');
INSERT INTO `youqinglianjie` VALUES (5, '网易', 'http://www.163.com');

SET FOREIGN_KEY_CHECKS = 1;
