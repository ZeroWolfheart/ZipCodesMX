DELIMITER $$

CREATE PROCEDURE readCpByCP
(IN cpi MEDIUMINT(5))
BEGIN
	SELECT a.idcp, a.colonia, b.municipio, c.estado FROM cat_cp a 
	LEFT JOIN cat_estados c ON c.idestado = a.idestado
	LEFT JOIN cat_municipios b ON b.idmunicipio = a.idmunicipio AND b.idestado = c.idestado WHERE cp = cpi;
END$$

CREATE PROCEDURE readCpByIdCP
(IN idcpIn INT)
BEGIN
	SELECT a.cp, a.colonia, b.municipio, c.estado FROM cat_cp a 
	LEFT JOIN cat_estados c ON c.idestado = a.idestado
	LEFT JOIN cat_municipios b ON b.idmunicipio = a.idmunicipio AND b.idestado = c.idestado WHERE a.idcp = idcpIn;
END$$

DELIMITER ;