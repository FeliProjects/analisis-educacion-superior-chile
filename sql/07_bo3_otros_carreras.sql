SELECT
	cat_periodo,
	nomb_carrera,
	count(*) as total_estudiantes
FROM matricula_maestra
WHERE cine_f_13_area = 'Otros Profesionales de Arte y Arquitectura'
GROUP BY cat_periodo, nomb_carrera;