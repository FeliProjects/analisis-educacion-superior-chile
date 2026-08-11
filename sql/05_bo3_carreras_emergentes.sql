SELECT
    cat_periodo,
    cine_f_13_subarea AS sector_macro, -- Nivel macro (ej. Salud y Bienestar)
    cine_f_13_area AS familia_carrera, -- Nivel carrera (ej. Técnico en Enfermería)
    COUNT(*) AS total_alumnos
FROM matricula_maestra
WHERE cine_f_13_area IS NOT NULL
GROUP BY cat_periodo, cine_f_13_subarea, cine_f_13_area;