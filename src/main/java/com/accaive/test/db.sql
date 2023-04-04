create table jjal(
	p_no number(4) primary key,
	img varchar2(200 char) not null,
	tag varchar2(100 char) not null,
	score varchar2(100 char) not null
);

select * from JJAL;

create sequence jjal_seq;

insert into JJAL values(jjal_seq.nextval,'a.jpg','사12','20');