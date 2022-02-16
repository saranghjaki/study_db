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
  drop table ysmember;

-- 호출
select * from yscode; 

-- 테이블 내용
desc review8;

-- 전체데이터삭제
truncate yscode;

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
  delete from yscodegroup
  where 1=1
	and yscgSeq = 4;
    
    -- 데이터정렬
 order by 
 a.컬럼 asc(내림차순) desc(오름차순)
 a.컴럼
 
 -- 조건
 where 1=1
 and a.컬럼 =1 (조건)
 
 -- 회원가입폼 
 
CREATE TABLE IF NOT EXISTS `world`.`ysMember` (
  `ysmSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ysmIdEmail` VARCHAR(100) NOT NULL,
  `ysmPassword` VARCHAR(100) NOT NULL,
  `ysmname` VARCHAR(100) NULL,
  `ysmNationalCd` VARCHAR(50) NULL,
  `ysmphone` VARCHAR(100) NULL,
  `ysmMakettingNy` TINYINT NULL,
  `ysmDob` DATE NULL,
  `ysmMembersNy` TINYINT NULL,
  `ysmNonMemberName` VARCHAR(100) NULL,
  `ysmNonMemberPhone` VARCHAR(100) NULL,
  `ysmDormantNy` TINYINT NULL,
  `ysmDormantDatatime` DATETIME NULL,
  `ysmSecessionNy` TINYINT NULL,
  `secessionDatatime` DATETIME NULL,
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

CREATE TABLE IF NOT EXISTS `world`.`ysProduct` (
  `yspSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `yspName` VARCHAR(100) NULL,
  `yspTypeCd` INT NULL COMMENT '1.판개형2.이중분할양개형 3.비대칭양개형 4.슬라이딩도어 5.파티션도어 6스윙도어',
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

CREATE TABLE IF NOT EXISTS `world`.`ysMemberAddress` (
  `ysmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ysmDefaultNY` TINYINT NULL,
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

CREATE TABLE IF NOT EXISTS `world`.`ysLogin` (
  `yslSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ysldata` DATETIME NULL,
  `ysljoinChannelCd` INT NULL COMMENT '\'가입경로 1.직접 2.카카오 3네이버 4구글 5페이스',
  `yslChannelId` VARCHAR(100) NOT NULL COMMENT '\'sms 연결id\'',
  `yslResultNy` TINYINT NULL COMMENT '로긴성공여부',
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
  `yscsTypecd` INT NULL COMMENT '\'문의타입\'1.as2.대량구매3일반상담 4기타',
  `yscsContents` VARCHAR(300) NULL,
  `yscsDatatime` DATETIME NULL COMMENT '상담가능시간',
  `yscConsultingNumber` INT NULL,
  `yscAnswerNumber` INT NULL,
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
  `ysegReferenceV1` VARCHAR(50) NULL,
  `ysegReferenceV2` VARCHAR(50) NULL,
  `ysegReferenceV3` VARCHAR(50) NULL,
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
  `yscEng` VARCHAR(50) NULL,
  `yscLang1` VARCHAR(50) NULL,
  `yscLang2` VARCHAR(50) NULL,
  `yscLang3` VARCHAR(50) NULL,
  `yscLang4` VARCHAR(50) NULL,
  `yscLang5` VARCHAR(45) NULL,
  `yscdUseNy` TINYINT NULL,
  `yscdOrder` TINYINT NULL,
  `yscReferenceV1` VARCHAR(50) NULL,
  `yscReferenceV2` VARCHAR(50) NULL,
  `yscReferenceV3` VARCHAR(50) NULL,
  `yscdDesc` VARCHAR(255) NULL,
  `yscdDelNy` TINYINT NULL,
  `yscg_Seq` BIGINT UNSIGNED NOT NULL,
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
  PRIMARY KEY (`yscdSeq`, `yscg_Seq`),
  INDEX `fk_ysCode_ysCodeGroup_idx` (`yscg_Seq` ASC) VISIBLE,
  CONSTRAINT `fk_ysCode_ysCodeGroup`
    FOREIGN KEY (`yscg_Seq`)
    REFERENCES `world`.`ysCodeGroup` (`yscgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


 insert yscodegroup(
	yscdName
    ,yscgUseNy
    ,yscgOrder
    ,yscgDelNy
     ) values(
    '로그인채널'
    ,1
    ,4
    ,0
      );
    
     insert yscode(
	  yscdName
      ,yscdUseNy
      ,yscdOrder
      ,yscg_Seq
    ) values(
		'페이스북'
		,1
        ,1
        ,7
    );
    
    select *from yscode;
    select *from  yscodegroup;
	 select *from ysmember;
 	 select 
		a.yscdName
        ,b.yscdName
        ,b.yscdOrder
         from yscodegroup as a
     left join yscode as b on b.yscg_Seq = a.yscgSeq;
     
      select
      a.ysmname
      ,a.ysmphone
      ,a.ysmNationalCd
      ,(select yscdName from yscode where 1=1 and yscg_Seq=1 and yscdSeq =a.ysmNationalCd) as type
      from
		ysmember a;
      
	
      
      
      
     
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
         3
		 ,'asdsad@naver.com'
		 ,6733
		 ,'푸우'
		 ,3
         ,'0101234555'
		 ,1
		 ,'20110108'
		 ,1
		   );
     
     
      insert ysmemberaddress(
		ysmDefaultNY
		,ysmaZipcode
        ,ysmaAddress1
        ,ysmaAddress2
        ,ysmaTitle
        ,ysMember_ysmSeq
        )values(
        1
        ,34567
        ,'충천남도 청주시 빛가람로2길 '
        ,'2층'
        ,'집주소'
        ,3
         );
         
     select
      a.ysmseq
	  ,a.ysmNationalCd
      ,(select yscdname  from yscode as c where 1=1 and yscg_Seq=1 and yscdSeq=a.ysmSeq)as type
      ,a.ysmname
      ,b.ysmaZipcode
      ,b.ysmaAddress1
      ,b.ysmaAddress2
      ,b.ysmDefaultNY
         from ysmember as a
          left join  ysmemberaddress as b on b.ysMember_ysmSeq = a.ysmSeq
		and  b.ysmDefaultNY = 1;
        
        
        select  * from ysmemberaddress where  ysmDefaultNY=1;
         select *from yscode;
          select *from ysmemberaddress;
          
           insert yscode(
				yscdName
			   ,yscdUseNy
			   ,yscdOrder
			   ,yscg_Seq
			   )value (
				''
                ,1
                ,4
                ,7);
                
                CREATE TABLE IF NOT EXISTS `world`.`ysMemberPhone` (
  `ysmpSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ysmpDefaultNY` TINYINT NULL,
  `ysmpTypeCd` INT NULL,
  `ysmpTelecomCd` INT NULL,
  `ysspPhoneNumber` VARCHAR(100) NULL,
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
  PRIMARY KEY (`ysmpSeq`),
  INDEX `fk_ysMemberAddress_ysMember1_idx` (`ysMember_ysmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_ysMemberAddress_ysMember11`
    FOREIGN KEY (`ysMember_ysmSeq`)
    REFERENCES `world`.`ysMember` (`ysmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '회원주소지';


CREATE TABLE IF NOT EXISTS `world`.`ysMemberAddress` (
  `ysmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ysmDefaultNY` TINYINT NULL,
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

CREATE TABLE IF NOT EXISTS `world`.`ysMemberEmail` (
  `ysmeSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ysmeDefaultNY` TINYINT NULL,
  `ysmetypeCd` TINYINT NULL,
  `ysmaEmilFull` VARCHAR(100) NULL,
  `ysmEmailAccount` VARCHAR(100) NULL,
  `ysmeEmailDomain` VARCHAR(100) NULL,
  `ysmeEmailDomainCd` TINYINT NULL,
  `ysmSeq` BIGINT UNSIGNED NOT NULL,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modSvrDatatime` DATETIME NULL,
  `DelNy` TINYINT NULL,
  PRIMARY KEY (`ysmeSeq`),
  INDEX `fk_ysMemberAddress_ysMember1_idx` (`ysmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_ysMemberAddress_ysMember10`
    FOREIGN KEY (`ysmSeq`)
    REFERENCES `world`.`ysMember` (`ysmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '회원주소지';

select*from ysMemberEmail;

insert ysMemberEmail(
	ysmeDefaultNY
    ,ysmetypeCd
    ,ysmaEmilFull
    ,ysmSeq
    )values(
    1
    ,2
    ,'dfsfa@naver.com'
    ,3
    );
