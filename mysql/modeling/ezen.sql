use world;

CREATE TABLE IF NOT EXISTS `world`.`ysCodeGroup` (
  `yscgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `yscgSeqAnother` VARCHAR(50) NULL,
  `yscdName` VARCHAR(50) NULL,
  `yscgUseNy` TINYINT NULL,
  `yscgOrder` TINYINT NULL,
  `yscgDesc` VARCHAR(255) NULL,
  `yscgDelNy` TINYINT NULL,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT(11) NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regSvrDatatime` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT(11) NULL,
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
  `ysCodeGroup_yscgSeq` BIGINT UNSIGNED NOT NULL,
  `regIP` VARCHAR(100) NULL,
  `regSeq` BIGINT(11) NULL,
  `regDevice` TINYINT NULL,
  `regDatatime` DATETIME NULL,
  `regSvrDatatime` DATETIME NULL,
  `modIP` VARCHAR(100) NULL,
  `modSeq` BIGINT(11) NULL,
  `modDevice` TINYINT NULL,
  `modDatatime` DATETIME NULL,
  `modSvrDatatime` DATETIME NULL,
  `DelNy` TINYINT NULL,
  PRIMARY KEY (`yscdSeq`, `ysCodeGroup_yscgSeq`),
  INDEX `fk_ysCode_ysCodeGroup_idx` (`ysCodeGroup_yscgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_ysCode_ysCodeGroup`
    FOREIGN KEY (`ysCodeGroup_yscgSeq`)
    REFERENCES `world`.`ysCodeGroup` (`yscgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

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
  `ysCodeGroup_yscgSeq` BIGINT UNSIGNED NOT NULL,
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
  PRIMARY KEY (`yscdSeq`, `ysCodeGroup_yscgSeq`),
  INDEX `fk_ysCode_ysCodeGroup_idx` (`ysCodeGroup_yscgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_ysCode_ysCodeGroup`
    FOREIGN KEY (`ysCodeGroup_yscgSeq`)
    REFERENCES `world`.`ysCodeGroup` (`yscgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select*from yscode;
