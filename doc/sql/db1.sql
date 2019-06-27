select * from tu_user ;
insert into tu_user (id,_is_del,_wtime,login_name,login_pwd) values(1,false,now(),'admin','21232f297a57a5a743894a0e4a801fc3') ;
select * from tu_info ;
insert into tu_info(id,_is_del,_wtime,birthday,cw_role_id,in_time,name,out_time,role_id,sex,store_id,tel,user_id,xl,zw,zzmm)
values(1,false,now(),'1984-01-16',null,'2003-09-01','于洋',null,null,'男',null,'18613806246','1','幼儿园','小工','群众') ;