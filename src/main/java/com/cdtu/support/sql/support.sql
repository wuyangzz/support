

USE supporttibet;

DROP TABLE IF EXISTS school;

CREATE TABLE school(
  id VARCHAR(32) COMMENT 'ID',
  schoolName  VARCHAR(64) COMMENT '学校名称',
  city VARCHAR(64) COMMENT '城市',
  info TEXT COMMENT '学校简介',
  isGo VARCHAR(4) COMMENT '是否愿意去',
  isNeed VARCHAR(4) COMMENT '是否需要',
  history TEXT COMMENT '历史',
  createTime VARCHAR(64) COMMENT '创建时间',
  other VARCHAR(255) COMMENT '其他，预留字段',
  PRIMARY KEY (id)
);


DROP TABLE IF EXISTS User;

CREATE TABLE User(
  id VARCHAR(32) COMMENT '用户id',
  username  VARCHAR(32) COMMENT '用户名',
  password VARCHAR(32) COMMENT '密码',
  level INT COMMENT '级别',
  telephone VARCHAR(16) COMMENT '联系电话',
  qq  VARCHAR(16) COMMENT 'qq',
  email VARCHAR(16) COMMENT '邮箱',
  schoolId VARCHAR(32) COMMENT '学校ID',
  schoolName VARCHAR(64) COMMENT '学校名称',
  createTime VARCHAR(64) COMMENT '创建时间',
  address VARCHAR(255) COMMENT '地址',
  gender VARCHAR(8) COMMENT '性别',
  other VARCHAR(255) COMMENT '其他，预留',
  PRIMARY KEY (id),
  CONSTRAINT fk_schoolId FOREIGN KEY (schoolId) REFERENCES school(id)
);