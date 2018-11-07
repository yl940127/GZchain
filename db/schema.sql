DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `product`;
DROP TABLE IF EXISTS `share`;

CREATE TABLE  `users`(
    userId      INT(20)             NOT NULL AUTO_INCREMENT
    COMMENT 'id',
    username    VARCHAR(20)         NOT NULL
    COMMENT '用户名',
    PASSWORD    VARCHAR(20)         NOT NULL
    COMMENT '密码',
    email       VARCHAR(20)         NOT NULL
    COMMENT '邮箱',
    realName    VARCHAR(20)
    COMMENT '真实姓名',
    telNum      VARCHAR(12)
    COMMENT '电话号码',
    idCard      VARCHAR(19)
    COMMENT '身份证',
    birthday     DATETIME
    COMMENT '生日',
    education   VARCHAR(20)
    COMMENT '教育',
    gender        CHAR(8)
    COMMENT '性别',
    headImgUrl  VARCHAR(200)
    COMMENT '头像',
    PRIMARY KEY `userId`(`userId`)
)
  COMMENT '用户表';

CREATE TABLE `product` (
  id          INT(20)               NOT NULL  AUTO_INCREMENT
  COMMENT 'id',
  NAME        VARCHAR(32)    NOT NULL
  COMMENT '商品名称',
  price       DECIMAL(10, 2)        NOT NULL
  COMMENT '价格',
  STATUS      CHAR(20)              NOT NULL
  COMMENT '商品状态',
  store_num   INT(20)               DEFAULT 0
  COMMENT '库存',
  sale_num    INT(20)               DEFAULT 0
  COMMENT '销量',
  image_urls  VARCHAR(512)          NOT NULL
  COMMENT '商品图片url',
  comment_num INT(20)               DEFAULT 0
  COMMENT '评论数',
  PRIMARY KEY `id`(`id`)
)
  COMMENT '商品表';

CREATE TABLE `share`(
  id          INT(20)              NOT NULL AUTO_INCREMENT
  COMMENT 'id',
  product_id  INT(20)              NOT NULL
  COMMENT '商品id',
  user_id    INT(20)               NOT NULL
  COMMENT '用户id',
  path      VARCHAR(200)
  COMMENT '转发路径',
  PRIMARY KEY `id`(`id`),
  KEY `product_id`(`product_id`),
  KEY `user_id`(`user_id`)
)
  COMMENT '用户分享表';

