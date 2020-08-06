Delete FROM `go_user`;
Delete FROM `go_tag`;
Delete FROM `go_article`;
Delete FROM `go_role`;

INSERT INTO `go_user`( `username`, `password`, `avatar`,`user_type`) VALUES ( 'admin', '111111', 'https://zbj-bucket1.oss-cn-shenzhen.aliyuncs.com/avatar.JPG',1);
INSERT INTO `go_user`( `username`, `password`, `avatar`,`user_type`) VALUES ( 'test', '111111', 'https://zbj-bucket1.oss-cn-shenzhen.aliyuncs.com/avatar.JPG',2);

INSERT INTO `go_tag`( `name`, `created_on`, `created_by`, `modified_on`, `modified_by`, `deleted_on`, `state`) VALUES ('1', '2019-08-18 18:56:01', 'test', NULL, '', 0, 1);
INSERT INTO `go_tag`( `name`, `created_on`, `created_by`, `modified_on`, `modified_by`, `deleted_on`, `state`) VALUES ( '2', '2019-08-16 18:56:06', 'test', NULL, '', 0, 1);
INSERT INTO `go_tag`( `name`, `created_on`, `created_by`, `modified_on`, `modified_by`, `deleted_on`, `state`) VALUES ( '3', '2019-08-18 18:56:09', 'test', NULL, '', 0, 1);

INSERT INTO `go_article`( `tag_id`, `title`, `desc`, `content`, `cover_image_url`, `created_on`, `created_by`, `modified_on`, `modified_by`, `deleted_on`, `state`) VALUES ( 1, 'test1', 'test-desc', 'test-content', '', '2019-08-19 21:00:39', 'test-created', '2019-08-19 21:00:39', '', 0, 0);
INSERT INTO `go_article`( `tag_id`, `title`, `desc`, `content`, `cover_image_url`, `created_on`, `created_by`, `modified_on`, `modified_by`, `deleted_on`, `state`) VALUES ( 1, 'test2', 'test-desc', 'test-content', '', '2019-08-19 21:00:48', 'test-created', '2019-08-19 21:00:48', '', 0, 2);
INSERT INTO `go_article`( `tag_id`, `title`, `desc`, `content`, `cover_image_url`, `created_on`, `created_by`, `modified_on`, `modified_by`, `deleted_on`, `state`) VALUES ( 1, 'test3', 'test-desc', 'test-content', '', '2019-08-19 21:00:49', 'test-created', '2019-08-19 21:00:49', '', 0, 1);

INSERT INTO `go_role`( `user_id`, `user_name`, `value`) VALUES (1, 'admin', 'admin');
INSERT INTO `go_role`( `user_id`, `user_name`, `value`) VALUES ( 1, 'admin', 'test');
INSERT INTO `go_role`( `user_id`, `user_name`, `value`) VALUES ( 2, 'test', 'test')