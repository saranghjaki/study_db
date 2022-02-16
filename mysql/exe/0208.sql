use nct;

create database nct;
 drop table infrNationality;
CREATE TABLE IF NOT EXISTS `nct`.`infrCode` (
  `ifcdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcdSeqAnother` VARCHAR(50) NULL,
  `ifcdName` VARCHAR(100) NOT NULL,
  `ifcgNameEng` VARCHAR(100) NULL,
  `ifcdNameLang1` VARCHAR(50) NULL,
  `ifcdNameLang2` VARCHAR(50) NULL,
  `ifcdNameLang3` VARCHAR(50) NULL,
  `ifcdNameLang4` VARCHAR(50) NULL,
  `ifcdNameLang5` VARCHAR(50) NULL,
  `ifcgUseNy` TINYINT NULL,
  `ifcgOrder` TINYINT NULL,
  `ifcdReferenceV1` VARCHAR(50) NULL,
  `ifcgReferenceV2` VARCHAR(50) NULL,
  `ifcgReferenceV3` VARCHAR(50) NULL,
  `ifcdReferenceI1` INT NULL,
  `ifcgReferenceI2` INT NULL,
  `ifcdReferenceI3` INT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT NOT NULL,
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
  `infrCodeGroup_ifcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifcdSeq`, `infrCodeGroup_ifcgSeq`),
  INDEX `fk_infrCode_infrCodeGroup_idx` (`infrCodeGroup_ifcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup`
    FOREIGN KEY (`infrCodeGroup_ifcgSeq`)
    REFERENCES `nct`.`infrCodeGroup` (`ifcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrCode` (
  `ifcdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcdSeqAnother` VARCHAR(50) NULL,
  `ifcdName` VARCHAR(100) NOT NULL,
  `ifcgNameEng` VARCHAR(100) NULL,
  `ifcdNameLang1` VARCHAR(50) NULL,
  `ifcdNameLang2` VARCHAR(50) NULL,
  `ifcdNameLang3` VARCHAR(50) NULL,
  `ifcdNameLang4` VARCHAR(50) NULL,
  `ifcdNameLang5` VARCHAR(50) NULL,
  `ifcgUseNy` TINYINT NULL,
  `ifcgOrder` TINYINT NULL,
  `ifcdReferenceV1` VARCHAR(50) NULL,
  `ifcgReferenceV2` VARCHAR(50) NULL,
  `ifcgReferenceV3` VARCHAR(50) NULL,
  `ifcdReferenceI1` INT NULL,
  `ifcgReferenceI2` INT NULL,
  `ifcdReferenceI3` INT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT NOT NULL,
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
  `infrCodeGroup_ifcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifcdSeq`, `infrCodeGroup_ifcgSeq`),
  INDEX `fk_infrCode_infrCodeGroup_idx` (`infrCodeGroup_ifcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup`
    FOREIGN KEY (`infrCodeGroup_ifcgSeq`)
    REFERENCES `nct`.`infrCodeGroup` (`ifcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrCodeGroup` (
  `ifcgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcgSeqAnother` VARCHAR(50) NULL,
  `ifcgName` VARCHAR(100) NOT NULL,
  `ifcgNameEng` VARCHAR(100) NULL,
  `ifcgUseNy` TINYINT NULL,
  `ifcgOrder` TINYINT NULL,
  `ifcgReferenceV1` VARCHAR(50) NULL,
  `ifcgReferenceV2` VARCHAR(50) NULL,
  `ifcgReferenceV3` VARCHAR(50) NULL,
  `ifcgReferenceI1` INT NULL,
  `ifcgReferenceI2` INT NULL,
  `ifcgReferenceI3` INT NULL,
  `ifcgDesc` VARCHAR(255) NULL,
  `ifcgDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifcgSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;
CREATE TABLE IF NOT EXISTS`infrCode` (
  `ifcdSeq` BIGINT UNSIGNED NOT NULL,
  `ifcdSeqAnother` VARCHAR(50) NULL,
  `ifcdName` VARCHAR(100) NOT NULL,
  `ifcgNameEng` VARCHAR(100) NULL,
  `ifcdNameLang1` VARCHAR(50) NULL,
  `ifcdNameLang2` VARCHAR(50) NULL,
  `ifcdNameLang3` VARCHAR(50) NULL,
  `ifcdNameLang4` VARCHAR(50) NULL,
  `ifcdNameLang5` VARCHAR(50) NULL,
  `ifcgUseNy` TINYINT NULL,
  `ifcgOrder` TINYINT NULL,
  `ifcdReferenceV1` VARCHAR(50) NULL,
  `ifcgReferenceV2` VARCHAR(50) NULL,
  `ifcgReferenceV3` VARCHAR(50) NULL,
  `ifcdReferenceI1` INT NULL,
  `ifcgReferenceI2` INT NULL,
  `ifcdReferenceI3` INT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT NOT NULL,
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
  `infrCodeGroup_ifcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifcdSeq`, `infrCodeGroup_ifcgSeq`),
  INDEX `fk_infrCode_infrCodeGroup_idx` (`infrCodeGroup_ifcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup`
    FOREIGN KEY (`infrCodeGroup_ifcgSeq`)
    REFERENCES `infrCodeGroup` (`ifcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `infrcodegroup`
(

`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
'회원보안질문.구분'
,1
,14
,0
,now()
,now()
,now()
,now()
);

select *from infrcodegroup;
select *from infrmember;

update infrCodeGroup
set ifcgDelNy=1
where ifcgSeq > 10;

 delete from infrcode
  where 1=1
	and ifcdSeq = 36;

INSERT INTO `nct`.`infrcode`
(
`ifcdName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcdDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`infrCodeGroup_ifcgSeq`)
VALUES
(
'가장좋아하는음식은?'
,1
,4
,0
,now()
,now()
,now()
,now()
,14
);

select
a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcgOrder
from infrcodegroup a
left join infrcode b on b.infrCodeGroup_ifcgSeq =a.ifcgSeq



CREATE TABLE IF NOT EXISTS `nct`.`infrMemberNationality` (
  `ifnaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifnaDelNy` TINYINT NOT NULL,
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
  `ifnaOrderNy` TINYINT NULL,
  `ifnaSeq` BIGINT UNSIGNED NOT NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifnaSeq`),
  INDEX `fk_infrMemberNationality_infrNationality1_idx` (`ifnaSeq` ASC) VISIBLE,
  INDEX `fk_infrMemberNationality_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberNationality_infrNationality1`
    FOREIGN KEY (`ifnaSeq`)
    REFERENCES `nct`.`infrNationality` (`ifnaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrMemberNationality_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

	select
 a.ifcgSeq
 ,a.ifcgName
 ,b.ifcdSeq
 ,b.ifcdName
 ,b.ifcgOrder
 from infrcodegroup a
 left join infrcode b on b.infrCodeGroup_ifcgSeq =a.ifcgSeq
 
 
 
INSERT INTO `infrnationality`
(
`ifnaName`,
`ifnaCode2`,
`ifnaCode3`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`ModDateTime`,
`ModDateTimeSvr`)
VALUES
(
"미국"
,"US"
,"USA"
,1
,2
,0
,now()
,now()
,now()
,now()
);

CREATE TABLE IF NOT EXISTS `nct`.`infrNationality` (
  `ifnaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifnaName` VARCHAR(50) NULL,
  `ifnaNameKor` VARCHAR(50) NULL,
  `ifnaNameEng` VARCHAR(50) NULL,
  `ifnaCode3` CHAR NULL,
  `ifnaCode2` CHAR NULL,
  `ifnaUseNy` TINYINT NULL,
  `ifnaOrder` TINYINT NULL,
  `ifnaDesc` VARCHAR(255) NULL,
  `ifnaDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifnaSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaCode2`,
`ifnaCode3`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`ModDateTime`,
`ModDateTimeSvr`)
VALUES
(
"미국"
,"US"
,"USA"
,1
,2
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaCode2`,
`ifnaCode3`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`ModDateTime`,
`ModDateTimeSvr`)
VALUES
(
"미국"
,"US"
,"USA"
,1
,2
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaCode3`,
`ifnaCode2`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
"한국"
,"KOR"
,"KR"
,1
,1
,0
,now()
,now()
,now()
,now()
);

CREATE TABLE IF NOT EXISTS `nct`.`infrMember` (
  `ifmmSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmmAdminNy` TINYINT NULL,
  `ifmmDormancyNy` TINYINT NULL,
  `ifmmName` VARCHAR(50) NOT NULL,
  `ifmmId` VARCHAR(50) NOT NULL,
  `ifmmPassword` VARCHAR(100) NULL,
  `ifmmPwdModDate` DATETIME NULL,
  `ifmmGenderCd` TINYINT NULL,
  `ifmmDob` DATE NULL,
  `ifmmSaveCd` TINYINT NULL,
  `ifmmMarriageCd` TINYINT NULL,
  `ifmmMarriageDate` DATE NULL,
  `ifmmChildrenNum` TINYINT NULL,
  `ifmmFavoriteColor` VARCHAR(50) NULL,
  `ifmmRecommenderSeq` BIGINT NULL,
  `ifmmEmailConsentNy` TINYINT NULL,
  `ifmmSmsConsentNy` TINYINT NULL,
  `ifmmPushConsentNy` TINYINT NULL,
  `ifmmDesc` VARCHAR(255) NULL,
  `ifmmDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifmmSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


INSERT INTO `nct`.`infrnationality`
(`ifnaName`,
`ifnaCode3`,
`ifnaCode2`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
'미국'
,'US'
,'USA'
,1
,2infrmember
,0
,now()
,now()
,now()
,now()
);


CREATE TABLE IF NOT EXISTS `nct`.`infrNationality` (
  `ifnaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifnaName` VARCHAR(50) NULL,
  `ifnaNameKor` VARCHAR(50) NULL,
  `ifnaNameEng` VARCHAR(50) NULL,
  `ifnaCode3` VARCHAR(50) NULL,
  `ifnaCode2` VARCHAR(50) NULL,
  `ifnaUseNy` TINYINT NULL,
  `ifnaOrder` TINYINT NULL,
  `ifnaDesc` VARCHAR(255) NULL,
  `ifnaDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifnaSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`infrmember`
(
`ifmmAdminNy`,
`ifmmDormancyNy`,
`ifmmName`,
`ifmmId`,
`ifmmPassword`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSaveCd`,
`ifmmMarriageCd`,
`ifmmMarriageDate`,
`ifmmChildrenNum`,
`ifmmFavoriteColor`,
`ifmmRecommenderSeq`,
`ifmmEmailConsentNy`,
`ifmmSmsConsentNy`,
`ifmmPushConsentNy`,
`ifmmDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
0
,0
,'푸'
,'POOH'
,32212
,3
,2010111
,4
,2
,20100210
,1
,'노란'
,0
,1
,0
,1
,1
,now()
,now()
,now()
,now()
);

select 
a.ifmmSeq
,a.ifmmAdminNy
,a.ifmmName
,a.ifmmId
,(select ifcdName  from infrcode as c where 1=1 and infrCodeGroup_ifcgSeq=1 and ifcdSeq=a.ifmmSeq)as type
,a.ifmmGenderCd
,a.ifmmDob
,a.ifmmSaveCd
,a.ifmmMarriageCd
,a.ifmmMarriageDate
,a.ifmmChildrenNum
from infrmember  a
left join infrcode b on b.infrCodeGroup_ifcgSeq =a.ifmmSeq;

CREATE TABLE IF NOT EXISTS `nct`.`infeMemberAddress` (
  `ifmaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmaDefaultNy` TINYINT NOT NULL,
  `ifmaTypeCd` TINYINT NULL,
  `ifmaTitle` VARCHAR(100) NULL,
  `ifmaAddress1` VARCHAR(100) NULL,
  `ifmaAddress2` VARCHAR(100) NULL,
  `ifmaZipcode` VARCHAR(50) NULL,
  `ifmaDelNy` TINYINT NOT NULL,
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
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmaSeq`),
  INDEX `fk_infeMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infeMemberEmail_infrMember110`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infeMemberEmail` (
  `ifmeSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmeDefaultNy` TINYINT NOT NULL,
  `ifmeTypeCd` TINYINT NULL,
  `ifmeEmailFull` VARCHAR(100) NULL,
  `ifmeEmailAccount` VARCHAR(100) NULL,
  `ifmeEmailDomain` VARCHAR(50) NULL,
  `ifmeEmailDomainCd` TINYINT NULL,
  `DelNy` TINYINT NOT NULL,
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
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmeSeq`),
  INDEX `fk_infeMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infeMemberEmail_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrLogLogin` (
  `iflgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmmId` VARCHAR(50) NULL,
  `ifmmSeq` BIGINT NULL,
  `iflgResultNy` TINYINT NULL,
  `iflgDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  PRIMARY KEY (`iflgSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrMemberNationality` (
  `ifmnaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmnaDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT ZEROFILL NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regDatatimeSvr` DATETIME NULL,
  `modregIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modDatatimeSvr` DATETIME NULL,
  `ifnaOrderNy` TINYINT NULL,
  `ifnaSeq` BIGINT UNSIGNED NOT NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmnaSeq`),
  INDEX `fk_infrMemberNationality_infrNationality1_idx` (`ifnaSeq` ASC) VISIBLE,
  INDEX `fk_infrMemberNationality_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberNationality_infrNationality1`
    FOREIGN KEY (`ifnaSeq`)
    REFERENCES `nct`.`infrNationality` (`ifnaSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrMemberNationality_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrAuth` (
  `ifatSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifatAdminNy` TINYINT NULL,
  `ifatName` VARCHAR(50) NOT NULL,
  `ifatNameEng` VARCHAR(50) NULL,
  `ifatUseNy` TINYINT NULL,
  `ifatOrder` TINYINT NULL,
  `ifatDescNy` TINYINT NULL,
  `ifatDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifatSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrMenu` (
  `ifmuSeq` BIGINT UNSIGNED NOT NULL,
  `ifmuAdminNy` TINYINT NULL,
  `ifmuName` VARCHAR(50) NOT NULL,
  `ifmuNameEng` VARCHAR(50) NULL,
  `ifmuUrl` VARCHAR(100) NULL,
  `ifmuParents` BIGINT NULL,
  `ifmuDepth` TINYINT NULL,
  `ifmuUseNy` TINYINT NULL,
  `ifmuOrder` TINYINT NULL,
  `ifmuDesc` VARCHAR(255) NULL,
  `ifmuDelNy` TINYINT NOT NULL,
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
  PRIMARY KEY (`ifmuSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrAuthMenu` (
  `ifauSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifauRoleCd` TINYINT NULL COMMENT '관리 조회 구분\n목록,등록,수정,삭제,조회',
  `ifauUseNy` TINYINT NULL,
  `ifauOrder` TINYINT NULL,
  `ifauDesc` VARCHAR(255) NULL,
  `ifauDelNy` TINYINT NOT NULL,
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
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
  `ifmuSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifauSeq`),
  INDEX `fk_infrAuthMenu_infrAuth1_idx` (`ifatSeq` ASC) VISIBLE,
  INDEX `fk_infrAuthMenu_infrMenu1_idx` (`ifmuSeq` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nct`.`infrAuthMember` (
  `ifamSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifamUseNy` TINYINT NULL,
  `ifamOrder` TINYINT NULL,
  `ifamDesc` VARCHAR(255) NULL,
  `ifamDelNy` TINYINT NOT NULL,
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
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifamSeq`),
  INDEX `fk_infrAuthMember_infrAuth1_idx` (`ifatSeq` ASC) VISIBLE,
  INDEX `fk_infrAuthMember_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;



CREATE TABLE IF NOT EXISTS `nct`.`infeMemberJoinQna` (
  `ifjqSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifjqQuestionCd` TINYINT NOT NULL,
  `ifjqAnswer` VARCHAR(50) NOT NULL,
  `ifmhDelNy` TINYINT NOT NULL,
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
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifjqSeq`),
  INDEX `fk_infeMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infeMemberEmail_infrMember1110`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;



INSERT INTO `nct`.`infememberhobby`
(
`ifmhSeq`,
`ifmhHobbyTypeCd`,
`ifmnUseNy`,
`ifmnOder`,
`ifmhDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`ifmmSeq`)
VALUES
(
3
,3
,1
,2
,1
,now()
,now()
,now()
,now()
,2
);


select * from infememberphone;

INSERT INTO `nct`.`infememberemail`
(
`ifmeDefaultNy`,
`ifmeTypeCd`,
`ifmeEmailFull`,
`ifmeEmailAccount`,
`ifmeEmailDomainCd`,
`DelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`ifmmSeq`)
VALUES
(
1
,1
,'qwe@daum.net'
,'qwe'
,2
,1
,now()
,now()
,now()
,now()
,2
);

INSERT INTO `nct`.`infememberaddressonline`
(
`ifmaoTypeCd`,
`ifmaoDefaultNy`,
`ifmaoSnsTypeCd`,
`ifmaoUrl`,
`ifmaoTitle`,
`ifmaoDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`ifmmSeq`)
VALUES
(
2
,1
,1
,'qqwe'
,'우디'
,2
,now()
,now()
,now()
,now()
,2
);

CREATE TABLE IF NOT EXISTS `nct`.`infeMemberAddressOnline` (
  `ifmaoSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmaoTypeCd` TINYINT NULL,
  `ifmaoDefaultNy` TINYINT NOT NULL,
  `ifmaoSnsTypeCd` TINYINT NULL,
  `ifmaoUrl` VARCHAR(100) NULL,
  `ifmaoTitle` VARCHAR(100) NULL,
  `ifmaoDelNy` TINYINT NOT NULL,
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
  `ifmmSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifmaoSeq`),
  INDEX `fk_infeMemberEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infeMemberEmail_infrMember11`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `nct`.`infrMember` (`ifmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

INSERT INTO `nct`.`infememberjoinqna`
(
`ifjqQuestionCd`,
`ifjqAnswer`,
`ifmhDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`ifmmSeq`)
VALUES
(
2
,'김땡땡'
,1
,now()
,now()
,now()
,now()
,3
);

INSERT INTO `nct`.`infememberaddress`
(
`ifmaDefaultNy`,
`ifmaTypeCd`,
`ifmaTitle`,
`ifmaAddress1`,
`ifmaAddress2`,
`ifmaZipcode`,
`ifmaDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`ifmmSeq`)
VALUES
(
0
,2
,'친구네'
,'경상남도 창원시 '
,'빛마을 11호'
,6555
,1
,now()
,now()
,now()
,now()
,2

);
select * from infememberphone;
select * from infememberaddress;
select * from infememberaddressonline;
select * from infememberemail;
select * from infememberhobby;
select * from infememberjoinqna;
select * from infrcode;
select * from infrcodegroup;
select * from infrmember;
 
   update infrmember set
	ifmmPassword='318aee3fed8c9d040d35a7fc1fa776fb31303833aa2de885354ddf3d44d8fb69'
   
      where 1=1 
 and ifmmSeq= 3;
 
 
 select
 a.ifcgSeq
 ,a.ifcgName
 ,b.ifcdSeq
 ,b.ifcdName
 ,b.ifcgUseNy
 ,b.ifcgOrder
 ,b.ifcdDelNy 
 from infrcodegroup as a
	left join infrcode as b on b.ifcgSeq =a.ifcgSeq
    where 1=1
    
    and a.ifcgUseNy=1
    and b.ifcgUseNy=1

    order by
    a.ifcgSeq asc
    ,b.ifcgOrder desc;
 
 -- 관리자 화면과 사용자 화면 이 다르다 관리자 화면 호출시 추가
	select count(*)
    where 1=1
    and infrAdminNy =1
    and ifnmId =''
    and ifnmPassword =''
    ;

     select
      a.ifmmSeq
      ,a.ifmmAdminNy
      ,a.ifmmName
      ,a.ifmmId
      ,a.ifmmPassword
       ,(select ifcdName  from infrcode as c where 1=1 and ifcgSeq=2 and ifcgOrder=a.ifmmSeq)as type
      ,a.ifmmDob
	,(select ifcdName  from infrcode as c where 1=1 and ifcgSeq=3 and ifcgOrder=a.ifmmSeq)as type
      ,(select ifcdName  from infrcode as c where 1=1 and ifcgSeq=4 and ifcgOrder=a.ifmmSeq)as type
      ,(select ifcdName  from infrcode as c where 1=1 and ifcgSeq=5 and ifcgOrder=a.ifmmSeq)as type
	   ,(select ifcdName  from infrcode as c where 1=1 and ifcgSeq=7 and ifcgOrder=b.ifmmSeq)as type
	    ,(select ifcdName  from infrcode as c where 1=1 and ifcgSeq=8 and ifcgOrder=b.ifmmSeq)as type
      ,(select ifcdName  from infrcode  as c where 1=1 and ifcgSeq=9 and ifcgOrder=b.ifmmSeq)as type
      ,b.ifmpNumber
      ,concat(substring(b.ifmpNumber,1,3),"-",substring(b.ifmpNumber,4,4),"-",substring(b.ifmpNumber,7,4))as phoneNumber
      ,(select ifcdName  from infrcode as c where 1=1 and ifcgSeq=13 and ifcgOrder=b.ifmmSeq)as type
      ,d.ifmaTitle
      ,d.ifmaAddress1
      ,d.ifmaAddress2
      ,d.ifmaZipcode
      ,(select ifcdName from infrcode as c where 1=1 and ifcgSeq=10 and ifcgOrder=b.ifmmSeq)as type
      ,(select ifcdName from infrcode as c where 1=1 and ifcgSeq=11 and ifcgOrder=b.ifmmSeq)as type
	 ,e.ifmaoUrl
	 ,(select ifcdName from infrcode as c where 1=1 and ifcgSeq=5 and ifcgOrder=b.ifmmSeq)as type
	 ,f.ifmeEmailAccount
	 ,(select ifcdName from infrcode as c where 1=1 and ifcgSeq=6 and ifcgOrder=b.ifmmSeq)as domain
     ,(select ifcdName from infrcode as c where 1=1 and ifcgSeq=12 and ifcgOrder=b.ifmmSeq)as hobby
     ,(select ifcdName from infrcode as c where 1=1 and ifcgSeq=14 and ifcgOrder=b.ifmmSeq)as QnA
     ,h.ifjqAnswer
    ,(select ifnaName from infrnationality as j where 1=1 and  j.ifnaSeq=i.ifnaSeq)as nationality
       from infrmember as a
    left join infememberphone as b on b.ifmmSeq= a.ifmmSeq
     left join infememberaddress as d on d.ifmmSeq= a.ifmmSeq 
       left join infememberaddressonline as e on e.ifmmSeq= a.ifmmSeq 
        left join infememberemail as f on f.ifmmSeq= a.ifmmSeq 
         left join infememberhobby as g on g.ifmmSeq= a.ifmmSeq 
          left join  infememberjoinqna as h on h.ifmmSeq= a.ifmmSeq 
          left join  infrmembernationality as i on i.ifmmSeq= a.ifmmSeq 
			 left join  infrnationality as j on j.ifnaSeq= i.ifnaSeq
         where 1=1 
          order by
          a.ifmmSeq asc 
         ;
		
 select * from infememberphone;
select * from infememberaddress;
select * from infememberaddressonline;
select * from infememberemail;
select * from infememberhobby;
select * from infememberjoinqna;
select * from infrcode;
select * from infrcodegroup;
select * from infrmember;
select * from infrmembernationality;
select * from infrnationality;


 alter table infeMemberHobby modify ifmhHobbyTypeCd BIGINT;
 alter table infrMember modify ifmmGenderCd BIGINT;
alter table infrMember modify ifmmSaveCd BIGINT;
alter table infrMember modify ifmmMarriageCd BIGINT;
 alter table infeMemberEmail modify ifmeTypeCd  BIGINT;
  alter table infeMemberEmail modify ifmeEmailDomainCd BIGINT;
   alter table infeMemberPhone modify ifmpTypeCd  BIGINT;
 alter table infeMemberPhone modify ifmpDeviceCd  BIGINT;
 alter table infeMemberPhone modify ifmpTelecomCd  BIGINT;
  alter table infrAuthMenu modify  ifauRoleCd BIGINT;
   alter table infeMemberAddressOnline modify ifmaoTypeCd BIGINT;
    alter table infeMemberAddressOnline modify ifmaoSnsTypeCd BIGINT;
alter table infeMemberAddress modify ifmaTypeCd BIGINT;
alter table infeMemberJoinQna modifY ifjqQuestionCd BIGINT;

alter table infrcode
rename column infrCodeGroup_ifcgSeq to ifcgSeq;

INSERT INTO `nct`.`infrmembernationality`
(`ifmnaDelNy`,
`ifmnDefaultNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`ifnaOrderNy`,
`ifnaSeq`,
`ifmmSeq`)
VALUES
(
0
,1
,now()
,now()
,now()
,now()
,1
,2
,3
);


