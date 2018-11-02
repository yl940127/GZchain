DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `product`;
DROP TABLE IF EXISTS `share`;
DROP TABLE IF EXISTS `user_share`;

CREATE TABLE  `users`(
    userId      INT(20)     NOT NULL AUTO_INCREMENT
    COMMENT 'id',
    username    VARCHAR(20) NOT NULL
    COMMENT '用户名',
    PASSWORD    VARCHAR(20) NOT NULL
    COMMENT '密码',
    email       VARCHAR(20) NOT NULL
    COMMENT '邮箱',
    realName     VARCHAR(20)
    COMMENT '真实姓名',
    telNum       VARCHAR(12)
    COMMENT '电话号码',
    idCard       VARCHAR(19)
    COMMENT '身份证',
    birthday     DATETIME
    COMMENT '生日',
    education    VARCHAR(19),
    COMMENT '教育',
    sex          INT
    COMMENT '性别',
    headImgUrl   VARCHAR(200)
    COMMENT '头像',
    PRIMARY KEY `userId`(`userId`)
)
  COMMENT '用户表';

CREATE TABLE `product` (
  id          INT(20)        NOT NULL AUTO_INCREMENT
  COMMENT 'id',
  name        VARCHAR(32)    NOT NULL
  COMMENT '商品名称',
  price       DECIMAL(10, 2) NOT NULL
  COMMENT '价格',
  status      CHAR(20)       NOT NULL
  COMMENT '商品状态',
  store_num   INT(20)                 DEFAULT 0
  COMMENT '库存',
  sale_num    INT(20)                 DEFAULT 0
  COMMENT '销量',
  image_urls  VARCHAR(512)   NOT NULL
  COMMENT '商品图片url',
  comment_num INT(20)                 DEFAULT 0
  PRIMARY KEY `id`(`id`)
)
  COMMENT '商品表';

CREATE TABLE `share`(
  id          INT(20)       NOT NULL AUTO_INCREMENT
  COMMENT 'id',
  product_id  INT(20)       NOT NULL
  COMMENT '商品id',
  PRIMARY KEY `id`(`id`),
  KEY `product_id`(`product_id`)
)
  COMMENT '商品分享表';

CREATE TABLE `user_share`(
  id         INT(20)  NOT NULL AUTO_INCREMENT
  COMMENT 'id',
  user_id    INT(20)  NOT NULL
  COMMENT '用户id',
  share_id   INT(20)  NOT NULL
  COMMENT '商品分享id',
  PRIMARY KEY `id`(`id`),
  KEY `user_id`(`user_id`),
  KEY `share_id`(`share_id`)
)
   COMMENT '用户分享关系表';