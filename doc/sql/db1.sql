select * from tu_user ;
insert into tu_user (id,_is_del,_wtime,login_name,login_pwd) values(1,false,now(),'admin','21232f297a57a5a743894a0e4a801fc3') ;
select * from tu_info ;
insert tu_info(id,_is_del,_wtime,birthday,in_time,out_time,role_id,sex,store_id,tel,user_id,xl,zw,zzmm,cw_role_id,name)values(1,false,now(),now(),now(),null,null,'男',null,'18613806246',1,'小班','小工','群众',null,'于洋') ;