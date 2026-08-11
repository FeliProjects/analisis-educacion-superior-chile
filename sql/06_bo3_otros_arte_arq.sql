SELECT
    cat_periodo,
    area_carrera_generica,
    count(*) as total_estudiantes
FROM matricula_maestra
WHERE
    cine_f_13_area = 'Otros Profesionales de Arte y Arquitectura'
GROUP BY cat_periodo, area_carrera_generica;