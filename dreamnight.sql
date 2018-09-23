/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : dreamnight

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2018-09-23 00:25:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `commit`
-- ----------------------------
DROP TABLE IF EXISTS `commit`;
CREATE TABLE `commit` (
  `commitID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `fromaccount` varchar(200) NOT NULL,
  `posttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `text` varchar(3000) DEFAULT NULL,
  `threadID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`commitID`),
  KEY `commit_account` (`fromaccount`),
  KEY `commit_thread` (`threadID`),
  CONSTRAINT `commit_account` FOREIGN KEY (`fromaccount`) REFERENCES `user` (`account`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `commit_thread` FOREIGN KEY (`threadID`) REFERENCES `thread` (`threadID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commit
-- ----------------------------
INSERT INTO `commit` VALUES ('0000000029', 'liyang', '2018-09-14 02:19:50', '现在时间是北京时间凌晨2：19', '1');
INSERT INTO `commit` VALUES ('0000000030', 'liyang', '2018-09-14 02:20:58', '中午一般去哪呢？', '3');
INSERT INTO `commit` VALUES ('0000000032', '刁筠昊', '2018-09-14 02:22:11', '别问，问就是写自适应', '1');
INSERT INTO `commit` VALUES ('0000000033', '刁筠昊', '2018-09-14 02:22:34', '他们写的什么玩意', '1');
INSERT INTO `commit` VALUES ('0000000034', '刁筠昊', '2018-09-14 02:22:48', '现在头都是秃的', '1');
INSERT INTO `commit` VALUES ('0000000037', '刁筠昊', '2018-09-14 02:25:00', '打算去移动看看', '2');
INSERT INTO `commit` VALUES ('0000000038', '刁筠昊', '2018-09-14 02:25:10', '再议', '2');
INSERT INTO `commit` VALUES ('0000000039', '刁筠昊', '2018-09-14 02:25:31', '不约不约，吃完了', '3');
INSERT INTO `commit` VALUES ('0000000040', '程钰翔', '2018-09-14 02:26:32', '我先来，1', '21');
INSERT INTO `commit` VALUES ('0000000041', '程钰翔', '2018-09-14 02:26:39', '2', '21');
INSERT INTO `commit` VALUES ('0000000042', '程钰翔', '2018-09-14 02:26:41', '2', '21');
INSERT INTO `commit` VALUES ('0000000043', '程钰翔', '2018-09-14 02:26:46', '3', '21');
INSERT INTO `commit` VALUES ('0000000044', '程钰翔', '2018-09-14 02:26:50', '4', '21');
INSERT INTO `commit` VALUES ('0000000045', '程钰翔', '2018-09-14 02:26:55', '5', '21');
INSERT INTO `commit` VALUES ('0000000046', '程钰翔', '2018-09-14 02:27:09', '就我一个人耍？', '21');
INSERT INTO `commit` VALUES ('0000000047', '程钰翔', '2018-09-14 02:54:23', '早已经睡了的我', '1');
INSERT INTO `commit` VALUES ('0000000048', '程钰翔', '2018-09-14 08:23:28', '不要问，就是肝', '21');
INSERT INTO `commit` VALUES ('0000000049', '2', '2018-09-14 09:53:56', '同意的举手', '24');
INSERT INTO `commit` VALUES ('0000000054', '程钰翔', '2018-09-14 10:15:21', '你好', '24');
INSERT INTO `commit` VALUES ('0000000055', '程钰翔', '2018-09-14 10:17:33', '8', '21');
INSERT INTO `commit` VALUES ('0000000058', '2', '2018-09-14 12:52:55', '我已经忘了怎么睡觉了', '1');

-- ----------------------------
-- Table structure for `thread`
-- ----------------------------
DROP TABLE IF EXISTS `thread`;
CREATE TABLE `thread` (
  `threadID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `threadname` varchar(500) NOT NULL,
  `fromaccount` varchar(200) NOT NULL,
  `numcommit` int(11) NOT NULL,
  `numreading` int(11) NOT NULL,
  `posttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `lastcommittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `toplabel` int(11) unsigned NOT NULL DEFAULT '0',
  `text` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`threadID`),
  KEY `thread_account` (`fromaccount`),
  CONSTRAINT `thread_account` FOREIGN KEY (`fromaccount`) REFERENCES `user` (`account`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thread
-- ----------------------------
INSERT INTO `thread` VALUES ('1', '你们几点睡？???', 'liyang', '7', '20', '2018-09-17 22:12:26', '2018-09-17 22:12:26', '0', '为了做综创你们熬夜到几点啊？');
INSERT INTO `thread` VALUES ('2', '宿舍网在哪里办？', '刁筠昊', '3', '4', '2018-09-14 03:49:45', '2018-09-14 03:49:45', '0', '联通好坑啊，有没有替代方案？');
INSERT INTO `thread` VALUES ('3', '吃饭有人约吗？', 'liyang', '2', '3', '2018-09-17 22:01:27', '2018-09-17 22:01:27', '0', '哪里的菜比较好吃啊？');
INSERT INTO `thread` VALUES ('4', '你们知道综训作品啥时候交吗', '熊', '0', '0', '2018-09-14 08:39:02', '2018-09-14 08:39:02', '0', '吼lei啊，好想快点交了。');
INSERT INTO `thread` VALUES ('5', '哎，你们适应手机端做好了吗', '刁筠昊', '0', '0', '2018-09-14 08:37:22', '2018-09-14 08:36:59', '0', '啥玩意儿啊，咋整啊？');
INSERT INTO `thread` VALUES ('6', '周五完事了庆祝一下吧', '熊', '0', '0', '2018-09-14 08:38:09', '2018-09-14 08:38:12', '0', '出去吃顿好的吧。');
INSERT INTO `thread` VALUES ('7', '淘宝上的生发水靠谱吗？', 'liyang', '0', '0', '2018-09-14 08:39:42', '2018-09-14 08:39:45', '0', '做综训头发掉了两地，慌了');
INSERT INTO `thread` VALUES ('8', '我举报，划水逛bbs', '程钰翔', '0', '0', '2018-09-14 08:41:47', '2018-09-14 08:41:50', '0', '他甚至还发了个帖子。');
INSERT INTO `thread` VALUES ('21', '划水签到帖', '程钰翔', '9', '21', '2018-09-17 22:50:02', '2018-09-17 22:50:02', '0', '看看西工大汉子的毅力');
INSERT INTO `thread` VALUES ('22', '抽水签到贴', '熊2', '0', '0', '2018-09-14 08:34:20', '2018-09-14 08:34:23', '0', '总是有人盖水楼，我来抽一抽水。');
INSERT INTO `thread` VALUES ('23', '兄弟们做到 什么程度了', '2', '0', '5', '2018-09-14 10:26:43', '2018-09-14 10:26:43', '0', '给发个进度啊，留给我们的时间不多了。');
INSERT INTO `thread` VALUES ('24', '关于严厉打击', '2', '4', '37', '2018-09-14 13:35:54', '2018-09-14 13:42:06', '1', '拉出去毙了!!!!DDDDDDD');
INSERT INTO `thread` VALUES ('25', '新主题2', 'liyang', '0', '0', '2018-09-17 22:17:38', '2018-09-17 22:17:50', '0', '猜猜看要干什么');
INSERT INTO `thread` VALUES ('26', 'a', '2', '0', '0', '2018-09-17 22:41:46', '2018-09-17 22:41:54', '0', 'a');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `account` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nikename` varchar(1000) NOT NULL,
  `security` varchar(2000) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `authority` int(11) NOT NULL DEFAULT '0',
  `head` mediumblob,
  `personality` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '234', '1', '1', '0', '', '456*/*');
INSERT INTO `user` VALUES ('12', '1', '2', '2', '2', '1', null, null);
INSERT INTO `user` VALUES ('123', '456', '123', '1', '1', '0', null, null);
INSERT INTO `user` VALUES ('2', '2', '卢延悦', '2', '2', '3', '', '超级管理员真的可以为所欲为。');
INSERT INTO `user` VALUES ('3', '3', '3', '3', '3', '0', null, '测试一下手机端');
INSERT INTO `user` VALUES ('333', '333', '333', '333', '333', '0', null, null);
INSERT INTO `user` VALUES ('44', '44', '44', '44', '44', '0', null, null);
INSERT INTO `user` VALUES ('555', 'qwe', 'q', 'eee', 'eee', '1', null, null);
INSERT INTO `user` VALUES ('666', '', '666', '', '', '0', null, '喊666');
INSERT INTO `user` VALUES ('a', 'a', 'a', 'a', 'a', '1', '', 'b');
INSERT INTO `user` VALUES ('cj', '123', 'cj', 'cj', 'cj', '0', null, null);
INSERT INTO `user` VALUES ('liyang', 'liyang', 'liyang', 'liyang', 'liyang', '3', null, 'to be and not to be');
INSERT INTO `user` VALUES ('new', '123', 'newaccount', 'new', 'new', '0', null, null);
INSERT INTO `user` VALUES ('test', '1', 'test', 'test', 'test', '0', null, null);
INSERT INTO `user` VALUES ('xiong', '2', '1', '我是谁', '我在哪', '1', null, null);
INSERT INTO `user` VALUES ('刁筠昊', '1', '刁筠昊', '名字', '刁筠昊', '1', null, '随便你');
INSERT INTO `user` VALUES ('熊', '熊熊', '1', '我是谁', '我在哪', '1', null, null);
INSERT INTO `user` VALUES ('熊2', '1', '1', '我是谁', '我在哪', '1', null, null);
INSERT INTO `user` VALUES ('程钰翔', '1', '1234342344', '名字', '程钰翔', '0', null, '别问，问就是划水！再问睡觉！');
