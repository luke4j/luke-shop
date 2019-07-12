drop database if exists erp ;
create database erp ;
use erp ;
/*
*物料表
*/
drop table if exists tb_wl ;
create table tb_wl(
	id bigint primary key auto_increment,
    bm varchar(30) ,
    name varchar(30),
    p_jy decimal(15,4),
    p_cg decimal(15,4),
	brand varchar(20),
    unit varchar(6),
    gg varchar(20),
    color varchar(20),
    is_zz boolean ,
    kc_min bigint ,
    kc_max bigint ,
    kc_k varchar(20),
    kc_q varchar(20),
    wd_length decimal(8,4),
    wd_width decimal(8,4),
    wd_long decimal(8,4),
    buy_time bigint
) ;
select * from tb_wl ;
-- insert into tb_wl (id,bm,name,p_jy,p_cg,brand,unit ,gg,color ,is_zz,kc_min,kc_max,kc_k,kc_q,wd_lenght,wd_width,wd_long,buy_time)values
 -- () ;
 /*
 *设备表
 */
 drop table if exists tb_dev ;
 create table tb_dev(
	id bigint primary key auto_increment,
    bm varchar(20),
    name varchar(20)
 ) ;
 /*
 *
 */
 /*
 *工艺表
 */
 drop table if exists tb_gy ;
create table tb_gy(
	id bigint primary key auto_increment,
    bm varchar(20),
    name varchar(20),
    u_time bigint ,
    user_num bigint 
) ;
/*
*工艺所需要的物料表
*/
drop table if exists tb_gy_wl ;
create table tb_gy_wl(
	id bigint primary key auto_increment,
    gy_id bigint ,
    wl_id bigint ,
    wl_num bigint 
) ;
/*
*工艺所需要的设备表
*/
drop table if exists tb_gy_dev ;
create table tb_gy_dev(
	id bigint primary key auto_increment,
    gy_id bigint ,
    dev_id bigint ,
    dev_num bigint 
) ;

select * from tb_gy g  
left join tb_gy_wl wg on g.id = wg.gy_id  
left join tb_gy_dev dg on g.id = dg.gy_id
left join tb_wl w on  wg.wl_id = w.id
left join tb_dev d on dg.dev_id = d.id ;




