-- Creación de tabla aleatoria con el 5% de los datos para EDA inicial
CREATE TABLE muestra_matricula AS
SELECT *
FROM matricula_maestra
ORDER BY RANDOM()
LIMIT (
    SELECT COUNT(*) * 0.05
    FROM matricula_maestra
);
