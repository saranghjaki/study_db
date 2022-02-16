use nct;

CREATE TABLE IF NOT EXISTS `nct`.`infrMenu` (
  `ifmuSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
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

select * from infrmenu;
  delete from infrmenu
  where 1=1
	and ifmuSeq = 14;
    
      update infrmenu set
	ifmuSeq=5
      where 1=1 
 and  ifmuSeq = 7;
  


INSERT INTO `nct`.`infrmenu`
(
`ifmuAdminNy`,
`ifmuName`,
`ifmuParents`,
`ifmuDepth`,
`ifmuUseNy`,
`ifmuOrder`,
`ifmuDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
1
,'테스트관리'
,3
,2
,1
,5
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `nct`.`infrauth`
(
`ifatAdminNy`,
`ifatName`,
`ifatUseNy`,
`ifatOrder`,
`ifatDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`)
VALUES
(
1
,'회원관리자'
,1
,3
,0
,now()
,now()
,now()
,now()
);

select * from infrauthmenu;
INSERT INTO `nct`.`infrauthmenu`
(
`ifauRoleCd`,
`ifauUseNy`,
`ifauOrder`,
`ifauDelNy`,
`regDatatime`,
`regDatatimeSvr`,
`modDatatime`,
`modDatatimeSvr`,
`ifatSeq`,
`ifmuSeq`)
VALUES
(
2
,1
,2
,0
,now()
,now()
,now()
,now()
,3
,2
);
select * from infrauth;
select * from infrauthmenu;
select * from infrmenu;

use nct;

select 
	a.ifatSeq
	,(select ifatName from infrauth as b where b.ifatSeq=a.ifatSeq) as ifatName
	,a.ifmuSeq
	,(select ifmuName from infrmenu as c where c.ifmuSeq=a.ifmuSeq) as ifmuName
	,a.ifauRoleCd
	,(select ifcdName from infrcode as d where d.ifcdSeq=a.ifauRoleCd) as ifcdName
	from infrauthmenu as a
     where 1=1
      and a.ifatSeq=2;
    


