CREATE DATABASE `pms`;

grant all privileges ON pms.* TO 'admin'@'localhost' IDENTIFIED BY 'admin9123' with GRANT OPTION;


FLUSH PRIVILEGES;


create table `pms_info` (
  `no` int(11) not null auto_increment comment '번호'
, `name` varchar(60) not null comment '이름'
, `e_nm` varchar(60) not null comment '영문명'
, `nick_nm` varchar(60) not null comment '별명'
, `age` int(11) null comment '나이'
, `sex` char(1) null comment '성별'
, `address1` varchar(100) null comment '주소1'
, `address2` varchar(100) null comment '주소2'
, `postno` char(7) null comment '우편번호'
, `email` varchar(100) null comment '직업'
, `job` varchar(40) null COMMENT '직업'
, `telno` varchar(100) null comment '연락처'
, `cellno` varchar(100) null comment '휴대폰번호'
, `sns1_addr` VARCHAR(100) NULL COMMENT 'sns1주소'
, `sns2_addr` VARCHAR(100) NULL COMMENT 'sns2주소'
, `sns3_addr` VARCHAR(100) NULL COMMENT 'sns3주소'
, `memo1` varchar(100) null comment '메모1'
, `memo2` varchar(100) null comment '메모2'
, `memo3` varchar(100) null comment '메모3'
, primary key(`no`)
) DEFAULT CHARSET=utf8 COMMENT='인물정보 정보테이블';


create table `commcd_info` (
  `code` VARCHAR(6) NOT NULL
, `code_nm` VARCHAR(80) NOT null
, `parent_cd` VARCHAR(6) null
, primary key(`code`)
) DEFAULT CHARSET=utf8 COMMENT='공통코드 정보테이블';


CREATE TABLE `job_info` (
  `job_nm` VARCHAR(60) NOT NULL COMMENT '직업명'
, `job_type` CHAR(3) NOT NULL DEFAULT '000' COMMENT '직업분류'
, `company_nm` VARCHAR(80) NULL COMMENT '회사명'
, `company_telno` VARCHAR(13) NULL COMMENT '회사번호'
, `company_addr1` VARCHAR(100) NULL COMMENT '회사주소1'
, `company_addr2` VARCHAR(100) NULL COMMENT '회사주소2'
, `company_postno` CHAR(7) NULL COMMENT '우편번호'
, `company_email` VARCHAR(100) NULL COMMENT '회사이메일'
) DEFAULT CHARSET=utf8 COMMENT='직업정보 정보테이블';

COMMIT;

