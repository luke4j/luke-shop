select * from tu_user ;
insert into tu_user (id,_is_del,_wtime,login_name,login_pwd) values(1,false,now(),'admin','21232f297a57a5a743894a0e4a801fc3') ;
select * from tu_info ;
insert into tu_info(id,_is_del,_wtime,birthday,cw_role_id,in_time,name,out_time,role_id,sex,store_id,tel,user_id,xl,zw,zzmm)
values(1,false,now(),'1984-01-16',null,'2003-09-01','于洋',null,1,'男',null,'18613806246','1','幼儿园','小工','群众') ;





delete from tu_item ;
insert into tu_item (id,_is_del,_wtime,c_type,fid,icon,js,name,px)
values
(1,false,now(),'group',0,'','','开发管理',1),
(2,false,now(),'menu',1,'','','开发功能',1),
(3,false,now(),'btn',2,'','','新增',1) ,
(4,false,now(),'group',0,'','','用户管理',2),
(5,false,now(),'menu',4,'','','角色设置',1),
(6,false,now(),'btn',5,'','','新增',1),
(7,false,now(),'btn',5,'','','修改',2),
(8,false,now(),'btn',5,'','','删除',3),
(9,false,now(),'btn',5,'','','查询',4),
(10,false,now(),'menu',4,'','','用户设置',2),
(11,false,now(),'btn',10,'','','新增',1),
(12,false,now(),'btn',10,'','','修改',2),
(13,false,now(),'btn',10,'','','删除',3),
(14,false,now(),'btn',10,'','','查询',4)
;
-- explain
select * from tu_item order by c_type,px;


delete from tu_role where id = 1 ;
insert into tu_role (id,_is_del,_wtime,item_ids,name)
values(1,false,now(),('1,2,3,4,5,6,7,8,9,10,11,12,13,14'),'admin') ;
select * from tu_role ;
