/*
 Navicat Premium Data Transfer

 Source Server         : hahaha
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : cook

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 03/01/2020 23:42:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for achievemenkindtinfo
-- ----------------------------
DROP TABLE IF EXISTS `achievemenkindtinfo`;
CREATE TABLE `achievemenkindtinfo`  (
  `typeid` int(10) NOT NULL AUTO_INCREMENT,
  `meaning` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `privileges` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`typeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for articleinfo
-- ----------------------------
DROP TABLE IF EXISTS `articleinfo`;
CREATE TABLE `articleinfo`  (
  `articleId` int(20) NOT NULL AUTO_INCREMENT,
  `userId` int(20) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `urls` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `praiseNum` int(10) NULL DEFAULT NULL,
  `readNum` int(10) NULL DEFAULT NULL,
  `commentNum` int(10) NULL DEFAULT NULL,
  `avgscore` float(5, 2) NULL DEFAULT NULL,
  `creatStamp` bigint(13) NULL DEFAULT NULL,
  `isTop` int(1) NULL DEFAULT NULL,
  `visitNum` int(10) NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`articleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10024 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for commentinfo
-- ----------------------------
DROP TABLE IF EXISTS `commentinfo`;
CREATE TABLE `commentinfo`  (
  `commentId` int(20) NOT NULL AUTO_INCREMENT,
  `userId` int(20) NOT NULL,
  `contentId` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(3) NOT NULL,
  `creatStamp` bigint(13) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`commentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for friendrange
-- ----------------------------
DROP TABLE IF EXISTS `friendrange`;
CREATE TABLE `friendrange`  (
  `userId` int(20) NOT NULL,
  `friendId` int(20) NOT NULL,
  `creatTimeStamp` bigint(13) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`userId`, `friendId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pictureurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(10) NULL DEFAULT NULL,
  `number` int(10) NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` bigint(13) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `contentId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createStamp` bigint(13) NOT NULL,
  `isCollected` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`userId`, `contentId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `msgId` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(20) NOT NULL,
  `receive` int(255) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` bigint(13) NOT NULL,
  `isread` int(1) NOT NULL,
  `canread` int(1) NOT NULL,
  PRIMARY KEY (`msgId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(20) NULL DEFAULT NULL,
  `good_id` int(20) NULL DEFAULT NULL,
  `is_finish` int(1) NULL DEFAULT NULL,
  `timestamp` bigint(13) NULL DEFAULT NULL,
  `scoreSpent` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reward
-- ----------------------------
DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward`  (
  `rewardId` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(20) NOT NULL,
  `receiver` int(20) NOT NULL,
  `size` int(20) NOT NULL,
  `timestamp` bigint(13) NOT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`rewardId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `type` int(1) NOT NULL DEFAULT 0 COMMENT '用户类别:普通用户,VIP用户,管理员',
  `achievement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `socre` float(10, 0) NOT NULL DEFAULT 0,
  `level` int(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`userId`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for videoinfo
-- ----------------------------
DROP TABLE IF EXISTS `videoinfo`;
CREATE TABLE `videoinfo`  (
  `videoid` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pictureurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `urls` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `praiseNum` int(10) NULL DEFAULT NULL,
  `readNum` int(10) NULL DEFAULT NULL,
  `commentNum` int(10) NULL DEFAULT NULL,
  `avgscore` float(5, 2) NULL DEFAULT NULL,
  `creatStamp` bigint(13) NULL DEFAULT NULL,
  `isTop` int(1) NULL DEFAULT NULL,
  `userId` int(20) NULL DEFAULT NULL,
  `visitNum` int(10) NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`videoid`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Triggers structure for table articleinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `score_article_trigger`;
delimiter ;;
CREATE TRIGGER `score_article_trigger` AFTER DELETE ON `articleinfo` FOR EACH ROW begin
			update userinfo 
            set score = score + 5
            where userinfo.userId = articleinfo.userId;
        end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table articleinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `score_trigger`;
delimiter ;;
CREATE TRIGGER `score_trigger` AFTER DELETE ON `articleinfo` FOR EACH ROW begin
			update userinfo 
            set score = score + 5
            where userinfo.userId = articleinfo.userId;
        end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table articleinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `achievemen_chuancai1`;
delimiter ;;
CREATE TRIGGER `achievemen_chuancai1` AFTER INSERT ON `articleinfo` FOR EACH ROW begin
set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE articleinfo.tag Like '%川菜%'  and articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%川菜小能手%'  and userinfo.userId=new.userId;
if @var>=3 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/川菜小能手')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+50  where userinfo.userId=new.userId;
end if; 


set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE articleinfo.tag Like '%川菜%'  and articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%川菜达人%'  and userinfo.userId=new.userId;
if @var>=10 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/川菜达人')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+100  where userinfo.userId=new.userId;
end if; 


set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE articleinfo.tag Like '%川菜%'  and articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%川菜大师%'  and userinfo.userId=new.userId;
if @var>=50 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/川菜大师')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+500  where userinfo.userId=new.userId;
end if; 


set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE  articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%做菜小能手%'  and userinfo.userId=new.userId;
if @var>=3 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/做菜小能手')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+500  where userinfo.userId=new.userId;
end if; 



set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE  articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%做菜达人%'  and userinfo.userId=new.userId;
if @var>=3 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/做菜达人')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+500  where userinfo.userId=new.userId;
end if; 


set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE  articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%做菜大师%'  and userinfo.userId=new.userId;
if @var>=3 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/做菜大师')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+500  where userinfo.userId=new.userId;
end if; 



set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE articleinfo.tag Like '%卤菜%'  and articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%卤菜小能手%'  and userinfo.userId=new.userId;
if @var>=3 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/卤菜小能手')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+50  where userinfo.userId=new.userId;
end if; 


set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE articleinfo.tag Like '%卤菜%'  and articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%卤菜达人%'  and userinfo.userId=new.userId;
if @var>=10 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/卤菜达人')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+100  where userinfo.userId=new.userId;
end if; 


set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE articleinfo.tag Like '%卤菜%'  and articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%卤菜大师%'  and userinfo.userId=new.userId;
if @var>=50 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/卤菜大师')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+500  where userinfo.userId=new.userId;
end if; 



set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE articleinfo.tag Like '%汤%'  and articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%做汤小能手%'  and userinfo.userId=new.userId;
if @var>=3 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/做汤小能手')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+50  where userinfo.userId=new.userId;
end if; 


set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE articleinfo.tag Like '%汤%'  and articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%做汤达人%'  and userinfo.userId=new.userId;
if @var>=10 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/做汤达人')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+100  where userinfo.userId=new.userId;
end if; 


set @var=0;
set @is_exist=0;
SELECT COUNT(userId) INTO @var FROM articleinfo
WHERE articleinfo.tag Like '%汤%'  and articleinfo.userId=new.userId;
SELECT COUNT(userId) INTO @is_exist FROM userinfo
WHERE userinfo.achievement Like '%做汤大师%'  and userinfo.userId=new.userId;
if @var>=50 AND @is_exist=0 then 
 UPDATE userinfo SET userinfo.achievement=concat(userinfo.achievement, '/做汤大师')  where userinfo.userId=new.userId;
 UPDATE userinfo SET userinfo.socre=userinfo.socre+500  where userinfo.userId=new.userId;
end if; 

end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table commentinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `update_article_avgscore`;
delimiter ;;
CREATE TRIGGER `update_article_avgscore` AFTER INSERT ON `commentinfo` FOR EACH ROW begin
UPDATE articleinfo set articleinfo.avgscore=(articleinfo.avgscore*articleinfo.commentNum+new.score)/(articleinfo.commentNum+1)
WHERE concat('A', articleinfo.articleId) = new.contentid;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table commentinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `update_video_avgscore`;
delimiter ;;
CREATE TRIGGER `update_video_avgscore` AFTER INSERT ON `commentinfo` FOR EACH ROW begin
UPDATE videoinfo set videoinfo.avgscore=(videoinfo.avgscore*videoinfo.commentNum+new.score)/(videoinfo.commentNum+1)
WHERE concat('V', videoinfo.videoid) = new.contentid;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table videoinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `score_video_trigger`;
delimiter ;;
CREATE TRIGGER `score_video_trigger` AFTER INSERT ON `videoinfo` FOR EACH ROW begin
			update userinfo 
            set score = score + 5
            where userinfo.userId = videoinfo.userId;
        end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
