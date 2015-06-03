-------------����Ա��Ϣ------------------------------------------------
drop table if exists admin_info;
create table admin_info(
id int primary key auto_increment,
admin_code varchar(30) not null unique,
password varchar(20) not null,
name varchar(20) not null,
telephone varchar(15),
email varchar(50),
enrolldate date not null
)engine=innodb;
insert into admin_info(admin_code,password,name,enrolldate) values('xuzb','111111','��������Ա',now());
insert into admin_info(admin_code,password,name,enrolldate) values('test','111111','ҵ�����Ա',now());
insert into admin_info(admin_code,password,name,enrolldate) values('admin','111111','��ɫ����Ա',now());

select * from admin_info;

---------------------------------------����Ա��ɫ-------------------------------------------------
drop table if exists admin_role;
create table admin_role(
admin_id int not null,
role_id int not null,
primary key(admin_id,role_id),
foreign key(admin_id) references admin_info(id),
foreign key(role_id) references role_info(id)
);
insert into admin_role values(1,1);
insert into admin_role values(2,2);
insert into admin_role values(3,3);

select * from admin_role;

------------------------------------------�����˺�---------------------------------------------------- 
drop table if exists account;
create table account
(
   id int primary key auto_increment,
   recommender_id int,
   login_name varchar(30) unique not null,
   login_password varchar(8) not null,
   status char(1) not null check(status in (0,1,2)),
   create_date date not null,
   pause_date date,
   close_date date,
   real_name varchar(20) not null,
   idcard_no char(18) unique not null,
   birthdate date,
   gender char(1) not null check(gender in (0,1)),
   occupation varchar(50),
   telephone varchar(15) not null,
   email varchar(50),
   mailaddress varchar(50),
   zipcode char(6),
   qq varchar(15),
   last_login_time date,
   last_login_ip varchar(15),
   foreign key(recommender_id) references account(id)
)
engine=innodb;
select * from account ;
update account set status=2 where id=30;
delete from account where id=37;
insert into account
(ID  ,RECOMMENDER_ID,LOGIN_NAME,login_password,STATUS,CREATE_DATE ,REAL_NAME     ,BIRTHDATE   ,GENDER,IDCARD_NO           ,TELEPHONE  ) VALUES
(1005,null          ,'taiji001','256528'    ,1     ,'2008-03-15','zhangsanfeng','1943-02-25',0     ,'410381194302256528',13669351234)
;insert into account
(ID  ,RECOMMENDER_ID,LOGIN_NAME,login_password,STATUS,CREATE_DATE ,REAL_NAME,BIRTHDATE   ,GENDER,IDCARD_NO           ,TELEPHONE  ) VALUES
(1010,null          ,'xl18z60' ,'190613'    ,1     ,'2009-01-10','guojing','1969-03-19',0     ,'330682196903190613',13338924567)
;insert into account
(ID  ,RECOMMENDER_ID,LOGIN_NAME,login_password,STATUS,CREATE_DATE ,REAL_NAME  ,BIRTHDATE   ,GENDER,IDCARD_NO           ,TELEPHONE  ) VALUES
(1011,1010          ,'dgbf70'  ,'270429'    ,1     ,'2009-03-01','huangrong','1971-08-27',1     ,'330902197108270429',13637811357)
;insert into account
(ID  ,RECOMMENDER_ID,LOGIN_NAME,login_password,STATUS,CREATE_DATE ,REAL_NAME  ,BIRTHDATE   ,GENDER,IDCARD_NO           ,TELEPHONE  ) VALUES
(1015,1005          ,'mjjzh64' ,'041115'    ,1     ,'2010-03-12','zhangwuji','1989-06-04',0     ,'610121198906041115',13572952468)
;insert into account
(ID  ,RECOMMENDER_ID,LOGIN_NAME,login_password,STATUS,CREATE_DATE ,REAL_NAME  ,BIRTHDATE   ,GENDER,IDCARD_NO           ,TELEPHONE  ) VALUES
(1018,1011          ,'jmdxj00' ,'010322'    ,1     ,'2011-01-01','guofurong','1996-01-01',1     ,'350581200201010322',18617832562)
;insert into account
(ID  ,RECOMMENDER_ID,LOGIN_NAME,login_password,STATUS,CREATE_DATE ,REAL_NAME   ,BIRTHDATE   ,GENDER,IDCARD_NO           ,TELEPHONE  ) VALUES
(1019,1011          ,'ljxj90'  ,'310346'    ,1     ,'2012-02-01','luwushuang','1993-07-31',1     ,'320211199307310346',13186454984)
;insert into account
(ID  ,RECOMMENDER_ID,LOGIN_NAME,login_password,STATUS,CREATE_DATE ,REAL_NAME   ,BIRTHDATE   ,GENDER,IDCARD_NO           ,TELEPHONE  ) VALUES
(1020,null          ,'kxhxd20' ,'012115'    ,1     ,'2012-02-20','weixiaobao','2000-10-01',0     ,'321022200010012115',13953410078)
;


