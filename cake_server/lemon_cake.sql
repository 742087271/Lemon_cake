set names utf8;
drop database if EXISTS lemon_cake;
CREATE database lemon_cake CHARSET=utf8;
use lemon_cake;


#1:进入库  lemon_cake
-- USE lemon_cake;
-- #2:创建表 xz_news
-- #技巧1:库名;表名;列表;全英文小写字母
-- CREATE TABLE xz_news(
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   title VARCHAR(50),
--   ctime DATETIME,
--   point INT,
--   img_url VARCHAR(255),
--   content VARCHAR(255) 
-- );
-- INSERT INTO xz_news VALUES(1,'123',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(2,'124',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(3,'1233',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(4,'124',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(5,'125',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(6,'126',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(7,'127',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(8,'128',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(9,'129',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(11,'1231',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(12,'1232',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(13,'1233',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(14,'1234',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(15,'1235',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(16,'1236',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(17,'1237',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(18,'1238',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(19,'1239',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(21,'12322',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");
-- INSERT INTO xz_news VALUES(22,'12322',now(),0,
-- "http://127.0.0.1:3002/img/1.jpg","..");

#货币 小数计算误差
#价格 购物车合计 
#double DECIMAL(10,2)
#严格   将货币转换分单位  1.99 -> 199
#显示  1.99
#3:添加20条记录
#4:查询

#1:创建评论表 39
#   表名 几列 列名
#   cake_comment
#   id        INT        评论编号
#   nid       INT        评论所属新闻编号
#   user_name VARCHAR(25)评论人名称
#   ctime     DATETIME   时间
#   content   VARCHAR(120)内容

USE lemon_cake;
CREATE TABLE cake_comment(
  ccid INT PRIMARY KEY AUTO_INCREMENT,
  caid INT,
  user_name VARCHAR(25),
  ctime DATETIME,
  content VARCHAR(120)
);
#2:添加15条
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'111');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'112');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'113');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'114');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'115');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'116');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'117');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'118');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'119');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1110');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1111');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1112');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1113');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1114');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1115');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1116');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'111');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'112');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'113');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'114');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'115');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'116');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'117');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'118');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'119');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1110');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1111');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1112');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1113');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1114');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1115');
INSERT INTO cake_comment VALUES(null,1,'dd',now(),'1116');

-- CREATE TABLE xz_login(
--   id INT PRIMARY KEY AUTO_INCREMENT,
--   uname VARCHAR(25) NOT NULL DEFAULT '',
--   upwd  VARCHAR(32) NOT NULL DEFAULT ''
-- );
-- INSERT INTO xz_login VALUES(null,'dd',md5('123'));
-- INSERT INTO xz_login VALUES(null,'tom',md5('123'));
-- INSERT INTO xz_login VALUES(null,'jerry',md5('123'));



#cake_all [cid;img_url;name;saleTotal;discount;price,star]
CREATE TABLE cake_all(
  caid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(25),
  img_url VARCHAR(255),
  price    VARCHAR(255),
  comments        VARCHAR(255),
  discount     VARCHAR(25),
  saleTotal   VARCHAR(25),
  star    INT,
  #breakfast:5,birthday:1,candle:8,child:4,DIY:9,flower:6,gift:7,lover:2,merry:3
  cake_class  INT
);
INSERT INTO `cake_all` (`caid`, `img_url`, `name`, `saleTotal`, `discount`, `price`, `star`,`cake_class`,`comments`) VALUES
(null, 'http://127.0.0.1:3002/img/breakfast01.png', 'cake1', '925', '8.0', '28', 100,5,1),
(null, 'http://127.0.0.1:3002/img/breakfast02.png', 'cake2', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast03.png', 'cake3', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast04.png', 'cake4', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast05.png', 'cake5', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast06.png', 'cake6', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast07.png', 'cake1', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast08.png', 'cake2', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast09.png', 'cake3', '925', '8.0', '28', 85, 5,0),
(null,  'http://127.0.0.1:3002/img/breakfast10.png', 'cake4', '925', '8.0', '28', 85,5,0),
(null,  'http://127.0.0.1:3002/img/breakfast11.png', 'cake5', '925', '8.0', '28', 85,5,0),
(null,  'http://127.0.0.1:3002/img/breakfast12.png', 'cake6', '925', '8.0', '28', 85,5,0),
(null,  'http://127.0.0.1:3002/img/breakfast13.png', 'cake7', '925', '8.0', '28', 85,5,0),
(null, 'http://127.0.0.1:3002/img/breakfast01.png', 'cake1', '925', '8.0', '28', 100,5,0),
(null, 'http://127.0.0.1:3002/img/breakfast02.png', 'cake2', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast03.png', 'cake3', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast04.png', 'cake4', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast05.png', 'cake5', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast06.png', 'cake6', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast07.png', 'cake1', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast08.png', 'cake2', '925', '8.0', '28', 85, 5,0),
(null, 'http://127.0.0.1:3002/img/breakfast09.png', 'cake3', '925', '8.0', '28', 85, 5,0),
(null,  'http://127.0.0.1:3002/img/breakfast10.png', 'cake4', '925', '8.0', '28', 85,5,0),
(null,  'http://127.0.0.1:3002/img/breakfast11.png', 'cake5', '925', '8.0', '28', 85,5,0),
(null,  'http://127.0.0.1:3002/img/breakfast12.png', 'cake6', '925', '8.0', '28', 85,5,0),
(null,  'http://127.0.0.1:3002/img/breakfast13.png', 'cake7', '925', '8.0', '28', 85,5,0);
 #lemon_cake"促销列表"
#id/title/ctime/img_url/desc/discount
CREATE TABLE cake_discount(
 cdid INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(255),
 ctime DATE,
 img_url VARCHAR(255),
 desc1  VARCHAR(255),
 discount VARCHAR(20)
);
INSERT INTO `cake_discount` (`cdid`, `title`, `ctime`, `img_url`, `desc1`, `discount`) VALUES
(1, '年终大促！！', '2018-10-10', 'http://127.0.0.1:3002/img/timg.gif', '一年仅一次，年度最优惠', '6.8折'),
(2, '今日特惠！！', '2018-10-11', 'http://127.0.0.1:3002/img/carousel05.png', '七彩饼干', '5折'),
(3, '本周主打！！', '2018-10-13', 'http://127.0.0.1:3002/img/carousel03.png', '玫瑰情怀', '8.0折'),
(4, '人气商品！！', '2018-10-14', 'http://127.0.0.1:3002/img/carousel04.png', '小矮人', '6.8折'),
(5, '今日特惠！！', '2018-10-15', 'http://127.0.0.1:3002/img/carousel07.png', '多层方块', '8.8折'),
(6, '今日特惠！！', '2018-10-10', 'http://127.0.0.1:3002/img/carousel06.png', '慕斯双拼', '7.8折');








