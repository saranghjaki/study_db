use world;

CREATE TABLE IF NOT EXISTS `book7` (
  `no` INT 
 , `name` VARCHAR(45) 
);

CREATE TABLE IF NOT EXISTS `review7` (
  `no` INT 
 , `coment` VARCHAR(45) 
 , `book7_no` INT
  );
  
  
  CREATE TABLE IF NOT EXISTS `book6` (
  `no` INT 
  ,`name` VARCHAR(45) 
 );
 
CREATE TABLE IF NOT EXISTS `review6` (
  `no` INT 
  ,`coment` VARCHAR(45) 
  ,`book6_no` INT
  );
drop table review6;

insert into book7(
no
,name
)values(
 1
,'4차산업혁명의미래'
);




select * from book8;

desc review8;

insert into review8(
comment
, book8_no
)values(
'우와 책이 재미 있습니다'
,1
);


CREATE TABLE IF NOT EXISTS `book8` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `world`.`review8` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `coment` VARCHAR(45) NULL,
  `book8_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_review8_book81_idx` (`book8_no` ASC) VISIBLE,
  CONSTRAINT `fk_review8_book81`
    FOREIGN KEY (`book8_no`)
    REFERENCES `world`.`book8` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

insert into book8(
name
)values(
 '4차산업혁명의미래'
);

insert into review8(
coment
,book8_no
)values(
'우와책이재미있습니다'
,2
);

CREATE TABLE IF NOT EXISTS `world`.`book9` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `world`.`review9` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `coment` VARCHAR(45) NULL,
  `book9_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book9_no`),
  INDEX `fk_review9_book91_idx` (`book9_no` ASC) VISIBLE,
  CONSTRAINT `fk_review9_book91`
    FOREIGN KEY (`book9_no`)
    REFERENCES `world`.`book9` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

insert into book9(
name
)values(
 'sqlplus'
);

insert into review9(
coment
,book9_no
)values(
 '우와책이재미있습니다'
 ,4
 );
 select * from book9;
 
 --  점선: 부모자식관계 개발하기좀불편하다
 -- 실선 : 개발용이성이 높다
 
 
 select
 a.name
 , b.coment
 from book9 a
-- left join review9 b on b.book9_no = a.no
  inner  join review9 b on b.book9_no = a.no
  
 ;
 
  select
 a.name
,(select count(no)from review9 where book9_no=a.no)as count
from book9 a
; 

select
	 b.coment
	,a.name
       from book9 a
    inner  join review9 b on b.book9_no = a.no
    ;



select * from book9;
select * from review9;