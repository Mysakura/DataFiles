/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-12-13 08:39:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bless
-- ----------------------------
DROP TABLE IF EXISTS `bless`;
CREATE TABLE `bless` (
  `bless_id` int(11) NOT NULL AUTO_INCREMENT,
  `bless_content` varchar(255) NOT NULL,
  `bless_time` datetime NOT NULL,
  PRIMARY KEY (`bless_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bless
-- ----------------------------
INSERT INTO `bless` VALUES ('1', 'You may not be the only reason why I smile，but you are definitely my favorite one. 也许你不是我微笑的唯一理由，但一定是我最喜欢的那个。', '2017-11-04 10:26:27');
INSERT INTO `bless` VALUES ('2', 'When you can\'t remember why you\'re hurt，that\'s when you\'re healed. 有一天，当你发现再也记不起为了什么而受伤，那就是痊愈之时。', '2017-11-04 10:26:55');
INSERT INTO `bless` VALUES ('3', 'Precious things are very few in this world. That is the reason there is just one you. 在这世上珍贵的东西总是罕有，所以这世上只有一个你。', '2017-11-04 10:27:17');
INSERT INTO `bless` VALUES ('4', 'Love is color balloon,no matter how beautiful color,can not afford a barbed tip gently. 爱情是彩色气球，无论颜色如何艳丽，经不起针尖轻轻一刺。', '2017-11-04 10:27:32');
INSERT INTO `bless` VALUES ('5', 'To the world you may be one person，but to one person you may be the world. 对这个世界来说，你只是一个人；但是对某个人来说，你却是一整个世界。', '2017-11-04 10:28:19');
INSERT INTO `bless` VALUES ('6', 'Your future depends on your dreams. So go to sleep. 现在的梦想决定着你的将来,所以还是再睡一会吧', '2017-11-04 10:28:48');
INSERT INTO `bless` VALUES ('7', 'Distance makes the hearts grow fonder. 距离使两颗心靠得更近', '2017-11-04 10:29:16');
INSERT INTO `bless` VALUES ('8', 'Finger rift,twisted in the love. 如果你为着错过夕阳而哭泣，那么你就要错群星了。', '2017-11-04 10:29:38');
INSERT INTO `bless` VALUES ('9', 'Don′t cry because it is over, smile because it happened. 不要因为结束而哭泣，微笑吧，为你的曾经拥有', '2017-11-04 10:29:57');
INSERT INTO `bless` VALUES ('10', 'Your smiling at me is my daily dose of magic. 你嫣然的微笑是我每日享受到的魅力。', '2017-11-04 10:30:36');
INSERT INTO `bless` VALUES ('11', 'The road to a lovers house is never long. 通往爱人家里的路总不会漫长。', '2017-11-04 10:30:54');
INSERT INTO `bless` VALUES ('12', 'The sandflass remembers the time we lost. 沙漏记得`我们遗忘的时光。', '2017-11-04 10:31:09');
INSERT INTO `bless` VALUES ('13', 'If winter comes, can spring be far behind? 冬天来了，春天还会远吗?', '2017-11-04 10:31:25');
INSERT INTO `bless` VALUES ('14', 'Life is the flower for which love is the honey. 生命如花，爱情是蜜。', '2017-11-04 10:31:37');
INSERT INTO `bless` VALUES ('15', 'There is no remedy for love but to love more. 治疗爱的创伤唯有加倍地去爱。', '2017-11-04 10:31:47');
INSERT INTO `bless` VALUES ('16', 'what a loveiy world it well be with you away. 没有了你．这个世界多么寂寞。', '2017-11-04 10:32:21');
INSERT INTO `bless` VALUES ('17', 'if a thing is worth doing it is worth doing well. 如果事情值得做，就值得做好。', '2017-11-04 10:32:31');
INSERT INTO `bless` VALUES ('18', 'If I know what love is, it is because of you. 因为你，我懂得了爱', '2017-11-04 10:32:42');
INSERT INTO `bless` VALUES ('19', 'every little kindness you show me would shake my determination. 你对我一点点好，都会动摇我的决心。', '2017-11-04 10:32:56');
INSERT INTO `bless` VALUES ('20', 'If you continually give, you will continually have. 付出愈多, 拥有愈多。', '2017-11-04 10:33:14');
INSERT INTO `bless` VALUES ('21', 'nothing is impossible for a willing heart. 心之所愿，无所不成。', '2017-11-04 10:33:53');
INSERT INTO `bless` VALUES ('22', 'A candle lights others and consumes itself. 蜡烛焚自身，光亮照别人。 ', '2017-11-04 10:34:24');
INSERT INTO `bless` VALUES ('23', 'The road to knowledge begins with the turn of the page. 知识之路从阅读开始。', '2017-11-04 10:34:38');
INSERT INTO `bless` VALUES ('24', 'Save water. Shower with your girlfriend. 要节约用水,尽量和女友一起洗澡。', '2017-11-04 10:34:51');
INSERT INTO `bless` VALUES ('25', 'Many a false step is made by standing still. 停顿就是造成错误的第一步。', '2017-11-04 10:35:02');
INSERT INTO `bless` VALUES ('26', 'A covetous man is good to none but worse to himself. 贪婪的人对别人毫无好处，对自己却坏处更大。 ', '2017-11-04 10:35:16');
INSERT INTO `bless` VALUES ('27', 'First love is unforgettable all ones life. 初恋是永生难忘的。', '2017-11-04 10:35:27');
INSERT INTO `bless` VALUES ('28', 'Love is a vine that grows into our hearts. 爱是长在我们心里的藤蔓。', '2017-11-04 10:35:38');
INSERT INTO `bless` VALUES ('29', 'A fool can ask more questions than seven wise men can answer. 一愚发问，七智结舌。', '2017-11-04 10:36:16');
INSERT INTO `bless` VALUES ('30', 'At the touch of love everyone becomes a poet. 每一个沐浴在爱河中的人都是诗人。', '2017-11-04 10:36:27');
INSERT INTO `bless` VALUES ('31', 'Being with you is like walking on a very clear morning. 和你在一起就像在一个清爽的早晨漫步。', '2017-11-04 10:36:38');
INSERT INTO `bless` VALUES ('32', 'Take away love, and our earth is a tomb. 没有了爱，地球便成了坟墓。', '2017-11-04 10:36:48');
INSERT INTO `bless` VALUES ('33', 'Love warms more than a thousand fires. 爱情的炽热胜过千万团的火。', '2017-11-04 10:37:02');
INSERT INTO `bless` VALUES ('34', 'Ill think of you every step of the way. 我会想你，在漫漫长路的每一步。', '2017-11-04 10:37:12');
INSERT INTO `bless` VALUES ('35', 'The heart that once truly loves never forgets. 真挚恋爱过的心永不忘却。', '2017-11-04 10:37:23');
INSERT INTO `bless` VALUES ('36', 'Look into my eyes - you will see what you mean to me. 看看我的眼睛，你会发现你对我而言意味着什么。', '2017-11-04 10:37:34');
INSERT INTO `bless` VALUES ('37', 'nothing is impossible for a willing heart. 心之所愿，无所不成。', '2017-11-04 10:37:44');
INSERT INTO `bless` VALUES ('38', 'A light heart carries you through all the hard times very quickly. 轻松的心会带你很快度过难关。', '2017-11-04 10:38:57');
INSERT INTO `bless` VALUES ('39', 'Where there is great love, there are always miracles. 哪里有真爱存在，哪里就有奇迹。', '2017-11-04 10:39:11');
INSERT INTO `bless` VALUES ('40', 'Adversity successfully overcome is the highest glory. 成功地克服困难是最大的光荣。', '2017-11-04 10:39:28');
INSERT INTO `bless` VALUES ('41', 'Fading is true while flowering is past。凋谢是真实的 盛开只是一种过去。', '2017-11-04 10:39:38');
INSERT INTO `bless` VALUES ('42', 'If I had a single flower for everytime I think about you，I could walk for ever in my garden. 假如每次想起你我都会得到一朵鲜花，那么我将永远在花丛中徜徉。', '2017-11-25 19:56:29');
INSERT INTO `bless` VALUES ('43', 'A person who truly loves you will never let you go, no matter how hard the situation is. 真心爱你的人永远不会放你走，不管遇到多大的困境 ', '2017-11-26 13:13:53');
INSERT INTO `bless` VALUES ('44', 'Be nice to people on the way up, because you\'ll need them on your way down.向上爬时，对遇到的人好点，因为掉下来时，你还会遇到他们。', '2017-11-27 09:49:32');
INSERT INTO `bless` VALUES ('45', 'Beauty is superficial, but ugly goes down to the bone. 美貌固然肤浅，丑陋却能深入骨髓 ', '2017-11-27 12:16:48');
INSERT INTO `bless` VALUES ('46', 'Before finding the right people, the only need to do is to make yourself good enough. ------ 在找到合适的人之前，唯一需要做的，就是让自己足够的优秀。 ', '2017-11-27 12:19:32');
INSERT INTO `bless` VALUES ('47', 'Being nice to someone you Dislike doesn’t mean you’re a Fake. It means you’re Mature enough to Tolerate your dislike towards them. 能够善待不太喜欢的人， 并不代表你虚伪， 而意味着你内心成熟到可以容纳这些不喜欢。', '2017-11-27 13:58:10');
INSERT INTO `bless` VALUES ('48', 'Buried city, to shut all lights. 埋下一座城，关了所有灯。 ', '2017-11-27 14:09:20');
INSERT INTO `bless` VALUES ('49', 'Be happy. It’s one way of being wise.- Sidonie Gabrielle Colette 做个快乐的人。那是英明智慧的一条路径。', '2017-11-27 14:20:14');
INSERT INTO `bless` VALUES ('50', 'Count your age by friends, not years. Count your life by smiles, not tears ~ John Lennon. 衡量自己年不年轻，看朋友，而不是看年纪。 评价自己过得好不好，看笑容，而不是看眼泪。---约翰列侬 ', '2017-11-27 14:25:45');
