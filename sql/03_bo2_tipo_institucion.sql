SELECT
    cat_periodo,
    tipo_inst_1,
    tipo_inst_2,
    nivel_carrera_2,
    COUNT(*) AS total_alumnos
FROM matricula_maestra
WHERE tipo_inst_1 IS NOT NULL
GROUP BY cat_periodo, tipo_inst_1, tipo_inst_2, nivel_carrera_2
ORDER BY cat_periodo, tipo_inst_1, tipo_inst_2, nivel_carrera_2;