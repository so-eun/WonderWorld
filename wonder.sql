create table eventbook (
	ap_id		int Not NULL auto_increment primary key,
    ap_name		varchar(20),
    ap_numOfMem	int,
    ap_memo		varchar(40)
);

insert into eventbook values (1,"장윤정",3,"동심의 세계");

insert into eventbook values (2,"이소은",4,"꿈과 희망의 나라");

insert into eventbook values (3,"이수연",2,"모험과 신비의 나라");

select * from eventbook;

insert into eventbook (ap_name, ap_numOfMem, ap_memo) values ("홍채연",3,"행복의 나라");

insert into eventbook (ap_name, ap_numOfMem, ap_memo) values ("장윤정",2,"데이트 할곳");

insert into eventbook (ap_name, ap_numOfMem, ap_memo) values ("이소은",4,"어드벤쳐 천국");

insert into eventbook (ap_name, ap_numOfMem, ap_memo) values ("이범수",6,"행운의 나라");

insert into eventbook (ap_name, ap_numOfMem, ap_memo) values ("박준수",4,"행복의 도시");

insert into eventbook (ap_name, ap_numOfMem, ap_memo) values ("김철수",5,"나의 추억");

insert into eventbook (ap_name, ap_numOfMem, ap_memo) values ("이수연",2,"환상의 나라");

insert into eventbook (ap_name, ap_numOfMem, ap_memo) values ("공유",3,"아름다움");

insert into eventbook (ap_name, ap_numOfMem, ap_memo) values ("강하늘",4,"행복이 가득한 곳");

select * from eventbook;


