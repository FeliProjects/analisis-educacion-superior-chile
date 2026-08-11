SELECT
    cat_periodo,
    tipo_inst_1,
    tipo_inst_2,
    COUNT(*) AS total_alumnos
FROM matricula_maestra
WHERE 
	tipo_inst_1 IS NOT NULL 
	AND anio_ing_carr_ori = cat_periodo
GROUP BY cat_periodo, tipo_inst_1, tipo_inst_2
ORDER BY cat_periodo, tipo_inst_1, tipo_inst_2;