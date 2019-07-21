

INSERT INTO user_info (user_id, user_name, user_password, user_email, user_phone, user_age, user_sex, user_address, user_head_url, user_nick_name) VALUES (1,'houyichao', '123123', 'houyichaochao@gmail.com', NULL, NULL, NULL, NULL, NULL, '侯艺超');
INSERT INTO user_info (user_id, user_name, user_password, user_email, user_phone, user_age, user_sex, user_address, user_head_url, user_nick_name) VALUES (2, 'super_admin', '123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO user_info (user_id, user_name, user_password, user_email, user_phone, user_age, user_sex, user_address, user_head_url, user_nick_name) VALUES (3, 'admin', '123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL);




INSERT INTO film_info (mname, actor, director, mimage, mdesc, mtime, hot_flag, cid ) VALUES ('毒液', '汤姆-哈迪', '鲁本-弗雷斯彻', 'images/movie1.jpg', '艾迪（汤姆·哈迪 Tom Hardy 饰）是一位深受观众喜爱的新闻记者，和女友安妮（米歇尔·威廉姆斯 Michelle Williams 饰）相恋多年，彼此之间感情十分要好。安妮是一名律师，接手了生命基金会的案件，在女友的邮箱里，艾迪发现了基金会老板德雷克（里兹·阿迈德 Riz Ahmed 饰）不为人知的秘密。为此，艾迪不仅丢了工作，女友也离他而去。 
　　之后，生命基金会的朵拉博士（珍妮·斯蕾特 Jenny Slate 饰）找到了艾迪，希望艾迪能够帮助她阻止德雷克疯狂的罪行。在生命基金会的实验室里，艾迪发现了德雷克进行人体实验的证据，并且在误打误撞之中被外星生命体毒液附身。回到家后，艾迪和毒液之间形成了共生关系，他们要应对的是德雷克派出的一波又一波杀手。', '2018', 1, 1);

alter  table film_info modify  column mdesc  varchar(1500) DEFAULT NULL COMMENT '影片详情'; -- 正常，能修改字段类型、类型长度、默认值、注释
alter  table film_info change acthor actor char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL  COMMENT '注释' -- 正常，能修改字段名、字段类型、类型长度、默认值、注释
