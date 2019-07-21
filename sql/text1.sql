CREATE TABLE IF NOT EXISTS `user`(
`uname` VARCHAR(60)  NOT NULL,
`age` INT NOT NULL, 
`dname` VARCHAR(100) NOT NULL, 
`address` VARCHAR(100) NOT NULL,
`birth` VARCHAR(100) NOT NULL,
`edesc` VARCHAR(100) NOT NULL,
PRIMARY KEY (`ename`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8; 

CREATE TABLE IF NOT EXISTS `runoob_tbl`(
   `runoob_id` INT UNSIGNED AUTO_INCREMENT,
   `runoob_title` VARCHAR(100) NOT NULL,
   `runoob_author` VARCHAR(40) NOT NULL,
   `submission_date` DATE,
   PRIMARY KEY ( `runoob_id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;