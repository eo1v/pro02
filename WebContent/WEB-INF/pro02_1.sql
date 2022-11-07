create database myshop1;
commit;
use myshop1;

create table custom(
	 cusId varchar(13) primary key,
	 cusPw varchar(200) not null,
	 cusName varchar(40) not null,
	 address varchar(500),
	 tel varchar(14),
	 resdate datetime default now(),
	 point int default 0,		
	 level int default 0,		
	 visited int default 0
     );
     
create table notice(
	notiNo int primary key auto_increment,		
	title varchar(200) not null,
	content varchar(1000) not null,
	author varchar(20) not null,
	resdate datetime default now()
); 

alter table notice add visited int default 0; 

insert into notice(title , content , author) values ("테스트 제목1", "테스트1 내용입니다.", "admin");
insert into notice(title , content , author) values ("테스트 제목2", "테스트2 내용입니다.", "admin");
insert into notice(title , content , author) values ("테스트 제목3", "테스트3 내용입니다.", "admin");
insert into notice(title , content , author) values ("테스트 제목4", "테스트4 내용입니다.", "admin");
insert into notice(title , content , author) values ("테스트 제목5", "테스트5 내용입니다.", "admin");
commit;
use myshop1;
select * from notice order by notino desc;
select * from custom;

create table product(
	proNo int primary key auto_increment,
	cateNo int not null,		
	proName varchar(50),	
	proSpec varchar(600),	
	oriPrice int not null,		
	proPrice int not null,	
	proPic varchar(200), 	
	proPic2 varchar(200)
    ); 
drop table product;
select * from product;
commit;

insert into product values(

create table category(
	cateNo int primary key auto_increment,
    cateName varchar(50)
);

insert into category(cateName) values ("icecream");
insert into category(cateName) values ("");
insert into category(cateName) values ("");
insert into category(cateName) values ("");
insert into category(cateName) values ("");
insert into category(cateName) values ("");

create table sales(
	saleNo int primary key auto_increment,		
	cusId varchar(50),
	proNo int not null,
	amount int default 0, 
	saleDate datetime default now(),
	parselNo int,
	salePayNo int
);