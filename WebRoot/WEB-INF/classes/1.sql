show tables;
show create table t_question;
drop table t_option;
select * from t_emp;
select * from t_admin;
select * from t_examPaper;
select * from t_student;
select * from t_question;
select * from t_option;
select * from t_examRecord;
select * from t_admin where adminName like '%a%' and aid != 1 limit 1,2 ;
create table t_student (
sid integer auto_increment,
username varchar(30),
password  varchar(30),
name varchar(30),
sex varchar(2),
birth date,
class varchar(30),
address varchar(50),
tele varchar(20),
mobile varchar(20),
email varchar(30),
remarks varchar(100),
primary key (sid)
)engine=innodb default character set utf8;

select * from t_admin where adminName like '%a%' and aid != 1 limit 0,2;
select count(*) from t_student where name like '%红%';
select * from t_student where name like '%小%' limit 0,2
select count(*)-1 from t_admin where adminName = '%a%';
select * from t_emp group by dept_id having salary > 3000 ;

select * from t_emp where dept_id in 
(select dept_id from t_emp
where salary >1000)
group by dept_id;

select * from t_emp 
where salary > 3000 group by dept_id;

select * from t_examPaper where name like '%java%' limit 0,1;

drop table t_question;

create table t_question (-- 题目表
qid integer auto_increment, -- 主键
content varchar(200), -- 题干
answer varchar(30), -- 题目答案
type varchar(2), -- 题目类型：1 单选 ， 2： 多选
examPaper_id integer,
FOREIGN KEY (examPaper_id) REFERENCES t_examPaper(epid), -- 对应的试卷id
primary key (qid)
)engine=innodb default character set utf8;
select count(*) from t_examPaper
select * from t_examPaper limit 0,1

select a.*,b.* from   t_student  a  left join t_examRecord b on 
a.sid = b.student_id;

select * from t_examRecord where score between 60 and 80 and examPaper_id = 1;
select  * from t_student   where name like '%小%' limit 1,1
select
        a.* 
    from
        t_student a 
    left join
        t_examRecord b 
            on a.sid = b.student_id 
            and a.username = '20121201' 
            or a.name like '%小%' limit 1,1
            
select
        * 
    from
        t_student 
    where
        username = '20121201' and name like '%%' limit 0,1
select a.* from t_examPaper a join  t_examRecord b on a.epid = b.examPaper_id  
select a.* from  left join t_examRecord a on t_stuent b on a.student_id='1'
select * from t_examRecord where 
examPaper_id in (select epid from t_examPaper where name like '%a%') 
and student_id = (select sid from t_student where name='小光')

select * from t_examRecord where student_id = (select sid from t_student where name='小光')

select  * from t_examRecord where
        student_id = (select
                sid 
            from
                t_student 
            where
                name='小光'
        ) 
        and examPaper_id in (
            select
                epid 
            from
                t_examPaper 
            where
                name like '%a%')
select
        count(*) 
    from
        t_amdin 
    where
        aid != 1
                