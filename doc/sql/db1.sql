delete from tu_user where id = 1 ;
insert into tu_user (id,_is_del,_wtime,login_name,login_pwd) values(1,false,now(),'admin','21232f297a57a5a743894a0e4a801fc3') ;

delete from tu_info where id = 1 ;
insert into tu_info(id,_is_del,_wtime,birthday,cw_role_id,in_time,name,out_time,role_id,sex,store_id,tel,user_id,xl,zw,zzmm)
values(1,false,now(),'1984-01-16',null,'2003-09-01','于洋',null,1,'男',null,'18613806246','1','幼儿园','小工','群众') ;

delete from tu_item ;
INSERT INTO tu_item VALUES (23,false,'2019-09-09 17:15:10','btn',5,'','','删除',4,'ShanChu'),(22,false,'2019-09-09 17:14:54','btn',5,'','','修改',3,'XiuGai'),(18,false,'2019-09-09 17:13:19','btn',16,'','','刷新',2,'ShuaXin'),(17,false,'2019-09-09 17:13:19','btn',16,'','','新增',1,'XinZeng'),(16,false,'2019-09-09 17:13:19','menu',4,'','app/store/store','站点数据',2,'zdsj'),(14,false,'2019-09-09 17:13:19','btn',10,'','','查询',4,'ChaXun'),(11,false,'2019-09-09 17:13:19','btn',10,'','','新增',1,'XinZeng'),(9,false,'2019-09-09 17:13:19','btn',5,'','','查询',4,'ChaXun'),(10,false,'2019-09-09 17:13:19','menu',4,'','app/user/user','用户数据',2,'yhsj'),(6,false,'2019-09-09 17:13:19','btn',5,'','','新增',1,'XinZeng'),(5,false,'2019-09-09 17:13:19','menu',4,'','app/role/role','角色数据',1,'jssj'),(4,false,'2019-09-09 17:13:19','group',0,'','','基本数据',2,'yhgl'),(15,false,'2019-09-09 17:13:19','btn',2,'','','刷新',2,'ShuaXin'),(3,false,'2019-09-09 17:13:19','btn',2,'','','新增',1,'XinZeng'),(2,false,'2019-09-09 17:13:19','menu',1,'','app/dev/dev','开发功能',1,'kfgn'),(1,false,'2019-09-09 17:13:19','group',0,'','','开发管理',1,'kfgl');

delete from tu_role where id = 1 ;
insert into tu_role (id,_is_del,_wtime,item_ids,name)
values(1,false,now(),('1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60'),'admin') ;

