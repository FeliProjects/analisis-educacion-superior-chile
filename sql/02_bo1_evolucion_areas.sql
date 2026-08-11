SELECT 
	cat_periodo, 
	area_carrera_generica, 
	COUNT(*) as total_alumnos
FROM matricula_maestra
GROUP BY cat_periodo, area_carrera_generica
ORDER BY cat_periodo, area_carrera_generica;