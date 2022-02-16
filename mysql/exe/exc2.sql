use world;

create table book4 (
	no int,
    name varchar(45),
    pubilsher_cd varchar(45)
    );
    
    insert book5(
	no
    ,name
    , pubilsher_cd 
    )value(
    1
    ,'이것이자바다'
    ,1
    );
    
    insert book5(
	no
    ,name
    ,pubilsher_cd 
    )value(
    2
    ,'프로그램가이드북'
    ,3
    );
    
        insert book5(
	no
    ,name
    ,pubilsher_cd 
    )
    value(
    3
    ,'안드로이드'
    ,4
    );
    
        insert book5(
	no
    ,name
    )value(
    4
    ,'4차산업의혁명'
    );
    
      select
		a.no
        ,a.name
        ,a.pubilsher_cd
        ,b.no
        ,b.name
     from book4 as a
     left join pubilsher as b on b.no = a.pubilsher_cd;
     
     select
		a.no
        ,a.name
        ,a.publisher_cd 
        ,(select name from pubilsher where no =a.pubilsher_cd)
	from book3 as a;
    
     select * from book4;
     
     CREATE TABLE IF NOT EXISTS `book5` (
  `no` INT 
 , `name` VARCHAR(45) 
  ,`pubilsher_cd` INT 
  );
  


CREATE TABLE IF NOT EXISTS`pubilsher1` (
  `no` INT 
  ,`name`  VARCHAR(45) 
 );
  
  insert pubilsher1(
	no
    ,name
    )value(
    3
    ,'대교'
    );
    
    select
		a.no
        ,a.name
        ,a.pubilsher_cd
        ,b.no
        ,b.name
     from book5 as a
    -- left join pubilsher1 as b on b.no = a.pubilsher_cd; -- 공란있음 null행도 같이 표시
    inner join pubilsher1 as b on b.no = a.pubilsher_cd;  -- 공란없음 null 값이있음 표시안함
    
    select
		a.no
        ,a.name
        ,a.pubilsher_cd
        ,(select name from pubilsher1 where no =a.pubilsher_cd)
        from book5 as a;
        
          select
		a.no
        ,a.name
        ,a.pubilsher_cd
        ,getPubilsher1Name
        from book5 as a;
        
        select * from  pubilsher1;