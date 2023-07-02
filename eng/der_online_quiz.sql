/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.126.150
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 192.168.126.150:3306
 Source Schema         : eng

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 07/06/2023 17:48:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for der_online_quiz
-- ----------------------------
DROP TABLE IF EXISTS `der_online_quiz`;
CREATE TABLE `der_online_quiz`  (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题目',
  `question_type` int(10) NULL DEFAULT NULL COMMENT '题型',
  `difficulty` int(10) NULL DEFAULT NULL COMMENT '难度',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `answer_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标准答案',
  `explanation` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '解析',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生答案',
  `graded_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '老师阅卷',
  `score` decimal(5, 2) NULL DEFAULT NULL COMMENT '考试成绩',
  PRIMARY KEY (`answer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线上答题成绩查询' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of der_online_quiz
-- ----------------------------
INSERT INTO `der_online_quiz` VALUES (1, NULL, '我有多帅', 1, 0, '请回答我是不是很帅', NULL, NULL, NULL, '0', NULL);
INSERT INTO `der_online_quiz` VALUES (2, NULL, '热狗好不好吃', 1, 0, '好不好吃', NULL, NULL, '', '0', NULL);

-- ----------------------------
-- Table structure for der_online_quiz_demo
-- ----------------------------
DROP TABLE IF EXISTS `der_online_quiz_demo`;
CREATE TABLE `der_online_quiz_demo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题目',
  `question_type` int(10) NULL DEFAULT NULL COMMENT '题型',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案',
  `quiz_id` int(11) NULL DEFAULT NULL COMMENT '考试id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线上答题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of der_online_quiz_demo
-- ----------------------------
INSERT INTO `der_online_quiz_demo` VALUES (1, '张三', '我有多帅', 1, '请回答我是不是很帅', NULL, NULL);
INSERT INTO `der_online_quiz_demo` VALUES (2, NULL, '热狗好不好吃', 1, '好不好吃', NULL, NULL);

-- ----------------------------
-- Table structure for der_payment
-- ----------------------------
DROP TABLE IF EXISTS `der_payment`;
CREATE TABLE `der_payment`  (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `payment_date` date NULL DEFAULT NULL COMMENT '缴费日期',
  `payment_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '缴费金额',
  `payment_method` int(11) NULL DEFAULT NULL COMMENT '支付方式',
  `payment_status` int(11) NULL DEFAULT 0 COMMENT '支付状态',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `dept_id` bigint(11) NULL DEFAULT NULL COMMENT '专业id',
  PRIMARY KEY (`payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '缴费表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for der_question_bank
-- ----------------------------
DROP TABLE IF EXISTS `der_question_bank`;
CREATE TABLE `der_question_bank`  (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题目',
  `question_type` int(10) NULL DEFAULT NULL COMMENT '题型',
  `difficulty` int(10) NULL DEFAULT NULL COMMENT '难度',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `answer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标准答案',
  `explanation` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '解析',
  `creation_date` date NULL DEFAULT NULL COMMENT '创建日期',
  `created_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试题录入表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of der_question_bank
-- ----------------------------
INSERT INTO `der_question_bank` VALUES (1, '我有多帅', 1, 0, '请回答我是不是很帅', NULL, NULL, NULL, NULL);
INSERT INTO `der_question_bank` VALUES (2, '热狗好不好吃', 1, 0, '好不好吃', '好吃', NULL, '2023-06-14', '李某');
INSERT INTO `der_question_bank` VALUES (3, '你好', 2, 0, '你好不好', '你不好', NULL, NULL, NULL);
INSERT INTO `der_question_bank` VALUES (4, '我是谁', 2, 1, '我是谁', '超人', NULL, '2023-06-14', NULL);
INSERT INTO `der_question_bank` VALUES (5, '如果还是然后', 2, 2, '地方税收返还', '粉红色', NULL, '2023-06-21', NULL);
INSERT INTO `der_question_bank` VALUES (6, '得分回复', 1, 1, '的护身符根据德国海军', '房管局帝国海军', '的发挥', '2023-06-07', NULL);

-- ----------------------------
-- Table structure for der_registration
-- ----------------------------
DROP TABLE IF EXISTS `der_registration`;
CREATE TABLE `der_registration`  (
  `registration_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `registration_date` date NULL DEFAULT NULL COMMENT '报名日期',
  `course` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报名课程',
  `registration_fee` decimal(10, 2) NULL DEFAULT NULL COMMENT '报名费用',
  `contact_person_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人姓名',
  `contact_person_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `dept_id` bigint(11) NULL DEFAULT NULL COMMENT '专业id',
  PRIMARY KEY (`registration_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生报名表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of der_registration
-- ----------------------------
INSERT INTO `der_registration` VALUES (1, '李某', '2023-06-21', NULL, 234.00, '李', NULL, NULL, NULL, NULL);
INSERT INTO `der_registration` VALUES (2, '张张', '2023-06-14', NULL, NULL, NULL, NULL, NULL, 100, NULL);

-- ----------------------------
-- Table structure for der_student_information
-- ----------------------------
DROP TABLE IF EXISTS `der_student_information`;
CREATE TABLE `der_student_information`  (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `gender` int(11) NULL DEFAULT NULL COMMENT '性别',
  `date_of_birth` date NULL DEFAULT NULL COMMENT '出生日期',
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `date_of_admission` date NULL DEFAULT NULL COMMENT '入学日期',
  `student_class` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'der_student_information', '学生信息表', NULL, NULL, 'DerStudentInformation', 'crud', 'com.eng.sys', 'sys', 'information', '学生信息', 'l', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15', NULL);
INSERT INTO `gen_table` VALUES (2, 'der_question_bank', '试题录入表', NULL, NULL, 'DerQuestionBank', 'crud', 'com.eng.sys', 'sys', 'bank', '试题录入', 'l', '0', '/', '{\"parentMenuId\":\"2001\"}', 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17', NULL);
INSERT INTO `gen_table` VALUES (5, 'der_payment', '缴费表', NULL, NULL, 'DerPayment', 'crud', 'com.eng.sys', 'sys', 'payment', '缴费管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2003}', 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00', NULL);
INSERT INTO `gen_table` VALUES (6, 'der_registration', '学生报名表', NULL, NULL, 'DerRegistration', 'crud', 'com.eng.sys', 'sys', 'registration', '报名管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2002}', 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42', NULL);
INSERT INTO `gen_table` VALUES (9, 'der_online_quiz', '线上答题成绩查询', NULL, NULL, 'DerOnlineQuiz', 'crud', 'com.eng.sys', 'sys', 'quiz', '成绩查询', 'ruoyi', '0', '/', '{\"parentMenuId\":2004}', 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11', NULL);
INSERT INTO `gen_table` VALUES (11, 'der_online_quiz_demo', '线上答题', NULL, NULL, 'DerOnlineQuizDemo', 'crud', 'com.eng.sys', 'sys', 'demo', '线上答题', 'ruoyi', '0', '/', '{\"parentMenuId\":2004}', 'admin', '2023-06-07 01:37:57', '', '2023-06-07 01:38:17', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'student_id', NULL, 'int(11)', 'Long', 'studentId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (2, '1', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (3, '1', 'age', '年龄', 'int(11)', 'Long', 'age', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (4, '1', 'gender', '性别', 'int(11)', 'Long', 'gender', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'radio', 'sys_user_sex', 4, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (5, '1', 'date_of_birth', '出生日期', 'date', 'Date', 'dateOfBirth', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 5, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (6, '1', 'phone_number', '手机号码', 'varchar(20)', 'String', 'phoneNumber', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (7, '1', 'email', '电子邮件', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (8, '1', 'address', '地址', 'varchar(100)', 'String', 'address', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (9, '1', 'date_of_admission', '入学日期', 'date', 'Date', 'dateOfAdmission', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 9, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (10, '1', 'student_class', '班级', 'varchar(50)', 'String', 'studentClass', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-06-07 00:08:27', '', '2023-06-07 00:10:15');
INSERT INTO `gen_table_column` VALUES (11, '2', 'question_id', NULL, 'int(11)', 'Long', 'questionId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17');
INSERT INTO `gen_table_column` VALUES (12, '2', 'title', '题目', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17');
INSERT INTO `gen_table_column` VALUES (13, '2', 'question_type', '题型', 'int(10)', 'Integer', 'questionType', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'sysui', 3, 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17');
INSERT INTO `gen_table_column` VALUES (14, '2', 'difficulty', '难度', 'int(10)', 'Integer', 'difficulty', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'sysio', 4, 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17');
INSERT INTO `gen_table_column` VALUES (15, '2', 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 5, 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17');
INSERT INTO `gen_table_column` VALUES (16, '2', 'answer', '标准答案', 'varchar(100)', 'String', 'answer', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17');
INSERT INTO `gen_table_column` VALUES (17, '2', 'explanation', '解析', 'text', 'String', 'explanation', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 7, 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17');
INSERT INTO `gen_table_column` VALUES (18, '2', 'creation_date', '创建日期', 'date', 'Date', 'creationDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 8, 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17');
INSERT INTO `gen_table_column` VALUES (19, '2', 'created_by', '创建人', 'varchar(50)', 'String', 'createdBy', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-06-07 00:13:42', '', '2023-06-07 00:17:17');
INSERT INTO `gen_table_column` VALUES (38, '5', 'payment_id', NULL, 'int(11)', 'Long', 'paymentId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00');
INSERT INTO `gen_table_column` VALUES (39, '5', 'student_name', '学生姓名', 'varchar(255)', 'String', 'studentName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 2, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00');
INSERT INTO `gen_table_column` VALUES (40, '5', 'payment_date', '缴费日期', 'date', 'Date', 'paymentDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 3, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00');
INSERT INTO `gen_table_column` VALUES (41, '5', 'payment_amount', '缴费金额', 'decimal(10,2)', 'BigDecimal', 'paymentAmount', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00');
INSERT INTO `gen_table_column` VALUES (42, '5', 'payment_method', '支付方式', 'int(11)', 'Long', 'paymentMethod', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'sysuiwe', 5, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00');
INSERT INTO `gen_table_column` VALUES (43, '5', 'payment_status', '支付状态', 'int(11)', 'Long', 'paymentStatus', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'radio', 'sysuod', 6, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00');
INSERT INTO `gen_table_column` VALUES (44, '5', 'remarks', '备注', 'text', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 7, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00');
INSERT INTO `gen_table_column` VALUES (45, '5', 'user_id', '用户id', 'bigint(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00');
INSERT INTO `gen_table_column` VALUES (46, '5', 'dept_id', '专业id', 'bigint(11)', 'Long', 'deptId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:28:00');
INSERT INTO `gen_table_column` VALUES (47, '6', 'registration_id', NULL, 'int(11)', 'Long', 'registrationId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (48, '6', 'student_name', '学生姓名', 'varchar(255)', 'String', 'studentName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 2, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (49, '6', 'registration_date', '报名日期', 'date', 'Date', 'registrationDate', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 3, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (50, '6', 'course', '报名课程', 'varchar(100)', 'String', 'course', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (51, '6', 'registration_fee', '报名费用', 'decimal(10,2)', 'BigDecimal', 'registrationFee', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (52, '6', 'contact_person_name', '联系人姓名', 'varchar(50)', 'String', 'contactPersonName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 6, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (53, '6', 'contact_person_phone', '联系人电话', 'varchar(20)', 'String', 'contactPersonPhone', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (54, '6', 'remarks', '备注', 'text', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 8, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (55, '6', 'user_id', '用户id', 'bigint(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (56, '6', 'dept_id', '专业id', 'bigint(11)', 'Long', 'deptId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-06-07 00:24:09', '', '2023-06-07 00:24:42');
INSERT INTO `gen_table_column` VALUES (74, '9', 'answer_id', NULL, 'int(11)', 'Long', 'answerId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (75, '9', 'student_name', '学生姓名', 'varchar(255)', 'String', 'studentName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 2, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (76, '9', 'title', '题目', 'varchar(100)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (77, '9', 'question_type', '题型', 'int(10)', 'Integer', 'questionType', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'sysui', 4, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (78, '9', 'difficulty', '难度', 'int(10)', 'Integer', 'difficulty', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'sysio', 5, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (79, '9', 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 6, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (80, '9', 'answer_type', '标准答案', 'varchar(100)', 'String', 'answerType', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', '', 7, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (81, '9', 'explanation', '解析', 'text', 'String', 'explanation', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 8, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (82, '9', 'answer', '考生答案', 'varchar(255)', 'String', 'answer', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (83, '9', 'graded_by', '老师阅卷', 'varchar(50)', 'String', 'gradedBy', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (84, '9', 'score', '考试成绩', 'decimal(5,2)', 'BigDecimal', 'score', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-06-07 01:08:26', '', '2023-06-07 01:09:11');
INSERT INTO `gen_table_column` VALUES (91, '11', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-06-07 01:37:57', '', '2023-06-07 01:38:17');
INSERT INTO `gen_table_column` VALUES (92, '11', 'student_name', '学生姓名', 'varchar(255)', 'String', 'studentName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 2, 'admin', '2023-06-07 01:37:57', '', '2023-06-07 01:38:17');
INSERT INTO `gen_table_column` VALUES (93, '11', 'title', '题目', 'varchar(100)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-06-07 01:37:58', '', '2023-06-07 01:38:17');
INSERT INTO `gen_table_column` VALUES (94, '11', 'question_type', '题型', 'int(10)', 'Integer', 'questionType', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'sysui', 4, 'admin', '2023-06-07 01:37:58', '', '2023-06-07 01:38:17');
INSERT INTO `gen_table_column` VALUES (95, '11', 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 5, 'admin', '2023-06-07 01:37:58', '', '2023-06-07 01:38:17');
INSERT INTO `gen_table_column` VALUES (96, '11', 'answer', '答案', 'varchar(255)', 'String', 'answer', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-06-07 01:37:58', '', '2023-06-07 01:38:17');
INSERT INTO `gen_table_column` VALUES (97, '11', 'quiz_id', '考试id', 'int(11)', 'Long', 'quizId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-06-07 01:37:58', '', '2023-06-07 01:38:17');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-06-06 23:47:09', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-06-06 23:47:09', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-06-06 23:47:09', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-06-06 23:47:09', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2023-06-06 23:47:09', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-06-06 23:47:09', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '清华大学', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '上海大学', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '北京大学', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '微电子专业', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '计算机科学', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '土木建筑', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '哲学', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '教育学', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '艺术学', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '农学', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '选择题', '0', 'sysui', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:14:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '填空题', '1', 'sysui', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:14:58', 'admin', '2023-06-07 00:15:09', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 3, '应答题', '2', 'sysui', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:15:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 1, '简单', '0', 'sysio', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:15:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 2, '中等', '1', 'sysio', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:16:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 3, '困难', '2', 'sysio', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:16:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '未缴费', '0', 'sysuief', NULL, 'info', 'N', '0', 'admin', '2023-06-07 00:20:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 2, '已缴费', '1', 'sysuief', NULL, 'success', 'N', '0', 'admin', '2023-06-07 00:20:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 1, '微信支付', '0', 'sysuiwe', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:26:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 2, '支付宝支付', '1', 'sysuiwe', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:26:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 1, '未支付', '0', 'sysuod', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:27:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 2, '已支付', '1', 'sysuod', NULL, 'primary', 'N', '0', 'admin', '2023-06-07 00:27:22', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '题目类型', 'sysui', '0', 'admin', '2023-06-07 00:14:22', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '难度', 'sysio', '0', 'admin', '2023-06-07 00:15:36', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '缴费状态', 'sysuief', '0', 'admin', '2023-06-07 00:19:53', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, ' 支付状态', 'sysuod', '0', 'admin', '2023-06-07 00:25:39', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '支付方式', 'sysuiwe', '0', 'admin', '2023-06-07 00:25:49', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-06-06 23:47:09', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-06 23:59:41');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 01:00:16');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:22:46');
INSERT INTO `sys_logininfor` VALUES (103, 'shijie', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '注册成功', '2023-06-07 02:23:02');
INSERT INTO `sys_logininfor` VALUES (104, 'shijie', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:23:14');
INSERT INTO `sys_logininfor` VALUES (105, 'shijie', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:24:26');
INSERT INTO `sys_logininfor` VALUES (106, 'ac', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '注册成功', '2023-06-07 02:24:55');
INSERT INTO `sys_logininfor` VALUES (107, 'ac', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:25:02');
INSERT INTO `sys_logininfor` VALUES (108, 'ac', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:27:42');
INSERT INTO `sys_logininfor` VALUES (109, 'shijie', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:27:52');
INSERT INTO `sys_logininfor` VALUES (110, 'shijie', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:28:35');
INSERT INTO `sys_logininfor` VALUES (111, 'a\'c', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：a\'c 不存在', '2023-06-07 02:28:40');
INSERT INTO `sys_logininfor` VALUES (112, 'ac', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:28:47');
INSERT INTO `sys_logininfor` VALUES (113, 'ac', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:28:53');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:28:58');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:32:07');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:32:11');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:32:44');
INSERT INTO `sys_logininfor` VALUES (118, 'adminroot', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:32:52');
INSERT INTO `sys_logininfor` VALUES (119, 'adminroot', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:34:11');
INSERT INTO `sys_logininfor` VALUES (120, 'laoshi', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:34:22');
INSERT INTO `sys_logininfor` VALUES (121, 'laoshi', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:34:32');
INSERT INTO `sys_logininfor` VALUES (122, 'adminroot', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:34:39');
INSERT INTO `sys_logininfor` VALUES (123, 'adminroot', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:35:00');
INSERT INTO `sys_logininfor` VALUES (124, 'laoshi', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:35:16');
INSERT INTO `sys_logininfor` VALUES (125, 'laoshi', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:35:39');
INSERT INTO `sys_logininfor` VALUES (126, 'adminroot', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:35:47');
INSERT INTO `sys_logininfor` VALUES (127, 'adminroot', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:36:06');
INSERT INTO `sys_logininfor` VALUES (128, 'laoshi', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:36:14');
INSERT INTO `sys_logininfor` VALUES (129, 'laoshi', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:36:31');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:36:36');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:36:43');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:38:40');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:44:04');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:44:09');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 02:44:14');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 02:45:05');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2053 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-06-06 23:47:09', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2023-06-06 23:47:09', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-06-06 23:47:09', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2023-06-06 23:47:09', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-06-06 23:47:09', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-06-06 23:47:09', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-06-06 23:47:09', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-06-06 23:47:09', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-06-06 23:47:09', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-06-06 23:47:09', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-06-06 23:47:09', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-06-06 23:47:09', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-06-06 23:47:09', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-06-06 23:47:09', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-06-06 23:47:09', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-06-06 23:47:09', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-06-06 23:47:09', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-06-06 23:47:09', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-06-06 23:47:09', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-06-06 23:47:09', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-06-06 23:47:09', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-06-06 23:47:09', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-06-06 23:47:09', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-06-06 23:47:09', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '学生信息管理', 0, 4, 'syst', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'email', 'admin', '2023-06-07 00:09:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '试题录入', 0, 5, 'sysu', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'education', 'admin', '2023-06-07 00:11:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '学生报名', 0, 6, 'sysyt', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'example', 'admin', '2023-06-07 00:18:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '学生缴费', 0, 7, 'sysuk', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'icon', 'admin', '2023-06-07 00:18:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '考试管理', 0, 8, 'syshjd', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'education', 'admin', '2023-06-07 00:30:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '试题录入', 2001, 1, 'bank', 'sys/bank/index', NULL, 1, 0, 'C', '0', '0', 'sys:bank:list', '#', 'admin', '2023-06-07 00:37:44', '', NULL, '试题录入菜单');
INSERT INTO `sys_menu` VALUES (2006, '试题录入查询', 2005, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:bank:query', '#', 'admin', '2023-06-07 00:37:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '试题录入新增', 2005, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:bank:add', '#', 'admin', '2023-06-07 00:37:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '试题录入修改', 2005, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:bank:edit', '#', 'admin', '2023-06-07 00:37:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '试题录入删除', 2005, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:bank:remove', '#', 'admin', '2023-06-07 00:37:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '试题录入导出', 2005, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:bank:export', '#', 'admin', '2023-06-07 00:37:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '学生信息', 2000, 1, 'information', 'sys/information/index', NULL, 1, 0, 'C', '0', '0', 'sys:information:list', '#', 'admin', '2023-06-07 00:37:54', '', NULL, '学生信息菜单');
INSERT INTO `sys_menu` VALUES (2018, '学生信息查询', 2017, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:information:query', '#', 'admin', '2023-06-07 00:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '学生信息新增', 2017, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:information:add', '#', 'admin', '2023-06-07 00:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '学生信息修改', 2017, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:information:edit', '#', 'admin', '2023-06-07 00:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '学生信息删除', 2017, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:information:remove', '#', 'admin', '2023-06-07 00:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '学生信息导出', 2017, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:information:export', '#', 'admin', '2023-06-07 00:37:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '缴费管理', 2003, 1, 'payment', 'sys/payment/index', NULL, 1, 0, 'C', '0', '0', 'sys:payment:list', '#', 'admin', '2023-06-07 00:38:01', '', NULL, '缴费管理菜单');
INSERT INTO `sys_menu` VALUES (2024, '缴费管理查询', 2023, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:payment:query', '#', 'admin', '2023-06-07 00:38:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '缴费管理新增', 2023, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:payment:add', '#', 'admin', '2023-06-07 00:38:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '缴费管理修改', 2023, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:payment:edit', '#', 'admin', '2023-06-07 00:38:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '缴费管理删除', 2023, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:payment:remove', '#', 'admin', '2023-06-07 00:38:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '缴费管理导出', 2023, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:payment:export', '#', 'admin', '2023-06-07 00:38:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '报名管理', 2002, 1, 'registration', 'sys/registration/index', NULL, 1, 0, 'C', '0', '0', 'sys:registration:list', '#', 'admin', '2023-06-07 00:38:12', '', NULL, '报名管理菜单');
INSERT INTO `sys_menu` VALUES (2036, '报名管理查询', 2035, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:registration:query', '#', 'admin', '2023-06-07 00:38:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '报名管理新增', 2035, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:registration:add', '#', 'admin', '2023-06-07 00:38:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '报名管理修改', 2035, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:registration:edit', '#', 'admin', '2023-06-07 00:38:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '报名管理删除', 2035, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:registration:remove', '#', 'admin', '2023-06-07 00:38:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '报名管理导出', 2035, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:registration:export', '#', 'admin', '2023-06-07 00:38:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '线上答题', 2004, 1, 'demo', 'sys/demo/index', NULL, 1, 0, 'C', '0', '0', 'sys:demo:list', '#', 'admin', '2023-06-07 01:20:41', '', NULL, '线上答题菜单');
INSERT INTO `sys_menu` VALUES (2042, '线上答题查询', 2041, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:demo:query', '#', 'admin', '2023-06-07 01:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '线上答题新增', 2041, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:demo:add', '#', 'admin', '2023-06-07 01:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '线上答题修改', 2041, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:demo:edit', '#', 'admin', '2023-06-07 01:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '线上答题删除', 2041, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:demo:remove', '#', 'admin', '2023-06-07 01:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '线上答题导出', 2041, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:demo:export', '#', 'admin', '2023-06-07 01:20:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '成绩查询', 2004, 1, 'quiz', 'sys/quiz/index', NULL, 1, 0, 'C', '0', '0', 'sys:quiz:list', '#', 'admin', '2023-06-07 01:20:45', '', NULL, '成绩查询菜单');
INSERT INTO `sys_menu` VALUES (2048, '成绩查询查询', 2047, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:quiz:query', '#', 'admin', '2023-06-07 01:20:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '成绩查询新增', 2047, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:quiz:add', '#', 'admin', '2023-06-07 01:20:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '成绩查询修改', 2047, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:quiz:edit', '#', 'admin', '2023-06-07 01:20:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '成绩查询删除', 2047, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:quiz:remove', '#', 'admin', '2023-06-07 01:20:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '成绩查询导出', 2047, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'sys:quiz:export', '#', 'admin', '2023-06-07 01:20:45', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-06-06 23:47:09', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-06-06 23:47:09', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 183 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"der_student_information\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:08:28', 203);
INSERT INTO `sys_oper_log` VALUES (101, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-06-06 23:47:09\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:08:46', 83);
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"email\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学生信息管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"syst\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:09:16', 33);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"information\",\"className\":\"DerStudentInformation\",\"columns\":[{\"capJavaField\":\"StudentId\",\"columnId\":1,\"columnName\":\"student_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:08:27\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:08:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Age\",\"columnComment\":\"年龄\",\"columnId\":3,\"columnName\":\"age\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:08:27\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"age\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Gender\",\"columnComment\":\"性别\",\"columnId\":4,\"columnName\":\"gender\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:08:27\",\"dictType\":\"sys_user_sex\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"gender\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:10:15', 127);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"试题录入\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"sysu\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:11:35', 15);
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"der_question_bank\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:13:42', 111);
INSERT INTO `sys_oper_log` VALUES (106, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"题目类型\",\"dictType\":\"sysui\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:14:22', 18);
INSERT INTO `sys_oper_log` VALUES (107, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"选择题\",\"dictSort\":1,\"dictType\":\"sysui\",\"dictValue\":\"0\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:14:42', 26);
INSERT INTO `sys_oper_log` VALUES (108, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"天空题\",\"dictSort\":2,\"dictType\":\"sysui\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:14:58', 14);
INSERT INTO `sys_oper_log` VALUES (109, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:14:58\",\"default\":false,\"dictCode\":101,\"dictLabel\":\"填空题\",\"dictSort\":2,\"dictType\":\"sysui\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:15:09', 19);
INSERT INTO `sys_oper_log` VALUES (110, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"应答题\",\"dictSort\":3,\"dictType\":\"sysui\",\"dictValue\":\"2\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:15:19', 15);
INSERT INTO `sys_oper_log` VALUES (111, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"难度\",\"dictType\":\"sysio\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:15:36', 15);
INSERT INTO `sys_oper_log` VALUES (112, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"简单\",\"dictSort\":1,\"dictType\":\"sysio\",\"dictValue\":\"0\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:15:52', 19);
INSERT INTO `sys_oper_log` VALUES (113, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"中等\",\"dictSort\":2,\"dictType\":\"sysio\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:16:02', 16);
INSERT INTO `sys_oper_log` VALUES (114, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"困难\",\"dictSort\":3,\"dictType\":\"sysio\",\"dictValue\":\"2\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:16:10', 24);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"bank\",\"className\":\"DerQuestionBank\",\"columns\":[{\"capJavaField\":\"QuestionId\",\"columnId\":11,\"columnName\":\"question_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:13:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"questionId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"题目\",\"columnId\":12,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:13:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":13,\"columnName\":\"question_type\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:13:42\",\"dictType\":\"sysui\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Difficulty\",\"columnComment\":\"难度\",\"columnId\":14,\"columnName\":\"difficulty\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:13:42\",\"dictType\":\"sysio\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"difficulty\",\"javaType\":\"Integer\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:17:08', 96);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"bank\",\"className\":\"DerQuestionBank\",\"columns\":[{\"capJavaField\":\"QuestionId\",\"columnId\":11,\"columnName\":\"question_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:13:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"questionId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-06-07 00:17:08\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"题目\",\"columnId\":12,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:13:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-06-07 00:17:08\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":13,\"columnName\":\"question_type\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:13:42\",\"dictType\":\"sysui\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-06-07 00:17:08\",\"usableColumn\":false},{\"capJavaField\":\"Difficulty\",\"columnComment\":\"难度\",\"columnId\":14,\"columnName\":\"difficulty\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:13:42\",\"dictType\":\"sysio\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncremen', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:17:17', 67);
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"der_registration,der_payment\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:17:44', 188);
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学生报名\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"sysyt\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:18:17', 12);
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"icon\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学生缴费\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"sysuk\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:18:42', 15);
INSERT INTO `sys_oper_log` VALUES (120, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"缴费状态\",\"dictType\":\"sysuief\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:19:53', 17);
INSERT INTO `sys_oper_log` VALUES (121, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未缴费\",\"dictSort\":1,\"dictType\":\"sysuief\",\"dictValue\":\"0\",\"listClass\":\"info\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:20:10', 13);
INSERT INTO `sys_oper_log` VALUES (122, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已缴费\",\"dictSort\":2,\"dictType\":\"sysuief\",\"dictValue\":\"1\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:20:19', 13);
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/4,3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:21:07', 24);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"der_registration,der_payment\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:24:09', 148);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"registration\",\"className\":\"DerRegistration\",\"columns\":[{\"capJavaField\":\"RegistrationId\",\"columnId\":47,\"columnName\":\"registration_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:24:09\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"registrationId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":48,\"columnName\":\"student_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:24:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RegistrationDate\",\"columnComment\":\"报名日期\",\"columnId\":49,\"columnName\":\"registration_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:24:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"registrationDate\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Course\",\"columnComment\":\"报名课程\",\"columnId\":50,\"columnName\":\"course\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:24:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"course\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:24:42', 87);
INSERT INTO `sys_oper_log` VALUES (126, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\" 支付状态\",\"dictType\":\"sysuod\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:25:39', 12);
INSERT INTO `sys_oper_log` VALUES (127, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"支付方式\",\"dictType\":\"sysuiwe\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:25:49', 13);
INSERT INTO `sys_oper_log` VALUES (128, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"微信支付\",\"dictSort\":1,\"dictType\":\"sysuiwe\",\"dictValue\":\"0\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:26:15', 21);
INSERT INTO `sys_oper_log` VALUES (129, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"支付宝支付\",\"dictSort\":2,\"dictType\":\"sysuiwe\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:26:27', 14);
INSERT INTO `sys_oper_log` VALUES (130, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未支付\",\"dictSort\":1,\"dictType\":\"sysuod\",\"dictValue\":\"0\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:27:11', 12);
INSERT INTO `sys_oper_log` VALUES (131, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已支付\",\"dictSort\":2,\"dictType\":\"sysuod\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:27:22', 15);
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"payment\",\"className\":\"DerPayment\",\"columns\":[{\"capJavaField\":\"PaymentId\",\"columnId\":38,\"columnName\":\"payment_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:24:09\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"paymentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":39,\"columnName\":\"student_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:24:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PaymentDate\",\"columnComment\":\"缴费日期\",\"columnId\":40,\"columnName\":\"payment_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:24:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"paymentDate\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PaymentAmount\",\"columnComment\":\"缴费金额\",\"columnId\":41,\"columnName\":\"payment_amount\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:24:09\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"paymentAmount\",\"javaType\":\"BigD', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:28:00', 62);
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"der_online_quiz_demo,der_online_quiz\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:28:55', 163);
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"考试管理\",\"menuType\":\"M\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"syshjd\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:30:53', 15);
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"quiz\",\"className\":\"DerOnlineQuiz\",\"columns\":[{\"capJavaField\":\"AnswerId\",\"columnId\":57,\"columnName\":\"answer_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"answerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":58,\"columnName\":\"student_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"题目\",\"columnId\":59,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":60,\"columnName\":\"question_type\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"sysui\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Integer\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:32:01', 91);
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"quiz\",\"className\":\"DerOnlineQuiz\",\"columns\":[{\"capJavaField\":\"AnswerId\",\"columnId\":57,\"columnName\":\"answer_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"answerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-06-07 00:32:01\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":58,\"columnName\":\"student_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-06-07 00:32:01\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"题目\",\"columnId\":59,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2023-06-07 00:32:01\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":60,\"columnName\":\"question_type\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"sysui\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:32:13', 92);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"demo\",\"className\":\"DerOnlineQuizDemo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":68,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":69,\"columnName\":\"student_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"题目\",\"columnId\":70,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":71,\"columnName\":\"question_type\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 00:28:55\",\"dictType\":\"sysui\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Integer\",\"list\":true,\"par', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:32:45', 41);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"der_student_information,der_question_bank,der_payment,der_registration,der_online_quiz,der_online_quiz_demo\"}', NULL, 0, NULL, '2023-06-07 00:33:36', 745);
INSERT INTO `sys_oper_log` VALUES (139, '试题录入', 1, 'com.eng.sys.controller.DerQuestionBankController.add()', 'POST', 1, 'admin', NULL, '/sys/bank', '127.0.0.1', '内网IP', '{\"answer\":\"好吃\",\"content\":\"好不好吃\",\"createdBy\":\"李某\",\"creationDate\":\"2023-06-14\",\"difficulty\":0,\"params\":{},\"questionId\":2,\"questionType\":1,\"title\":\"热狗好不好吃\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 00:55:01', 104);
INSERT INTO `sys_oper_log` VALUES (140, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"不好吃\",\"content\":\"好不好吃\",\"id\":2,\"params\":{},\"questionType\":1,\"studentName\":\"若依\",\"title\":\"热狗好不好吃\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\r\n### The error may exist in file [D:\\eng\\RuoYi-Vue-master\\engop\\target\\classes\\mapper\\sys\\DerOnlineQuizMapper.xml]\r\n### The error may involve com.eng.sys.mapper.DerOnlineQuizMapper.insertDerOnlineQuiz-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into der_online_quiz          ( student_name,                                                                                           answer )           values ( ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\n; Field \'title\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'title\' doesn\'t have a default value', '2023-06-07 00:55:28', 153);
INSERT INTO `sys_oper_log` VALUES (141, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"不好吃\",\"content\":\"好不好吃\",\"id\":2,\"params\":{},\"questionType\":1,\"studentName\":\"若依\",\"title\":\"热狗好不好吃\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\r\n### The error may exist in file [D:\\eng\\RuoYi-Vue-master\\engop\\target\\classes\\mapper\\sys\\DerOnlineQuizMapper.xml]\r\n### The error may involve com.eng.sys.mapper.DerOnlineQuizMapper.insertDerOnlineQuiz-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into der_online_quiz          ( student_name,                                                                                           answer )           values ( ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\n; Field \'title\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'title\' doesn\'t have a default value', '2023-06-07 01:00:38', 20);
INSERT INTO `sys_oper_log` VALUES (142, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"不好吃\",\"content\":\"好不好吃\",\"id\":2,\"params\":{},\"questionType\":1,\"studentName\":\"若依\",\"title\":\"热狗好不好吃\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\r\n### The error may exist in file [D:\\eng\\RuoYi-Vue-master\\engop\\target\\classes\\mapper\\sys\\DerOnlineQuizMapper.xml]\r\n### The error may involve com.eng.sys.mapper.DerOnlineQuizMapper.insertDerOnlineQuiz-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into der_online_quiz          ( student_name,                                                                                           answer )           values ( ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\n; Field \'title\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'title\' doesn\'t have a default value', '2023-06-07 01:01:11', 23);
INSERT INTO `sys_oper_log` VALUES (143, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"不好吃\",\"content\":\"好不好吃\",\"id\":2,\"params\":{},\"questionType\":1,\"studentName\":\"若依\",\"title\":\"热狗好不好吃\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\r\n### The error may exist in file [D:\\eng\\RuoYi-Vue-master\\engop\\target\\classes\\mapper\\sys\\DerOnlineQuizMapper.xml]\r\n### The error may involve com.eng.sys.mapper.DerOnlineQuizMapper.insertDerOnlineQuiz-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into der_online_quiz          ( student_name,                                                                                           answer )           values ( ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\n; Field \'title\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'title\' doesn\'t have a default value', '2023-06-07 01:01:23', 19);
INSERT INTO `sys_oper_log` VALUES (144, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"不好吃\",\"content\":\"好不好吃\",\"id\":2,\"params\":{},\"questionType\":1,\"studentName\":\"若依\",\"title\":\"热狗好不好吃\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\r\n### The error may exist in file [D:\\eng\\RuoYi-Vue-master\\engop\\target\\classes\\mapper\\sys\\DerOnlineQuizMapper.xml]\r\n### The error may involve com.eng.sys.mapper.DerOnlineQuizMapper.insertDerOnlineQuiz-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into der_online_quiz          ( student_name,                                                                                           answer )           values ( ?,                                                                                           ? )\r\n### Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\n; Field \'title\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'title\' doesn\'t have a default value', '2023-06-07 01:01:35', 17);
INSERT INTO `sys_oper_log` VALUES (145, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"buhaochi\",\"content\":\"好不好吃\",\"id\":2,\"params\":{},\"questionType\":1,\"title\":\"热狗好不好吃\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\r\n### The error may exist in file [D:\\eng\\RuoYi-Vue-master\\engop\\target\\classes\\mapper\\sys\\DerOnlineQuizMapper.xml]\r\n### The error may involve com.eng.sys.mapper.DerOnlineQuizMapper.insertDerOnlineQuiz-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into der_online_quiz          ( answer )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\n; Field \'title\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'title\' doesn\'t have a default value', '2023-06-07 01:03:23', 159);
INSERT INTO `sys_oper_log` VALUES (146, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"buhaochi\",\"content\":\"好不好吃\",\"id\":2,\"params\":{},\"questionType\":1,\"studentName\":\"shijie \",\"title\":\"热狗好不好吃\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\r\n### The error may exist in file [D:\\eng\\RuoYi-Vue-master\\engop\\target\\classes\\mapper\\sys\\DerOnlineQuizMapper.xml]\r\n### The error may involve com.eng.sys.mapper.DerOnlineQuizMapper.insertDerOnlineQuiz-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into der_online_quiz          ( answer )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'title\' doesn\'t have a default value\n; Field \'title\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'title\' doesn\'t have a default value', '2023-06-07 01:03:34', 10);
INSERT INTO `sys_oper_log` VALUES (147, '线上答题', 1, 'com.eng.sys.controller.DerOnlineQuizDemoController.add()', 'POST', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"content\":\"<p><br></p>\",\"id\":3,\"params\":{},\"studentName\":\"dffeg\",\"title\":\"ergrthgerth\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:03:51', 14);
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/7,8', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:08:20', 73);
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"der_online_quiz_demo,der_online_quiz\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:08:26', 300);
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"quiz\",\"className\":\"DerOnlineQuiz\",\"columns\":[{\"capJavaField\":\"AnswerId\",\"columnId\":74,\"columnName\":\"answer_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:08:26\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"answerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":75,\"columnName\":\"student_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:08:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"题目\",\"columnId\":76,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:08:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":77,\"columnName\":\"question_type\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:08:26\",\"dictType\":\"sysui\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Integer\",\"list\":true,\"para', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:09:11', 115);
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"demo\",\"className\":\"DerOnlineQuizDemo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":85,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:08:26\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":86,\"columnName\":\"student_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:08:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"题目\",\"columnId\":87,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:08:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":88,\"columnName\":\"question_type\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:08:26\",\"dictType\":\"sysui\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:09:57', 83);
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"der_online_quiz,der_online_quiz_demo\"}', NULL, 0, NULL, '2023-06-07 01:13:26', 235);
INSERT INTO `sys_oper_log` VALUES (153, '成绩查询', 2, 'com.eng.sys.controller.DerOnlineQuizController.edit()', 'PUT', 1, 'admin', NULL, '/sys/quiz', '127.0.0.1', '内网IP', '{\"answer\":\"\",\"answerId\":2,\"content\":\"好不好吃\",\"difficulty\":0,\"gradedBy\":\"0\",\"params\":{},\"questionType\":1,\"title\":\"热狗好不好吃\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:21:11', 21);
INSERT INTO `sys_oper_log` VALUES (154, '试题录入', 1, 'com.eng.sys.controller.DerQuestionBankController.add()', 'POST', 1, 'admin', NULL, '/sys/bank', '127.0.0.1', '内网IP', '{\"answer\":\"你不好\",\"content\":\"你好不好\",\"difficulty\":0,\"params\":{},\"questionId\":3,\"questionType\":2,\"title\":\"你好\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:21:37', 20);
INSERT INTO `sys_oper_log` VALUES (155, '线上答题', 3, 'com.eng.sys.controller.DerOnlineQuizDemoController.remove()', 'DELETE', 1, 'admin', NULL, '/sys/demo/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:21:55', 10);
INSERT INTO `sys_oper_log` VALUES (156, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"不好\",\"content\":\"你好不好\",\"id\":4,\"params\":{},\"questionType\":2,\"studentName\":\"李某\",\"title\":\"你好\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:22:06', 12);
INSERT INTO `sys_oper_log` VALUES (157, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"好\",\"content\":\"你好不好\",\"id\":4,\"params\":{},\"questionType\":2,\"studentName\":\"李某\",\"title\":\"你好\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:23:59', 29);
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/10', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:37:54', 41);
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"der_online_quiz_demo\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:37:58', 92);
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"demo\",\"className\":\"DerOnlineQuizDemo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":91,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:37:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentName\",\"columnComment\":\"学生姓名\",\"columnId\":92,\"columnName\":\"student_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:37:57\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"studentName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"题目\",\"columnId\":93,\"columnName\":\"title\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:37:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":94,\"columnName\":\"question_type\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 01:37:58\",\"dictType\":\"sysui\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Integer\",\"list\":true,\"params\":{},\"pk\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:38:17', 68);
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"der_online_quiz_demo\"}', NULL, 0, NULL, '2023-06-07 01:38:22', 229);
INSERT INTO `sys_oper_log` VALUES (162, '试题录入', 1, 'com.eng.sys.controller.DerQuestionBankController.add()', 'POST', 1, 'admin', NULL, '/sys/bank', '127.0.0.1', '内网IP', '{\"answer\":\"超人\",\"content\":\"我是谁\",\"creationDate\":\"2023-06-14\",\"difficulty\":1,\"params\":{},\"questionId\":4,\"questionType\":2,\"title\":\"我是谁\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:53:06', 53);
INSERT INTO `sys_oper_log` VALUES (163, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"不好\",\"content\":\"你好不好\",\"id\":4,\"params\":{},\"questionType\":2,\"quizId\":3,\"studentName\":\"李某\",\"title\":\"你好\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:56:16', 23);
INSERT INTO `sys_oper_log` VALUES (164, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"好\",\"content\":\"你好不好\",\"id\":4,\"params\":{},\"questionType\":2,\"quizId\":3,\"studentName\":\"李某\",\"title\":\"你好\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:56:36', 9);
INSERT INTO `sys_oper_log` VALUES (165, '试题录入', 1, 'com.eng.sys.controller.DerQuestionBankController.add()', 'POST', 1, 'admin', NULL, '/sys/bank', '127.0.0.1', '内网IP', '{\"answer\":\"粉红色\",\"content\":\"地方税收返还\",\"creationDate\":\"2023-06-21\",\"difficulty\":2,\"params\":{},\"questionId\":5,\"questionType\":2,\"title\":\"如果还是然后\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 01:59:53', 53);
INSERT INTO `sys_oper_log` VALUES (166, '试题录入', 1, 'com.eng.sys.controller.DerQuestionBankController.add()', 'POST', 1, 'admin', NULL, '/sys/bank', '127.0.0.1', '内网IP', '{\"answer\":\"房管局帝国海军\",\"content\":\"的护身符根据德国海军\",\"creationDate\":\"2023-06-07\",\"difficulty\":1,\"explanation\":\"的发挥\",\"params\":{},\"questionId\":6,\"questionType\":1,\"title\":\"得分回复\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:12:43', 55);
INSERT INTO `sys_oper_log` VALUES (167, '线上答题', 2, 'com.eng.sys.controller.DerOnlineQuizDemoController.edit()', 'PUT', 1, 'admin', NULL, '/sys/demo', '127.0.0.1', '内网IP', '{\"answer\":\"不是\",\"content\":\"的护身符根据德国海军\",\"id\":7,\"params\":{},\"questionType\":1,\"quizId\":7,\"title\":\"得分回复\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:13:03', 15);
INSERT INTO `sys_oper_log` VALUES (168, '线上答题', 3, 'com.eng.sys.controller.DerOnlineQuizDemoController.remove()', 'DELETE', 1, 'admin', NULL, '/sys/demo/4,5,6,7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:13:31', 10);
INSERT INTO `sys_oper_log` VALUES (169, '成绩查询', 3, 'com.eng.sys.controller.DerOnlineQuizController.remove()', 'DELETE', 1, 'admin', NULL, '/sys/quiz/3,4,5,6,7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:13:41', 5);
INSERT INTO `sys_oper_log` VALUES (170, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2035,2003,2023,2004,2041,2047,2036,2037,2024,2025,2042,2043,2044,2048],\"params\":{},\"roleId\":100,\"roleKey\":\"studentid\",\"roleName\":\"学生\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:14:58', 50);
INSERT INTO `sys_oper_log` VALUES (171, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-06-07 02:14:58\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"studentid\",\"roleName\":\"学生\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:22:41', 43);
INSERT INTO `sys_oper_log` VALUES (172, '报名管理', 1, 'com.eng.sys.controller.DerRegistrationController.add()', 'POST', 1, 'shijie', NULL, '/sys/registration', '127.0.0.1', '内网IP', '{\"contactPersonName\":\"李\",\"params\":{},\"registrationDate\":\"2023-06-21\",\"registrationFee\":234,\"registrationId\":1,\"studentName\":\"李某\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:24:21', 14);
INSERT INTO `sys_oper_log` VALUES (173, '报名管理', 1, 'com.eng.sys.controller.DerRegistrationController.add()', 'POST', 1, 'shijie', NULL, '/sys/registration', '127.0.0.1', '内网IP', '{\"params\":{},\"registrationDate\":\"2023-06-14\",\"registrationId\":2,\"studentName\":\"张张\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:28:26', 21);
INSERT INTO `sys_oper_log` VALUES (174, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2000,2017,2018,2019,2020,2021,2022,2001,2005,2006,2007,2008,2009,2010,2002,2035,2036,2037,2038,2039,2040,2003,2023,2024,2025,2026,2027,2028,2004,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052],\"params\":{},\"roleId\":101,\"roleKey\":\"guanli\",\"roleName\":\"管理员\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:29:33', 50);
INSERT INTO `sys_oper_log` VALUES (175, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 23:47:09\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"土木建筑\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":103,\"email\":\"ry@qq.com\",\"loginDate\":\"2023-06-06 23:47:09\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"水水\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:30:42', 43);
INSERT INTO `sys_oper_log` VALUES (176, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":108,\"email\":\"rmr@163.com\",\"nickName\":\"管理员\",\"params\":{},\"phonenumber\":\"18798765456\",\"postIds\":[],\"roleIds\":[101],\"sex\":\"1\",\"status\":\"0\",\"userId\":102,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:31:35', 108);
INSERT INTO `sys_oper_log` VALUES (177, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-06-07 02:29:33\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,102,108,109],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"guanli\",\"roleName\":\"管理员\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:32:03', 16);
INSERT INTO `sys_oper_log` VALUES (178, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'adminroot', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"adminroot\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2000,2017,2018,2019,2020,2021,2022,2001,2005,2006,2007,2008,2009,2010,2004,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052],\"params\":{},\"roleId\":102,\"roleKey\":\"laoshi\",\"roleName\":\"老师\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:33:25', 23);
INSERT INTO `sys_oper_log` VALUES (179, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'adminroot', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"adminroot\",\"deptId\":108,\"nickName\":\"老师\",\"params\":{},\"phonenumber\":\"17685987648\",\"postIds\":[],\"roleIds\":[102],\"sex\":\"1\",\"status\":\"0\",\"userId\":103,\"userName\":\"laoshi\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:34:06', 98);
INSERT INTO `sys_oper_log` VALUES (180, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'adminroot', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-06-07 02:33:25\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":102,\"roleKey\":\"laoshi\",\"roleName\":\"老师\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:34:56', 12);
INSERT INTO `sys_oper_log` VALUES (181, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'adminroot', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 02:31:35\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":108,\"deptName\":\"艺术学\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"status\":\"0\"},\"deptId\":102,\"email\":\"rmr@163.com\",\"loginDate\":\"2023-06-07 17:32:13\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"管理员\",\"params\":{},\"phonenumber\":\"18798765456\",\"postIds\":[],\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"guanli\",\"roleName\":\"管理员\",\"roleSort\":0,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"adminroot\",\"userId\":102,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-06-07 02:36:02', 28);
INSERT INTO `sys_oper_log` VALUES (182, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/06/07/blob_20230607174359A001.png\",\"code\":200}', 0, NULL, '2023-06-07 02:43:58', 104);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-06-06 23:47:09', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-06-06 23:47:09', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-06-06 23:47:09', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-06-06 23:47:09', 'admin', '2023-06-07 00:08:46', '普通角色');
INSERT INTO `sys_role` VALUES (100, '学生', 'studentid', 0, '5', 1, 1, '0', '0', 'admin', '2023-06-07 02:14:58', '', '2023-06-07 02:22:41', NULL);
INSERT INTO `sys_role` VALUES (101, '管理员', 'guanli', 0, '2', 1, 1, '0', '0', 'admin', '2023-06-07 02:29:33', '', '2023-06-07 02:32:03', NULL);
INSERT INTO `sys_role` VALUES (102, '老师', 'laoshi', 0, '4', 1, 1, '0', '0', 'adminroot', '2023-06-07 02:33:25', '', '2023-06-07 02:34:56', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);
INSERT INTO `sys_role_dept` VALUES (101, 100);
INSERT INTO `sys_role_dept` VALUES (101, 102);
INSERT INTO `sys_role_dept` VALUES (101, 108);
INSERT INTO `sys_role_dept` VALUES (101, 109);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2035);
INSERT INTO `sys_role_menu` VALUES (100, 2036);
INSERT INTO `sys_role_menu` VALUES (100, 2037);
INSERT INTO `sys_role_menu` VALUES (100, 2041);
INSERT INTO `sys_role_menu` VALUES (100, 2042);
INSERT INTO `sys_role_menu` VALUES (100, 2043);
INSERT INTO `sys_role_menu` VALUES (100, 2044);
INSERT INTO `sys_role_menu` VALUES (100, 2047);
INSERT INTO `sys_role_menu` VALUES (100, 2048);
INSERT INTO `sys_role_menu` VALUES (101, 1);
INSERT INTO `sys_role_menu` VALUES (101, 100);
INSERT INTO `sys_role_menu` VALUES (101, 1000);
INSERT INTO `sys_role_menu` VALUES (101, 1001);
INSERT INTO `sys_role_menu` VALUES (101, 1002);
INSERT INTO `sys_role_menu` VALUES (101, 1003);
INSERT INTO `sys_role_menu` VALUES (101, 1004);
INSERT INTO `sys_role_menu` VALUES (101, 1005);
INSERT INTO `sys_role_menu` VALUES (101, 1006);
INSERT INTO `sys_role_menu` VALUES (101, 2000);
INSERT INTO `sys_role_menu` VALUES (101, 2001);
INSERT INTO `sys_role_menu` VALUES (101, 2002);
INSERT INTO `sys_role_menu` VALUES (101, 2003);
INSERT INTO `sys_role_menu` VALUES (101, 2004);
INSERT INTO `sys_role_menu` VALUES (101, 2005);
INSERT INTO `sys_role_menu` VALUES (101, 2006);
INSERT INTO `sys_role_menu` VALUES (101, 2007);
INSERT INTO `sys_role_menu` VALUES (101, 2008);
INSERT INTO `sys_role_menu` VALUES (101, 2009);
INSERT INTO `sys_role_menu` VALUES (101, 2010);
INSERT INTO `sys_role_menu` VALUES (101, 2017);
INSERT INTO `sys_role_menu` VALUES (101, 2018);
INSERT INTO `sys_role_menu` VALUES (101, 2019);
INSERT INTO `sys_role_menu` VALUES (101, 2020);
INSERT INTO `sys_role_menu` VALUES (101, 2021);
INSERT INTO `sys_role_menu` VALUES (101, 2022);
INSERT INTO `sys_role_menu` VALUES (101, 2023);
INSERT INTO `sys_role_menu` VALUES (101, 2024);
INSERT INTO `sys_role_menu` VALUES (101, 2025);
INSERT INTO `sys_role_menu` VALUES (101, 2026);
INSERT INTO `sys_role_menu` VALUES (101, 2027);
INSERT INTO `sys_role_menu` VALUES (101, 2028);
INSERT INTO `sys_role_menu` VALUES (101, 2035);
INSERT INTO `sys_role_menu` VALUES (101, 2036);
INSERT INTO `sys_role_menu` VALUES (101, 2037);
INSERT INTO `sys_role_menu` VALUES (101, 2038);
INSERT INTO `sys_role_menu` VALUES (101, 2039);
INSERT INTO `sys_role_menu` VALUES (101, 2040);
INSERT INTO `sys_role_menu` VALUES (101, 2041);
INSERT INTO `sys_role_menu` VALUES (101, 2042);
INSERT INTO `sys_role_menu` VALUES (101, 2043);
INSERT INTO `sys_role_menu` VALUES (101, 2044);
INSERT INTO `sys_role_menu` VALUES (101, 2045);
INSERT INTO `sys_role_menu` VALUES (101, 2046);
INSERT INTO `sys_role_menu` VALUES (101, 2047);
INSERT INTO `sys_role_menu` VALUES (101, 2048);
INSERT INTO `sys_role_menu` VALUES (101, 2049);
INSERT INTO `sys_role_menu` VALUES (101, 2050);
INSERT INTO `sys_role_menu` VALUES (101, 2051);
INSERT INTO `sys_role_menu` VALUES (101, 2052);
INSERT INTO `sys_role_menu` VALUES (102, 1);
INSERT INTO `sys_role_menu` VALUES (102, 100);
INSERT INTO `sys_role_menu` VALUES (102, 1000);
INSERT INTO `sys_role_menu` VALUES (102, 1001);
INSERT INTO `sys_role_menu` VALUES (102, 1002);
INSERT INTO `sys_role_menu` VALUES (102, 1003);
INSERT INTO `sys_role_menu` VALUES (102, 1004);
INSERT INTO `sys_role_menu` VALUES (102, 1005);
INSERT INTO `sys_role_menu` VALUES (102, 1006);
INSERT INTO `sys_role_menu` VALUES (102, 2000);
INSERT INTO `sys_role_menu` VALUES (102, 2001);
INSERT INTO `sys_role_menu` VALUES (102, 2004);
INSERT INTO `sys_role_menu` VALUES (102, 2005);
INSERT INTO `sys_role_menu` VALUES (102, 2006);
INSERT INTO `sys_role_menu` VALUES (102, 2007);
INSERT INTO `sys_role_menu` VALUES (102, 2008);
INSERT INTO `sys_role_menu` VALUES (102, 2009);
INSERT INTO `sys_role_menu` VALUES (102, 2010);
INSERT INTO `sys_role_menu` VALUES (102, 2017);
INSERT INTO `sys_role_menu` VALUES (102, 2018);
INSERT INTO `sys_role_menu` VALUES (102, 2019);
INSERT INTO `sys_role_menu` VALUES (102, 2020);
INSERT INTO `sys_role_menu` VALUES (102, 2021);
INSERT INTO `sys_role_menu` VALUES (102, 2022);
INSERT INTO `sys_role_menu` VALUES (102, 2041);
INSERT INTO `sys_role_menu` VALUES (102, 2042);
INSERT INTO `sys_role_menu` VALUES (102, 2043);
INSERT INTO `sys_role_menu` VALUES (102, 2044);
INSERT INTO `sys_role_menu` VALUES (102, 2045);
INSERT INTO `sys_role_menu` VALUES (102, 2046);
INSERT INTO `sys_role_menu` VALUES (102, 2047);
INSERT INTO `sys_role_menu` VALUES (102, 2048);
INSERT INTO `sys_role_menu` VALUES (102, 2049);
INSERT INTO `sys_role_menu` VALUES (102, 2050);
INSERT INTO `sys_role_menu` VALUES (102, 2051);
INSERT INTO `sys_role_menu` VALUES (102, 2052);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'adminroot', '冰冰', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-06-07 17:35:48', 'admin', '2023-06-06 23:47:09', '', '2023-06-07 02:35:47', '管理员');
INSERT INTO `sys_user` VALUES (2, 103, 'ry', '水水', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-06-06 23:47:09', 'admin', '2023-06-06 23:47:09', 'admin', '2023-06-07 02:30:42', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'shijie', 'shijie', '00', '', '', '0', '', '$2a$10$yd6Ed2M0uE6DWQWPwbB19e.I0vQI5Ddjnh8lUIweRNn79OUp4TjiW', '0', '0', '127.0.0.1', '2023-06-07 17:27:53', '', '2023-06-07 02:23:02', '', '2023-06-07 02:27:52', NULL);
INSERT INTO `sys_user` VALUES (101, NULL, 'ac', 'ac', '00', '', '', '0', '', '$2a$10$dV8oDinEpT1cvPE.5dDMguikdQMPbL2MN.GVv9rs949uZwXOu4y3q', '0', '0', '127.0.0.1', '2023-06-07 17:28:49', '', '2023-06-07 02:24:55', '', '2023-06-07 02:28:47', NULL);
INSERT INTO `sys_user` VALUES (102, 102, 'admin', '管理员', '00', 'rmr@163.com', '18798765456', '1', '/profile/avatar/2023/06/07/blob_20230607174359A001.png', '$2a$10$Q/l5Fn0vhitNqboeUTzLJuN4N8TcoY4s44kR193woKq9Ps6SJjOg.', '0', '0', '127.0.0.1', '2023-06-07 17:45:06', 'admin', '2023-06-07 02:31:35', 'adminroot', '2023-06-07 02:45:05', NULL);
INSERT INTO `sys_user` VALUES (103, 108, 'laoshi', '老师', '00', '', '17685987648', '1', '', '$2a$10$602.8ey6SbxkvpuE0IzICezDzWB2PV4CZjmuFS/F8MphGivgH7mBe', '0', '0', '127.0.0.1', '2023-06-07 17:36:15', 'adminroot', '2023-06-07 02:34:06', '', '2023-06-07 02:36:14', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (101, 100);
INSERT INTO `sys_user_role` VALUES (102, 101);
INSERT INTO `sys_user_role` VALUES (103, 102);

SET FOREIGN_KEY_CHECKS = 1;
