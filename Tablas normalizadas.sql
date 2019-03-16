CREATE TABLE `cat_estados` (
  `idestado` tinyint(3) unsigned NOT NULL,
  `estado` varchar(31) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `cat_municipios` (
  `idmunicipio` int(10) unsigned NOT NULL,
  `idestado` tinyint(3) unsigned NOT NULL,
  `municipio` varchar(49) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idmunicipio`,`idestado`),
  KEY `fk_cat_municipios_cat_estados1_idx` (`idestado`),
  CONSTRAINT `fk_cat_municipios_cat_estados1` FOREIGN KEY (`idestado`) REFERENCES `cat_estados` (`idestado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `cat_cp` (
  `idcp` int(10) unsigned NOT NULL DEFAULT '0',
  `idmunicipio` int(10) unsigned NOT NULL,
  `idestado` tinyint(3) unsigned NOT NULL,
  `cp` mediumint(5) NOT NULL,
  `colonia` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idcp`),
  KEY `fk_cat_cp_cat_municipios1_idx` (`idmunicipio`),
  KEY `fk_cat_cp_cat_estados1_idx` (`idestado`),
  KEY `cp` (`cp`),
  CONSTRAINT `fk_cat_cp_cat_estados1` FOREIGN KEY (`idestado`) REFERENCES `cat_estados` (`idestado`),
  CONSTRAINT `fk_cat_cp_cat_municipios1` FOREIGN KEY (`idmunicipio`) REFERENCES `cat_municipios` (`idmunicipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;