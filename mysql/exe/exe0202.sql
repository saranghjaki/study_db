use world;

SET sql_mode ='';

 -- 테이블수정
  -- DDL : db, table: 관리자, 선임
  -- DML : date; 후임들
  
  
  -- 컬럼 추가
  alter table test add tel varchar(50);
  -- test table에 tel 이라는 varchar(50)추가
  
  -- 컬럼 삭제
  alter table test drop tel;
  
  -- 컬럼 타입 변경
  alter table yscode modify ysCodeGroup_yscgSeq varchar(50);
  -- alter table test modify tel varchar(20);
  
  -- 컬럼 타입 변경
  alter table test change tel tele int;

  -- 테이블삭제
  drop table yscodegroup;

-- 호출
select * from yscodegroup; 

-- 테이블 내용
desc review8;

-- 전체데이터삭제
truncate yscodegroup;

-- 데이터 불러오기
    select
		a.no
        ,a.name
        ,a.pubilsher_cd
        ,b.no
        ,b.name
     from book3 as a
     left join pubilsher as b on b.no = a.pubilsher_cd;
     
     select
		a.no
        ,a.name
        ,a.publisher_cd 
        ,(select name from pubilsher where no =a.pubilsher_cd)
	from book3 as a;
    
      
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
    
 
 -- 회원가입폼 
 
