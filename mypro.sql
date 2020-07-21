SET NAMES UTF8;
DROP DATABASE IF EXISTS mypro;
CREATE DATABASE mypro CHARSET=UTF8;
USE mypro;
CREATE TABLE user(
    id int PRIMARY KEY AUTO_INCREMENT,
    uname varchar(50) NOT NULL,
    pswd varchar(50) NOT NULL
);
-- 详情配置
CREATE TABLE detail(
    id int PRIMARY KEY AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    price int NOT NULL,
    dtype VARCHAR(255) NOT NULL,
    midimg VARCHAR(255) NOT NULL,
    bigimg VARCHAR(255) NOT NULL,
    smallimg VARCHAR(255) NOT NULL,
    showimg VARCHAR(255) not NULL
);
-- 商品列表
CREATE TABLE list(
    id int PRIMARY KEY AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    price varchar(10) NOT NULL,
    img varchar(100) NOT NULL
);
-- 插入账户数据
INSERT INTO user VALUES (1,'max','123456');
-- 插入列表数据
INSERT INTO list VALUES(1,'联想(Lenovo)小新Pro13 2020 锐龙版 全面屏性能超轻薄笔记本电脑(6核R5-4600U 16G 512G 2.5K屏 高色域)灰','4999','shouhuan1.jpg');
INSERT INTO list(title,price,img) VALUES('华为 HUAWEI Mate30 Pro(5G) 8GB+256GB 全网通 双卡双待 星河银','6399','shouhuan2.jpg');
INSERT INTO list(title,price,img) VALUES('联想（Lenovo）天逸510Pro英特尔酷睿i3个人商务台式机电脑整机（I3-9100 8G 1T+256G SSD ）23英寸','3899','shouhuan3.jpg');
INSERT INTO list(title,price,img) VALUES('TCL 55C66黑 55英寸 4K超高清 全生态HDR 圆角全面屏 全场景AI 电视）','2999','shouhuan4.jpg');
INSERT INTO list(title,price,img) VALUES('美的（Midea） 大1匹 一级能效 全直流变频 冷暖壁挂式空调 冷静星Ⅱ KFR-26GW/BP3DN8Y-PH200(B1)','2099','shouhuan5.jpg');
INSERT INTO list(title,price,img) VALUES('索尼（SONY）DSC-RX100M5A 黑卡数码相机 1英寸大底（蔡司镜头 高速对焦 4K视频 24张/秒连拍 黑卡5A）','5769','jinhuaqi.jpg');

-- 插入详情配置数据
INSERT INTO detail VALUES(NULL,
'联想(Lenovo)小新Pro13.3英寸全面屏超轻薄笔记本电脑',
'4499',
'Air13/i5-10210U&Air13/i7十代独显&Air13/十代i5/16G&小新Pro13 2020款',
'xx1.webp-xx2.webp-xx3.webp-xx4.webp-xx5.webp',
'xx1.webp-xx2.webp-xx3.webp-xx4.webp-xx5.webp',
'小新small1.webp-小新small2.jpg-小新small3.jpg-小新small4.jpg-小新small5.jpg',
'shouhuan1.jpg'
);
INSERT INTO detail VALUES(NULL,
'华为 HUAWEI Mate30 Pro(5G) 8GB+256GB 全网通 双卡双待 星河银',
'6399',
'亮黑8GB+512GB&星河银8GB+256GB&翡冷翠8GB+128GB',
'mate1.webp-mate2.webp-mate3.webp-mate4.webp-mate5.webp',
'mate1.webp-mate2.webp-mate3.webp-mate4.webp-mate5.webp',
'mate1.webp-mate2.webp-mate3.webp-mate4.webp-mate5.webp',
'shouhuan2.jpg'
);
INSERT INTO detail VALUES(NULL,
'联想（Lenovo）天逸510Pro英特尔酷睿i3个人商务台式机电脑整机',
'3899',
'i3-8100/4+16G傲腾&i5-9400/1T+256&R5/8G/512固态&510s锐龙',
'len1.webp-len2.webp-len3.webp-len4.webp-len5.webp',
'len1.webp-len2.webp-len3.webp-len4.webp-len5.webp',
'len1.webp-len2.webp-len3.webp-len4.webp-len5.webp',
'shouhuan3.jpg'
);
INSERT INTO detail VALUES(NULL,
'TCL 55C66黑 55英寸 4K超高清 全生态HDR 圆角全面屏 全场景AI 电视',
'2999',
'以换带修1年&延长保修3年',
'tcl1.webp-tcl2.jpg-tcl3.webp-tcl4.webp-tcl5.webp',
'tcl1.webp-tcl2.jpg-tcl3.webp-tcl4.webp-tcl5.webp',
'tcl1.webp-tcl2.jpg-tcl3.webp-tcl4.webp-tcl5.webp',
'shouhuan4.jpg'
);
INSERT INTO detail VALUES(NULL,
'格力(GREE) 大1匹 智控WIFI 变频 舒尚 冷暖电辅 壁挂式空调 KFR-26GW/(26559)FNAb-A3(WIFI)',
'2099',
'以换带修1年 50.00&延长保修3年200.00',
'gree1.webp-gree2.webp-gree3.webp-gree4.webp-gree5.webp',
'gree1.webp-gree2.webp-gree3.webp-gree4.webp-gree5.webp',
'gree1.webp-gree2.webp-gree3.webp-gree4.webp-gree5.webp',
'shouhuan5.jpg'
);
INSERT INTO detail VALUES(NULL,
'索尼（SONY）DSC-RX100M5A 黑卡数码相机 1英寸大底（蔡司镜头 高速对焦 4K视频 24张/秒连拍 黑卡5A）',
'5769',
'延长保修1年$199.00&意外+延保一年$600.00',
'sony1.webp-sony2.webp-sony3.webp-sony4.webp-sony5.webp',
'sony1.webp-sony2.webp-sony3.webp-sony4.webp-sony5.webp',
'sony1.webp-sony2.webp-sony3.webp-sony4.webp-sony5.webp',
'jinhuaqi.jpg'
);