-----------�ʷ���Ϣ-----------------------------------------
drop table if exists cost;
create table cost(
id int primary key auto_increment,
name varchar(50) not null unique,
base_duration int,
base_cost double,
unit_cost double,
status char(1) not null check(status in (0,1)),
descr varchar(100),
creatime date not null,
startime date,
cost_type char(1)
)engine=innodb;
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type)
 values ('10Ԫ�ײ�','100','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type)
 values ('20Ԫ�ײ�','200','70','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type)
 values ('30Ԫ�ײ�','300','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type)
 values ('40Ԫ�ײ�','400','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type)
 values ('50Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type)
 values ('60Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');

insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('70Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('80Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('90Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('100Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('110Ԫ�ײ�','100','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('120Ԫ�ײ�','200','70','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('130Ԫ�ײ�','300','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('140Ԫ�ײ�','400','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('150Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('160Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('170Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('180Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('190Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');
insert into cost(name,base_duration,base_cost,unit_cost,status,creatime,descr,cost_type) values ('200Ԫ�ײ�','500','40','2','0',now(),'�ܺ���','2');

select * from cost;
update cost set name='5.9Ԫ�ײ�',base_duration=20,base_cost=5.9,unit_cost=0.4,
status='1',creatime=now(),descr='5.9Ԫ20Сʱ/��,��������0.4Ԫ/ʱ',cost_type='2' where id=1;

update cost set name='6.9Ԫ�ײ�',base_duration=40,base_cost=6.9,unit_cost=0.3,
status='1',creatime=now(),descr='6.9Ԫ40Сʱ/��,��������0.3Ԫ/ʱ',cost_type='2' where id=2;

update cost set name='8.5Ԫ�ײ�',base_duration=100,base_cost=8.5,unit_cost=0.2,
status='1',creatime=now(),descr='8.5Ԫ100Сʱ/��,��������0.2Ԫ/ʱ',cost_type='2' where id=3;

update cost set name='10.5Ԫ�ײ�',base_duration=200,base_cost=10.5,unit_cost=0.1,
status='1',creatime=now(),descr='10.5Ԫ200Сʱ/��,��������0.1Ԫ/ʱ',cost_type='2' where id=4;

update cost set name='��ʱ�շ�',base_duration=null,base_cost=null,unit_cost=0.5,
status='1',creatime=now(),descr='0.5Ԫ/Сʱ,��ʹ�ò��շ�',cost_type='3' where id=5;

update cost set name='����',base_duration=null,base_cost=20,unit_cost=null,
status='1',creatime=now(),descr='ÿ��20Ԫ',cost_type='1' where id=6;

update cost set startime=now() where id=6;
delete from cost where id>6;

--------------��ɫ��Ϣ---------------------------------------------
drop table if exists role_info;
create table role_info(
id int primary key auto_increment,
name varchar(20) not null
)engine=innodb;
insert into role_info (name) values ('��������Ա');
insert into role_info (name) values ('ҵ�����Ա');
insert into role_info (name) values ('��ɫ����Ա');


select * from role_info;


---------------------��ɫȨ��------------------------------------------------

drop table if exists role_privilege;
create table role_privilege(
role_id int  not null,
privilege_id int not null,
primary key(role_id,privilege_id)
)engine=innodb;

insert into role_privilege values(1,1);
insert into role_privilege values(1,2);
insert into role_privilege values(1,3);
insert into role_privilege values(1,4);
insert into role_privilege values(1,5);
insert into role_privilege values(1,6);
insert into role_privilege values(1,7);

insert into role_privilege values(2,3);
insert into role_privilege values(2,4);
insert into role_privilege values(2,5);
insert into role_privilege values(2,6);
insert into role_privilege values(2,7);

insert into role_privilege values(3,1);
insert into role_privilege values(3,2);


select  * from role_privilege;

select * from role_info i 
inner join role_privilege p 
on i.id=p.role_id;

-----------------ҵ���˺�------------------------------------------------------
drop table if exists service;
create table service(
id int primary key auto_increment,
account_id int not null,
unix_host varchar(15) not null,
os_username varchar(8) not null,
login_passwd varchar(20) not null,
status char(1) not null check(status in(0,1,2)),
create_date date not null,
pause_date date,
close_date date,
cost_id int,
foreign key(account_id) references account(id),
foreign key(cost_id) references cost(id),
unique(unix_host,os_username)
)engine=innodb;

insert into service values (2001,1010,'192.168.0.26','guojing','guo1234',0,'2009-03-10 10:00:00',null,null,1);
insert into service values (2002,1011,'192.168.0.26','huangr','huang234',0,'2009-03-01 15:30:05',null,null,1);
insert into service values (2003,1011,'192.168.0.20','huangr','huang234',0,'2009-03-01 15:30:10',null,null,3);
insert into service values (2004,1011,'192.168.0.23','huangr','huang234',0,'2009-03-01 15:30:15',null,null,6);
insert into service values (2005,1019,'192.168.0.26','luwsh','luwu2345',0,'2012-02-10 23:50:55',null,null,4);
insert into service values (2006,1019,'192.168.0.20','luwsh','luwu2345',0,'2012-02-10 00:00:00',null,null,5);
insert into service values (2007,1020,'192.168.0.20','weixb','wei12345',0,'2012-02-10 11:05:20',null,null,6);
insert into service values (2008,1010,'192.168.0.20','guojing','guo09876',0,'2012-02-11 12:05:21',null,null,6);
insert into service values (2009,1010,'192.168.0.23','xuzb','xuzb09876',1,'2012-02-11 12:05:21',null,null,6);

update service set status=0;
select * from service;
update service set cost_id=1;
delete from service;

select s.*,a.idcard_no,a.real_name,c.name,c.descr from service s inner join account a on s.account_id=a.id inner join cost c on s.cost_id=c.id where 1=1;

