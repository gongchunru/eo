select * from t_examRecord;
select * from t_student;
use eodb;
show database;
drop table t_question;
create table t_admin (-- 管理员表
aid integer auto_increment,-- 主键
adminName varchar(30), -- 登录名字
password varchar(30),-- 密码
name varchar(30), -- 真实名字
role varchar(10), -- 角色：2 是教学经理， 1 是教学主管
primary key (aid)
) engine=innodb default character set utf8;
 
create table t_examPaper ( --  试卷表
epid integer auto_increment, -- 主键
name varchar(50),  -- 试卷名字
totalTime varchar(30), -- 考试时间
primary key (epid)
)engine=innodb default character set utf8;

create table t_examRecord (-- 试卷的记录表
erid integer auto_increment, -- 主键
examPaper_id int(11), -- 对应试卷的id
score integer, -- 考试分数
student_id integer, -- 学生id
primary key (erid)
)engine=innodb default character set utf8;
select * from t_student;
insert into t_examRecord values(1,1,60,1);
insert into t_examRecord values(2,1,70,2);
insert into t_examRecord values(3,1,80,3);
insert into t_examRecord values(4,1,88,4);
insert into t_examRecord values(5,1,59,5);
commit;
create table t_option ( -- 题目选项表
oid integer auto_increment, -- 主键
optionA varchar(200), -- A选项
optionB varchar(200), -- B选项
optionC varchar(200), -- C选项
optionD varchar(200), -- D选项
question_id integer unique, -- 对应的题目id
primary key (oid)
)engine=innodb default character set utf8;

create table t_question (-- 题目表
qid integer auto_increment, -- 主键
content varchar(200), -- 题干
answer varchar(30), -- 题目答案
type varchar(2), -- 题目类型：1 单选 ， 2： 多选
examPaper_id integer, -- 对应的试卷id
primary key (qid)
)engine=innodb default character set utf8;

create table t_student (-- 学生表
sid integer auto_increment, -- 主键
username varchar(30), -- 登录名
password varchar(30), -- 密码
name varchar(30), -- 真实姓名
sex varchar(2), -- 性别  f:女	 m:男
birth date(30), -- 出生日期
class varchar(30), -- 班级
address varchar(50), -- 籍贯
tele varchar(20), -- 电话
mobile varchar(20), -- 手机
email varchar(30), -- Email
remarks varchar(100), -- 备注
primary key (sid)
)engine=innodb default character set utf8;

insert into t_student values(1,'20121201','123456','小光','m','1989-06-29','网络121班','珠海市','0000000','13800138000','xiaoguan@163.com','你好啊');
insert into t_student values(2,'20121202','123456','小李','m','1988-10-20','数据库121班','北京市','0000000','13800138000','xiaoli@163.com','你好啊');
insert into t_student values(3,'20121203','123456','小红','f','1987-05-20','java121班','北京市','0000000','13800138000','xiaohong@163.com','你好啊');
insert into t_student values(4,'20121204','123456','小明','m','1987-10-25','.net121班','上海市','0000000','13800138000','xiaoming@163.com','你好啊');
insert into t_admin values(1,'superAdmin','123456','陈国雄','1');
insert into t_admin values(2,'admin01','123456','张三','2');
insert into t_admin values(3,'admin02','123456','李四死','2');

insert into t_examPaper values(1,'Java A 卷','90分钟');
insert into t_examPaper values(2,'Java B 卷','90分钟');

drop table t_question;
drop table t_option;
insert into t_question values(1,'1+1=?','C','1',1);
insert into t_question values(2,'java是什么?','AB','2',1);
insert into t_option values(1,'0','1','2','3',1);
insert into t_option values(2,'一门语言','可以编程',' 不知道',' .....',2);
commit;