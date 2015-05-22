create user jspuserc identified by jsp1234;

create table board
(
	num		number		primary key,    
	name	varchar2(10),
	title	varchar2(100),
	content	varchar2(1000),
	hits	number		default 0,
	wdate	date		default sysdate,
	attachment varchar2(50)
	
)
create sequence board_seq 
values(board_seq.nextval.'',')


select * from board