CREATE TABLE IF NOT EXISTS `world`.`ysMember` (
  `ysmSeq` BIGINT UNSIGNED NOT NULL,
  `ysmIdEmail` VARCHAR(100) NOT NULL,
  `ysmPassword` VARCHAR(100) NOT NULL,
  `ysmname` VARCHAR(100) NULL,
  `ysmNationalCd` VARCHAR(50) NULL,
  `ysmphone` VARCHAR(100) NULL,
  `ysmMakettingNy` TINYINT NULL,
  `ysMembercol` VARCHAR(45) NULL,
  `ysmDob` DATE NULL,
  `ysmMembersNy` TINYINT NULL,
  `ysmNonMemberName` VARCHAR(100) NULL,
  `ysmNonMemberPhone` VARCHAR(100) NULL,
  `ysmDormantNy` TINYINT NULL ,
  `ysmDormantDatatime` DATETIME NULL ,
  `ysmSecessionNy` TINYINT NULL  ,
  `secessionDatatime` DATETIME NULL  ,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regSvrDatatime` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modSvrDatatime` DATETIME NULL,
  `DelNy` TINYINT NULL,
  PRIMARY KEY (`ysmSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '회원가입시정보';

CREATE TABLE IF NOT EXISTS `world`.`ysMemberAddress` (
  `ysmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ysmaZipcode` VARCHAR(50) NULL,
  `ysmaAddress1` VARCHAR(100) NULL,
  `ysmaAddress2` VARCHAR(45) NULL,
  `ysmaTitle` VARCHAR(50) NULL,
  `ysMember_ysmSeq` BIGINT UNSIGNED NOT NULL,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regSvrDatatime_copy1` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modSvrDatatime` DATETIME NULL,
  `DelNy` TINYINT NULL,
  PRIMARY KEY (`ysmaSeq`),
  INDEX `fk_ysMemberAddress_ysMember1_idx` (`ysMember_ysmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_ysMemberAddress_ysMember1`
    FOREIGN KEY (`ysMember_ysmSeq`)
    REFERENCES `world`.`ysMember` (`ysmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '회원주소지';

CREATE TABLE IF NOT EXISTS `world`.`ysProduct` (
  `yspSeq` BIGINT UNSIGNED NOT NULL,
  `yspName` VARCHAR(100) NULL,
  `yspTypeCd` INT NULL ,
  `yspCount` INT NULL,
  `yspTitle` VARCHAR(100) NULL,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regSvrDatatime` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modSvrDatatime` DATETIME NULL,
  `DelNy` TINYINT NULL,
  PRIMARY KEY (`yspSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `world`.`ysInterestProduct` (
  `ysipSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ysMember_ysmSeq` BIGINT UNSIGNED NOT NULL,
  `ysProduct_yspSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ysipSeq`),
  INDEX `fk_table1_ysMember1_idx` (`ysMember_ysmSeq` ASC) VISIBLE,
  INDEX `fk_table1_ysProduct1_idx` (`ysProduct_yspSeq` ASC) VISIBLE,
  CONSTRAINT `fk_table1_ysMember1`
    FOREIGN KEY (`ysMember_ysmSeq`)
    REFERENCES `world`.`ysMember` (`ysmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_table1_ysProduct1`
    FOREIGN KEY (`ysProduct_yspSeq`)
    REFERENCES `world`.`ysProduct` (`yspSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`ysLogin` (
  `yslSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ysldata` DATETIME NULL ,
  `ysljoinChannelCd` INT NULL ,
  `yslChannelId` VARCHAR(100) NOT NULL ,
  `yslResultNy` TINYINT NULL ,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regSvrDatatime` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modSvrDatatime` DATETIME NULL,
  `DelNy` TINYINT NULL,
  `ysMember_ysmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`yslSeq`),
  INDEX `fk_ysConsulting_ysMember1_idx` (`ysMember_ysmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_ysConsulting_ysMember10`
    FOREIGN KEY (`ysMember_ysmSeq`)
    REFERENCES `world`.`ysMember` (`ysmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `world`.`ysConsulting` (
  `yscsSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `yscstitle` VARCHAR(100) NULL,
  `yscsTypecd` INT NULL ,
  `yscsContents` VARCHAR(300) NULL ,
  `yscsDatatime` DATETIME NULL ,
  `yscConsultingNumber` INT NULL ,
  `yscAnswerNumber` INT NULL ,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regSvrDatatime` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modSvrDatatime` DATETIME NULL,
  `DelNy` TINYINT NULL,
  `ysMember_ysmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`yscsSeq`),
  INDEX `fk_ysConsulting_ysMember1_idx` (`ysMember_ysmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_ysConsulting_ysMember1`
    FOREIGN KEY (`ysMember_ysmSeq`)
    REFERENCES `world`.`ysMember` (`ysmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `world`.`ysCodeGroup` (
  `yscgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `yscgSeqAnother` VARCHAR(50) NULL,
  `yscdName` VARCHAR(50) NULL,
  `yscgUseNy` TINYINT NULL,
  `yscgOrder` TINYINT NULL,
  `yscgDesc` VARCHAR(255) NULL,
  `yscgDelNy` TINYINT NULL,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regSvrDatatime` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modSvrDatatime` DATETIME NULL,
  `DelNy` TINYINT NULL,
  PRIMARY KEY (`yscgSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `world`.`ysCode` (
  `yscdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `yscdSeqAnother` VARCHAR(50) NULL,
  `yscdName` VARCHAR(50) NULL,
  `yscdUseNy` TINYINT NULL,
  `yscdOrder` TINYINT NULL,
  `yscdDesc` VARCHAR(255) NULL,
  `yscdDelNy` TINYINT NULL,
  `ysCodeGroup_Seq` BIGINT UNSIGNED NOT NULL,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regSvrDatatime` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modSvrDatatime` DATETIME NULL,
  `DelNy` TINYINT NULL,
  PRIMARY KEY (`yscdSeq`, `ysCodeGroup_Seq`),
  INDEX `fk_ysCode_ysCodeGroup_idx` (`ysCodeGroup_Seq` ASC) VISIBLE,
  CONSTRAINT `fk_ysCode_ysCodeGroup`
    FOREIGN KEY (`ysCodeGroup_Seq`)
    REFERENCES `world`.`ysCodeGroup` (`yscgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


 insert yscodegroup(
	yscgSeqAnother
    ,yscdName
    ,yscgDesc
    ) values(
    1
    ,'국가코드'
    ,'회원가입전화번호 국가코드'
    );
    
     insert yscode(
	  yscdSeqAnother
      ,yscdName
      ,yscdDesc
      ,ysCodeGroup_Seq
    ) values(
		81
		,'Japan '
        ,'Japan (+81)'
        ,1
    );
    
    select *from yscode;
    select *from  yscodegroup;
	 select *from yysmembersmember;
  select
		a.yscgSeqAnother
        ,a.yscdName
        ,b.yscdSeqAnother
        ,b.yscdName
     from yscodegroup as a
     left join yscode as b on b.ysCodeGroup_Seq = a.yscgSeqAnother;
     
     insert ysmember (
		ysmSeq
		,ysmIdEmail
		 ,ysmPassword
		 ,ysmname
		 ,ysmNationalCd
		 ,ysmphone
		 ,ysmMakettingNy
		 ,ysmDob
		 ,ysmMembersNy
		 )values(
         1
		 ,'123@naver.com'
		 ,1234
		 ,'미키마우스'
		 ,81
         ,'01022222222'
		 ,1
		 ,'20220108'
		 ,1
		   );
     