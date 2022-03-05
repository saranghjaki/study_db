WITH RECURSIVE CteCate(ifctSeq, ifctParents, ParentsName, ifctName, depth, orderString, ifctOrder, ifctDepth) AS 
(
    select ifctSeq, ifctParents, cast('' as char(30)), ifctName, 0, cast(ifctSeq as char(10)), ifctOrder, ifctDepth from infrCate where ifctParents is null
    UNION ALL
    select d.ifctSeq, d.ifctParents, cte.ifctName, d.ifctName, depth + 1, concat(cte.orderString, '-', d.ifctOrder), d.ifctOrder, d.ifctDepth from infrCate d inner join CteCate cte on d.ifctParents = cte.ifctSeq
)
select * from CteCate order by orderString;

use nct;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesCode` (
  `pilcdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilcdSeqAnother` VARCHAR(50) NULL,
  `pilcdName` VARCHAR(100) NOT NULL,
  `pilcgNameEng` VARCHAR(100) NULL,
  `pilcdNameLang1` VARCHAR(50) NULL,
  `pilcdNameLang2` VARCHAR(50) NULL,
  `pilcdNameLang3` VARCHAR(50) NULL,
  `pilcdNameLang4` VARCHAR(50) NULL,
  `pilcdNameLang5` VARCHAR(50) NULL,
  `pilcgUseNy` TINYINT NULL,
  `pilcgOrder` TINYINT NULL,
  `pilcdReferenceV1` VARCHAR(50) NULL,
  `pilcgReferenceV2` VARCHAR(50) NULL,
  `pilcgReferenceV3` VARCHAR(50) NULL,
  `pilcdReferenceI1` INT NULL,
  `pilcgReferenceI2` INT NULL,
  `pilcdReferenceI3` INT NULL,
  `pilcdDesc` VARCHAR(255) NULL,
  `pilcdDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  `pilcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`pilcdSeq`),
  INDEX `fk_infrCode_infrCodeGroup_idx` (`pilcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup`
    FOREIGN KEY (`pilcgSeq`)
    REFERENCES `nct`.`pilatesCodeGroup` (`pilcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesCodeGroup` (
  `pilcgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilcgSeqAnother` VARCHAR(50) NULL,
  `pilcgName` VARCHAR(100) NOT NULL,
  `pilcgNameEng` VARCHAR(100) NULL,
  `pilcgUseNy` TINYINT NULL,
  `pilcgOrder` TINYINT NULL,
  `pilcgReferenceV1` VARCHAR(50) NULL,
  `pilcgReferenceV2` VARCHAR(50) NULL,
  `pilcgReferenceV3` VARCHAR(50) NULL,
  `pilcgReferenceI1` INT NULL,
  `pilcgReferenceI2` INT NULL,
  `pilcgReferenceI3` INT NULL,
  `pilcgDesc` VARCHAR(255) NULL,
  `pilcgDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  PRIMARY KEY (`pilcgSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `nct`.`pilatesCode` (
  `pilcdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilcdSeqAnother` VARCHARpilatescodegroup(50) NULL,
  `pilcdName` VARCHAR(100) NOT NULL,
  `pilcgNameEng` VARCHAR(100) NULL,
  `pilcdNameLang1` VARCHAR(50) NULL,
  `pilcdNameLang2` VARCHAR(50) NULL,
  `pilcdNameLang3` VARCHAR(50) NULL,
  `pilcdNameLang4` VARCHAR(50) NULL,
  `pilcdNameLang5` VARCHAR(50) NULL,
  `pilcgUseNy` TINYINT NULL,
  `pilcgOrder` TINYINT NULL,
  `pilcdReferenceV1` VARCHAR(50) NULL,
  `pilcgReferenceV2` VARCHAR(50) NULL,
  `pilcgReferenceV3` VARCHAR(50) NULL,
  `pilcdReferenceI1` INT NULL,
  `pilcgReferenceI2` INT NULL,
  `pilcdReferenceI3` INT NULL,
  `pilcdDesc` VARCHAR(255) NULL,
  `pilcdDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  `pilcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`pilcdSeq`),
  INDEX `fk_pilatesCode_pilatesCodeGroup1_idx` (`pilcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_pilatesCode_pilatesCodeGroup1`
    FOREIGN KEY (`pilcgSeq`)
    REFERENCES `nct`.`pilatesCodeGroup` (`pilcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

alter table pilatespayment add pilcgCardTypeCd BIGINT;

select * from pilatescodeGroup; 
select * from pilatescode; 
INSERT INTO `nct`.`pilatescodegroup`
(
`pilcgName`,
`pilcgUseNy`,
`pilcgOrder`,
`pilcgDesc`,
`pilcgDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
'회원 주소타입'
,1
,26
,'pilatesmemberphone'
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `nct`.`pilatescode`
(
`pilcdName`,
`pilcgUseNy`,
`pilcgOrder`,
`pilcdDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`pilcgSeq`)
VALUES
(
'5시30분'
,1
,10
,0
,now()
,now()
,now()
,now()
,27
);

CREATE TABLE IF NOT EXISTS `nct`.`pilatesProgram` (
  `pilpgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilpgName` VARCHAR(50) NULL,
  `pilpgTypeCd` BIGINT NULL COMMENT '개인/그룹/듀엣/체험',
  `pilpgTimeCd` BIGINT NULL COMMENT '50분/30분',
  `pilpgNumberCd` BIGINT NULL COMMENT '횟수 1/8/10/12/20/24/30/48/100',
  `pilpgDateCd` BIGINT NULL COMMENT '1개월/2개월/3개월/6개월/9개월/12개월',
  `pilpgOrder` TINYINT NULL,
  `pilpgDesc` VARCHAR(255) NULL,
  `pilpgDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  PRIMARY KEY (`pilpgSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesInstructor` (
  `pilinSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilinName` VARCHAR(50) NOT NULL,
  `pilinUseNy` TINYINT NULL,
  `pilinUseOrder` TINYINT NULL,
  `pilinUseDesc` VARCHAR(255) NULL,
  `pilatesTypeCd` BIGINT NULL COMMENT '직급',
  `pilinDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT(11) NULL,
  `modDevice` TINYINT(1) NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  PRIMARY KEY (`pilinSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesProgramInstructor` (
  `pilpgiSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilpgiOrder` TINYINT NULL,
  `pilpgiDesc` VARCHAR(255) NULL,
  `pilpgiDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  `pilpgSeq` BIGINT UNSIGNED NOT NULL,
  `pilinSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`pilpgiSeq`),
  INDEX `fk_pilatesProgramInstructor_pilatesProgram1_idx` (`pilpgSeq` ASC) VISIBLE,
  INDEX `fk_pilatesProgramInstructor_pilatesInstructor1_idx` (`pilinSeq` ASC) VISIBLE,
  CONSTRAINT `fk_pilatesProgramInstructor_pilatesProgram1`
    FOREIGN KEY (`pilpgSeq`)
    REFERENCES `nct`.`pilatesProgram` (`pilpgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pilatesProgramInstructor_pilatesInstructor1`
    FOREIGN KEY (`pilinSeq`)
    REFERENCES `nct`.`pilatesInstructor` (`pilinSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesMember` (
  `pilmmSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilmmAdminNy` TINYINT NULL,
  `pilmmDormancyNy` TINYINT NULL,
  `pilmmName` VARCHAR(50) NOT NULL,
  `pilmmId` VARCHAR(50) NOT NULL,
  `pilmmPassword` VARCHAR(100) NULL,
  `pilmmPwdModDate` DATETIME NULL,
  `pilmmMemberNumber` VARCHAR(50) NULL,
  `pilmmGenderCd` BIGINT NULL,
  `pilmmDob` DATE NULL,
  `pilmmSaveCd` BIGINT NULL,
  `pilmmMarriageCd` BIGINT NULL,
  `pilmmMarriageDate` DATE NULL,
  `pilmmChildrenNum` TINYINT NULL,
  `pilmmFavoriteColor` VARCHAR(50) NULL,
  `pilmmRecommenderSeq` BIGINT NULL,
  `pilmmEmailConsentNy` TINYINT NULL,
  `pilmmSmsConsentNy` TINYINT NULL,
  `pilmmPushConsentNy` TINYINT NULL,
  `pilmmDesc` VARCHAR(255) NULL,
  `pilmmDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  PRIMARY KEY (`pilmmSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesPayment` (
  `pilpySeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilpyPrice` VARCHAR(50) NULL COMMENT '결재가격',
  `pilpyPaymentTypeCd` BIGINT NULL COMMENT '개인/그룹/듀엣/체험',
  `pilpyTaxBillTypeCd` BIGINT NULL COMMENT '세금계산서 개인 기업',
  `pilpyTaxBillNumber` INT NULL,
  `pilpyOrder` TINYINT NULL,
  `pilpyDesc` VARCHAR(255) NULL,
  `pilpyDelNy` TINYINT NOT NULL,
  `pilpyStartDate` DATE NULL COMMENT '시작일',
  `pilpyEndtDate` DATE NULL COMMENT '만료일',
  `pilpyDregisterDate` DATE NULL COMMENT '등록일',
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  `pilmmSeq` BIGINT UNSIGNED NOT NULL,
  `pilpgiSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`pilpySeq`),
  INDEX `fk_pilatesPayment_pilatesMember1_idx` (`pilmmSeq` ASC) VISIBLE,
  INDEX `fk_pilatesPayment_pilatesProgramInstructor1_idx` (`pilpgiSeq` ASC) VISIBLE,
  CONSTRAINT `fk_pilatesPayment_pilatesMember1`
    FOREIGN KEY (`pilmmSeq`)
    REFERENCES `nct`.`pilatesMember` (`pilmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pilatesPayment_pilatesProgramInstructor1`
    FOREIGN KEY (`pilpgiSeq`)
    REFERENCES `nct`.`pilatesProgramInstructor` (`pilpgiSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesReservation` (
  `pilrvSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilrvDate` DATE NULL COMMENT '예약일자',
  `pilrvTimeCd` BIGINT NULL COMMENT '9시 9시30분\n10시 10시 30분\n11시 11시 30분\n12시 12시 30분\n13시 13시 30분\n14시 14시30분',
  `pilrvCheckNy` TINYINT NULL COMMENT '출석체크',
  `pilrvOrder` TINYINT NULL,
  `pilrvDesc` VARCHAR(255) NULL,
  `pilrvDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  `pilpySeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`pilrvSeq`),
  INDEX `fk_pilatesReservation_pilatesPayment1_idx` (`pilpySeq` ASC) VISIBLE,
  CONSTRAINT `fk_pilatesReservation_pilatesPayment1`
    FOREIGN KEY (`pilpySeq`)
    REFERENCES `nct`.`pilatesPayment` (`pilpySeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesStop` (
  `pilstSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilstStopNy` TINYINT NULL,
  `pilstStopDate` DATE NULL,
  `pilstStopDesc` VARCHAR(255) NULL,
  `pilstOrder` TINYINT NULL,
  `pilstDesc` VARCHAR(255) NULL,
  `pilstDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  `pilpySeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`pilstSeq`),
  INDEX `fk_pilatesStop_pilatesPayment1_idx` (`pilpySeq` ASC) VISIBLE,
  CONSTRAINT `fk_pilatesStop_pilatesPayment1`
    FOREIGN KEY (`pilpySeq`)
    REFERENCES `nct`.`pilatesPayment` (`pilpySeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

 alter table pilatesprogram add pilpgPrice int;

select * from pilatescodegroup;
select * from pilatescode;
select * from pilatesprograminstructor;
select * from pilatesstop;
select * from pilatesreservation;
select * from pilatesprogram;
select * from pilatespayment;
select * from pilatesmember order by pilmmSeq asc ;
select * from pilatesinstructor;
select * from pilatesmemberphone;
select * from pilatesmemberaddress;

use nct;
 alter table pilatespayment modify pilpyTaxBillNumber VARCHAR(50);

SELECT USER();
SELECT DATABASE();
-- 코드그룹 코드 
select
a.pilcgSeq
,a.pilcgName
,a.pilcgDesc
,b.pilcdSeq 
,b.pilcdName
,b.pilcgOrder
 from pilatescodegroup as a
     left join pilatescode as b on b.pilcgSeq = a.pilcgSeq;

select
	a.pilcgSeq
	,a.pilcgName
     from pilatescodegroup as a
          WHERE 1=1
			
            ;
-- 프로그램 선택
select
	b.pilpgiSeq
	,a.pilinName 
    , concat(substring(c. pilpgPrice,1,6),"원") as price
	,(select pilcdName from pilatescode where 1=1 and pilcgSeq=19 and  pilcdSeq=a.pilatesTypeCd) as type
	,c.pilpgName
	,(select pilcdName from pilatescode where 1=1 and pilcgSeq=17 and  pilcdSeq=c.pilpgTypeCd) as type
	,(select pilcdName from pilatescode where 1=1 and pilcgSeq=15 and  pilcdSeq=c.pilpgTimeCd) as type
	,(select pilcdName from pilatescode where 1=1 and pilcgSeq=14 and  pilcdSeq=c.pilpgNumberCd) as type
	,(select pilcdName from pilatescode where 1=1 and pilcgSeq=16 and  pilcdSeq=c.pilpgDateCd) as type
		from  pilatesinstructor as a
		   left join pilatesprograminstructor as b on b.pilinSeq = a.pilinSeq
		   left join pilatesprogram as c on c.pilpgSeq = b.pilpgSeq
       where 1=1
			and a.pilinUseNy =1
			and a.pilinDelNy =0
			and c.pilpgDelNy=0
         order by 
		 b.pilpgiSeq asc
		 ;
 use nct;
-- 수강권선택 
select
a.pilpySeq
,a.pilpyStartDate
,a.pilpyEndtDate
,a.pilpyDregisterDate
,c.pilmmName
,a.pilpyPrice
,(select pilpgName from pilatesprogram as b1 where 1=1 and a.pilpgiSeq=b.pilpgiSeq and b2.pilinSeq=b.pilinSeq and b1.pilpgSeq =b.pilpgSeq)as type
,(select pilcdName from pilatescode as cd where 1=1 and  pilcgSeq=21 and cd.pilcdSeq =a.pilpyPaymentTypeCd)as type
,(select pilcdName from pilatescode as cd where 1=1 and  pilcgSeq=22 and cd.pilcdSeq =a.pilpyTaxBillTypeCd)as type
,a.pilpyTaxBillNumber
,(select pilcdName from pilatescode as cd where 1=1 and  pilcgSeq=20 and cd.pilcdSeq =a.pilcgCardTypeCd)as card
,(select pilcdName from pilatescode as cd where 1=1 and  pilcgSeq=23 and cd.pilcdSeq =e.pilmpTypeCd)as type
,(select pilcdName from pilatescode as cd where 1=1 and  pilcgSeq=24 and cd.pilcdSeq =e.pilmpDeviceCd)as type
,(select pilcdName from pilatescode as cd where 1=1 and  pilcgSeq=25 and cd.pilcdSeq =e.pilmpTelecomCd)as type
,e.pilmpNumber
from  pilatespayment as a
	left join pilatesprograminstructor as b  on b.pilpgiSeq =a.pilpgiSeq
	left join pilatesprogram as b1 on b1.pilpgSeq = b.pilpgSeq
    left join pilatesinstructor as b2 on b2.pilinSeq = b.pilinSeq
    left join pilatesmember as c on c.pilmmSeq = a.pilmmSeq
    left join pilatesmemberaddress as d on d.pilmmSeq = a.pilmmSeq
    left join pilatesmemberphone as e on e.pilmmSeq = a.pilmmSeq
    ;
    -- 필라테스 예약
select
 a.pilrvSeq
,d.pilmmName
 ,a.pilrvDate
 ,(select pilcdName from pilatescode as cd where 1=1 and  pilcgSeq=27 and cd.pilcdSeq =a.pilrvTimeCd)as type
 ,b.pilpyStartDate
 ,b.pilpyEndtDate
 ,c2.pilinName 
,(select pilpgName from pilatesprogram as c1 where 1=1 and b.pilpgiSeq=c.pilpgiSeq and c2.pilinSeq=c.pilinSeq and c1.pilpgSeq =c.pilpgSeq)as type
,(select pilcdName from pilatescode where 1=1 and pilcgSeq=15 and  pilcdSeq=c1.pilpgTimeCd) as type
,(select pilcdName from pilatescode where 1=1 and pilcgSeq=14 and  pilcdSeq=c1.pilpgNumberCd) as type
,(select pilcdName from pilatescode where 1=1 and pilcgSeq=16 and  pilcdSeq=c1.pilpgDateCd) as type
  from pilatesreservation as a
	left join pilatespayment as b on b.pilpySeq = a.pilpySeq
    left join pilatesprograminstructor as c on c.pilpgiSeq =b.pilpgiSeq
    left join pilatesprogram as c1 on c1.pilpgSeq = c.pilpgSeq
    left join pilatesinstructor as c2 on c2.pilinSeq = c.pilinSeq
     left join pilatesmember as d on d.pilmmSeq = b.pilmmSeq
    ;
 




-- 회원테이블기입

INSERT INTO `nct`.`pilatesmember`
(
`pilmmName`,
`pilmmId`,
`pilmmPassword`,
`pilmmMemberNumber`,
`pilmmEmailConsentNy`,
`pilmmSmsConsentNy`,
`pilmmPushConsentNy`,
`pilmmDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
'박소담'
,'byebye1'
,'ddc10a5906f8c0ea77bac646567f9680f2b6f989f35485f0cc65b7b5a223d32c'
,'4412'
,0
,1
,0
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `nct`.`pilatesinstructor`
(
`pilinName`,
`pilinUseNy`,
`pilatesTypeCd`,
`pilinDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
'박하늘'
,1
,1
,25
,0
,now()
,now()
,now()

);

INSERT INTO `nct`.`pilatesprogram`
(
`pilpgName`,
`pilpgTypeCd`,
`pilpgTimeCd`,
`pilpgNumberCd`,
`pilpgDateCd`,
`pilpgOrder`,
`pilpgDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
'체험1회권-그룹'
,21
,11
,1
,12
,1
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `nct`.`pilatespayment`
(
`pilpyPrice`,
`pilpyPaymentTypeCd`,
`pilpyTaxBillTypeCd`,
`pilpyTaxBillNumber`,
`pilpyDelNy`,
`pilpyStartDate`,
`pilpyEndtDate`,
`pilpyDregisterDate`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`pilmmSeq`,
`pilpgiSeq`
)
VALUES
(
'650000'
,34
,36
,'0165554754'
,0
,20220202
,202203010
,20220202
,now()
,now()
,now()
,now()
,2
,2

);

use nct;


CREATE TABLE IF NOT EXISTS `nct`.`pilatesMember` (
  `pilmmSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilmmAdminNy` TINYINT NULL,
  `pilmmDormancyNy` TINYINT NULL,
  `pilmmName` VARCHAR(50) NOT NULL,
  `pilmmId` VARCHAR(50) NOT NULL,
  `pilmmPassword` VARCHAR(100) NULL,
  `pilmmPwdModDate` DATETIME NULL,
  `pilmmMemberNumber` VARCHAR(50) NULL,
  `pilmmGenderCd` BIGINT NULL,
  `pilmmDob` DATE NULL,
  `pilmmSaveCd` BIGINT NULL,
  `pilmmMarriageCd` BIGINT NULL,
  `pilmmMarriageDate` DATE NULL,
  `pilmmChildrenNum` TINYINT NULL,
  `pilmmFavoriteColor` VARCHAR(50) NULL,
  `pilmmRecommenderSeq` BIGINT NULL,
  `pilmmEmailConsentNy` TINYINT NULL,
  `pilmmSmsConsentNy` TINYINT NULL,
  `pilmmPushConsentNy` TINYINT NULL,
  `pilmmDesc` VARCHAR(255) NULL,
  `pilmmDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  PRIMARY KEY (`pilmmSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesMemberAddress` (
  `pilmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilmaDefaultNy` TINYINT NOT NULL,
  `pilmaTypeCd` BIGINT NULL,
  `pilmaTitle` VARCHAR(100) NULL,
  `pilmaAddress1` VARCHAR(100) NULL,
  `pilmaAddress2` VARCHAR(100) NULL,
  `pilmaZipcode` VARCHAR(50) NULL,
  `pilmaDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  `pilmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`pilmaSeq`),
  INDEX `fk_pilatesMemberAddress_pilatesMember1_idx` (`pilmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_pilatesMemberAddress_pilatesMember1`
    FOREIGN KEY (`pilmmSeq`)
    REFERENCES `nct`.`pilatesMember` (`pilmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`pilatesMemberPhone` (
  `pilmpSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pilmpDefaultNy` TINYINT NOT NULL,
  `pilmpTypeCd` BIGINT NULL,
  `pilmpDeviceCd` BIGINT NULL,
  `pilmpTelecomCd` BIGINT NULL,
  `pilmpNumber` VARCHAR(50) NULL,
  `pilmpDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  `pilmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`pilmpSeq`),
  INDEX `fk_pilatesMemberPhone_pilatesMember1_idx` (`pilmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_pilatesMemberPhone_pilatesMember1`
    FOREIGN KEY (`pilmmSeq`)
    REFERENCES `nct`.`pilatesMember` (`pilmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`pilatesreservation`
(
`pilrvDate`,
`pilrvTimeCd`,
`pilrvOrder`,
`pilrvDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`pilpySeq`)
VALUES
(
20220208
,58
,1
,0
,now()
,now()
,now()
,now()
,2
);

