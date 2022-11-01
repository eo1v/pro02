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
	content varchar(1000),
	author varchar(20),
	resdate datetime default now()
); 