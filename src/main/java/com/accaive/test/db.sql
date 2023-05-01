create table jjal(
	p_no number(4) primary key,
	empno number(4) not null,
	img varchar2(200 char) not null,
	tag varchar2(200 char) not null,
	explanation varchar2(400 char) not null
);

create table AI(
	p_no number(4) primary key,
	score varchar2(100 char) not null,
	tag varchar2(200 char) not null
);

create table member(
	empno number(4) primary key,
	id varchar2(20 char) not null,
	pw varchar2(20 char) not null,
	nickname varchar2(20 char) not null
);

select * from JJAL;

create sequence jjal_seq;

insert into JJAL values(jjal_seq.nextval,'a.jpg','영화','20');
insert into member values(empno_seq.nextval,'qwe123','123','닉네임2');

delete from JJAL where p_no='41'; 

drop table JJAL cascade constraints purge;
drop SEQUENCE jjal_seq;
create SEQUENCE jjal_seq INCREMENT by 1 start with 1;
create SEQUENCE empno_seq INCREMENT by 1 start with 1;

select * from MEMBER;

update JJAL set empno ='1' where p_no ='1';

drop table MEMBER cascade constraints purge;

select JJAL.P_NO,JJAL.EMPNO,JJAL.IMG,JJAL.TAG,JJAL.EXPLANATION,MEMBER.NICKNAME 
from JJAL,Member 
where MEMBER.EMPNO = JJAL.EMPNO
AND JJAL.P_NO='1';