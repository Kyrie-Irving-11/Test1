

create table students(
id NUMBER(20),
name varchar2(20),
sex varchar2(20),
birth DATE,
department varchar2(20),
address varchar2(20)
);

create SEQUENCE seq_students_id
START WITH 901
INCREMENT BY 1 
MAXVALUE 99999999;

insert INTO students VALUES(seq_students_id.nextval,'����'��'��',TO_DATE('1988','YYYY'),'�����ϵ','�����������');

SELECT
 department,count(department)
FROM students group by(department) ;


update students set birth=TO_DATE('1985','YYYY') where id=901;



SELECT
 c_name,max(grade)
FROM score group by(c_name);


select * from score;



select stu_id,name,avg(grade)  ƽ����
from students,score 
where score.stu_id=students.id  
group by(students.name,score.stu_id) order by stu_id;


SELECT
c_name,max(grade) grade
FROM score group by(c_name);


select grade, name,c_name, stu_id from score,students where grade in(SELECT
max(grade) grade
FROM score group by(c_name)) and score.stu_id=students.id;


SELECT stu_id FROM score where c_name='�����';

select name from students where 
id in(select stu_id from score where 
stu_id in(SELECT stu_id FROM score 
where c_name='�����' and grade>80) and c_name='Ӣ��' and grade>80);

select stu_id from score where stu_id in(SELECT stu_id FROM score where c_name='�����' and grade>80) and c_name='Ӣ��' and grade>80;


select name from students where students.id 
in(select score.stu_id from score where score.grade>80 
and score.c_name='�����' or score.c_name='Ӣ��');


select stu_id from score where c_name='�����' or c_name='Ӣ��';

select * from students where id in(select stu_id from score where 
stu_id in(SELECT stu_id FROM score
where c_name='�����') and c_name='Ӣ��')

select stu_id from score where 
stu_id in(SELECT stu_id FROM score
where c_name='�����') and c_name='Ӣ��' ;


select * from score,students where score.c_name='�����' and score.grade<95 and students.id=score.stu_id;



create table tmp(
rq date,
type varchar2(10)
);

insert into tmp values(TO_DATE('2016/05/06','YYYY-MM-DD'),'ʤ')


