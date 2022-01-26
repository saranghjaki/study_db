use world;

show tables;

create table books(
	seq int
		,image varchar(100)
        ,name varchar(100)
        ,writer varchar(100)
        ,bookcompany varchar(100)
        ,bookdate date
        ,price int
        ,dc int
        ,point int
        ,sales int
        ,review varchar(200)
        ,stock  boolean 
        ,local varchar(100)
        ,events int
        ,types int
);

insert into books(
 seq
	,image
	,name
	,writer 
	,bookcompany 
	,bookdate 
	,price 
	,dc 
	,point 
	,sales 
	,review 
	,stock  
	,local
	,events
	,types 
 )values(
	1	
    ,'books1.png' -- 이미지url
    ,'Do it! 자바스크립트 웹 표준정석'
    ,'고경희' 
    ,'이지퍼블리싱' -- 출판사
    ,'2022-01-01' 
    ,30000 -- 원가 
    ,10 -- 할인율 원가-(원가*할인율/100)=할인가격
    ,5 -- 적립율 (원가*적립율/100)=적립금액
    ,49899 -- 판매량
    ,1 -- 재료가있으면1 없으면0
    ,1 -- 지역별분류
    ,1 -- 이벤트별 번호
    ,591 -- 도서종류별분류번호
 );
 
 select * from books; 
 
 create table spacerental(
	seq int 
    ,image varchar(100)
    ,title varchar(100)
    ,type int
    ,timemin int
    ,timemax int
    ,personalmin int
    ,personalmax int
    ,tables int
    ,mirrow int
    ,bathroom int
    ,smork int
    ,cookroom int
 );
 
 insert into spacerental(
	seq
		,image
        ,title
        ,type
        ,timemin
        ,timemax
        ,personalmin
        ,personalmax
        ,tables
        ,mirrow
        ,bathroom
        ,smork
        ,cookroom
 )value(
	1
		,'space.jpg'
        ,'음악,성악,보컬,피아노,악기연습 등 원하는 음악을 마음껏 할 수 있는 지상연습실'
		,23
        ,1
        ,0
        ,1
        ,4
        ,1
        ,1
        ,1
        ,1
        ,1
               
 );
 

 select * from cafe;
 
 CREATE TABLE IF NOT EXISTS `test` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;
 
 insert test(
 name
 ) value(
 " "
 );
 
 select* from test;
 
CREATE TABLE IF NOT EXISTS `test2` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `seq2` INT NOT NULL,
  `seq3` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`seq`, `seq3`, `seq2`));
  
  insert test2(
  seq
   ,name
  )value(
  6
  ,''
  );
  
  select*from test2;
  
  -- 테이블수정
  -- DDL : db, table: 관리자, 선임
  -- DML : date; 후임들
  
  
  -- 컬럼 추가
  alter table test add tel varchar(50);
  -- test table에 tel 이라는 varchar(50)추가
  
  -- 컬럼 삭제
  alter table test drop tel;
  
  -- 컬럼 타입 변경
  alter table test modify tel int;
  -- alter table test modify tel varchar(20);
  
  -- 컬럼 타입 변경
  alter table test change tel tele int;
  
  insert into test(
	name
    ,tele
  )values (
	'ys'
    ,1111
  );
  
  select*from test;
  desc test;
  
  -- 데이터 수정
  update test set
	name='surang'
    ,tele = '222'
  where 1=1 
 and  seq = 1;
  
  -- 데이터 삭제
  delete from test
  where 1=1
	and seq = 3;
    
    -- 전체 데이터 삭제
	truncate test;
    
    -- DML :date definition language :db table 컨트롤 : 주로 관리자, 선임들의 업무 alter
    -- DDL : date manipulation language : data : 후임들
    -- DCL : date control langyage : 접근권환 커밋.롤백
    
    -- insert, update, delete-> data 바로 영향을 미치는가?
    
    