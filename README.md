# Transformación Estructural de la Educación Superior en Chile (2007–2024)

*Evolución de la oferta académica, dinámicas institucionales y alineación con la matriz productiva.*

> **Proyecto de Capstone** realizado para la certificación [Google Data Analytics Professional Certificate](https://www.coursera.org/professional-certificates/google-data-analytics).

## 📌 1. Resumen Ejecutivo

### 🎯 Objetivo del Proyecto

Analizar la evolución de las preferencias académicas, la demanda por áreas del conocimiento y la cuota de mercado institucional en la educación superior chilena durante el periodo 2007–2024, con el fin de aportar visibilidad estratégica para la toma de decisiones en políticas públicas y gestión universitaria.

### 🛠️ Ficha Técnica y Stack

- **Volumen de Datos:** ~20 millones de registros históricos ( ~12 GB de datos administrativos del SIES / MINEDUC).

- **Tecnologías:** PostgreSQL | Python (`pandas`, `numpy`, `sqlalchemy`, `seaborn`, `unidecode`, `re`, `pathlib`) | Tableau.

- **Metodología Destacada:** Cálculo de Tasa de Crecimiento Anual Compuesto (CAGR), limpieza de texto mediante Regex/Normalización léxica, detección de distorsiones categóricas y análisis de escala por percentiles.

### 💡 Hallazgos Clave

1. La Revolución de la Educación Técnica (IPs al Acecho del CRUCH):

    - Los Institutos Profesionales (IP) han sido el verdadero motor de crecimiento del sistema, con una Tasa de Crecimiento Anual Compuesto (CAGR de 6,1%), duplicando el ritmo general del sistema (3,5%).

    - Los IP incrementaron su cuota de mercado del 20,1% en 2007 al 30,8% en 2024, ubicándose a menos de 2 puntos porcentuales de alcanzar al bloque dominante de Universidades del CRUCH (32,7%).

    - Las Universidades Privadas sufrieron un retroceso histórico (cayeron de 31,9% a 25,7% de cuota), impactadas por la pérdida de confianza pública, cierres institucionales y mayores exigencias de acreditación.

2. Reconfiguración del Mapa de Conocimiento:

    - El declive de la Pedagogía: En 2007, Formación Docente era el área con mayor matrícula del país. En 2024 cayó al 4° lugar, mostrando un estancamiento casi total en su volumen histórico.

    - Dominio de Salud y Negocios: Medicina/Salud (+150,5% neto) y Enseñanza Comercial se consolidaron como las áreas líderes, respondiendo a la demanda social y a la estructura económica orientada al sector servicios en Chile.

    - Corrección de Mercado: Derecho (-7,8%) y Periodismo e Información (-4,1%) fueron las únicas áreas tradicionales con crecimiento negativo neto sostenido.

3. Consolidación de Carreras Emergentes y Especialización:

    - Se identificaron 22 carreras emergentes que lograron saltar desde una base baja (≤877 alumnos en 2007) a una posición masiva (≥2.130 alumnos en 2024).

    - Especialización (32% Postgrados): Destaca el fuerte incremento en Postítulos en Administración, Ciencias Sociales y Tecnología, reflejando la necesidad de los profesionales por diferenciarse en un mercado laboral crecientemente competitivo.

    - Alineación Productiva (54% Técnico/Ingenierías): Carreras aplicadas como Ingeniería en Logística, Técnico en Minería y Metalurgia, e Ingeniería en Seguridad Privada (+5.591% de crecimiento) lideraron el escalamiento en la matriz productiva.

4. Hallazgo de Calidad de Datos (Distorsión Operativa):

    - El análisis reveló inconsistencias en la clasificación oficial CINE-UNESCO del MINEDUC: la familia de carreras "Otros Profesionales de Arte y Arquitectura" (con un crecimiento atípico del +6.059%) está compuesta en un 63,7% por la carrera Estética Profesional, la cual posee mayor afinidad funcional con el área de Salud y Bienestar que con la Arquitectura (que solo representó el 0,4%).

### 🚀 Impacto y Recomendaciones de Negocio

- Para el MINEDUC: Se requiere una revisión urgente de los catálogos de clasificación CINE-UNESCO para evitar distorsiones en las estadísticas públicas y perfeccionar las políticas de incentivos para la Formación Docente.

- Para Instituciones de Ed. Superior: Las universidades deben fomentar programas de articulación (Técnico → Profesional → Postítulo) para capturar la demanda de perfeccionamiento continuo y ajustar los cupos de ingreso en áreas tradicionales que muestran signos de saturación.

## 📊 2. Hallazgos y Visualizaciones

### 2.1. El Ascenso de los IPs y la Pérdida de Terreno de las Universidades Privadas

Los Institutos Profesionales (IP) crecieron a una tasa anual compuesta (CAGR del 6,1%), casi triplicando la velocidad de las Universidades Privadas (2,2%) y desplazándolas del segundo lugar nacional.

<img src="https://raw.githubusercontent.com/FeliProjects/analisis-educacion-superior-chile/main/assets/imagenes/01_sharemarket.png">

- El fenómeno IP: Entre 2007 y 2024, los IP pasaron de concentrar el 20,1% al 30,8% de la matrícula total, posicionándose a menos de 2 puntos porcentuales de alcanzar al Consejo de Rectores (CRUCH, 32,7%).

- Caída de la Universidad Privada: Cayeron del 31,9% al 25,7% de participación. Esto coincide temporalmente con el endurecimiento del Sistema Nacional de Acreditación y la pérdida de confianza pública por cierres institucionales durante la década de 2010.

- Profundización en Matrícula de 1° Año (Δ CAGR):

    <img src ="https://raw.githubusercontent.com/FeliProjects/analisis-educacion-superior-chile/refs/heads/main/assets/imagenes/02_cagr.png" width=700 height=400>

    - Las Universidades del CRUCH lideran la atracción de estudiantes nuevos (CAGR 1° año: 3,2%), pero sufren un Δ CAGR negativo (-0,4%) en su matrícula total, lo que sugiere temas de deserción temprana o egresos oportunos.

    - Los IP muestran una retención y progresión sólida con un Δ CAGR positivo (+2,2%), explicado también por la menor duración real de sus carreras.

### 2.2. Reconfiguración de Preferencias: El Declive de Docencia y el Auge de Salud

Formación Docente cayó del 1° lugar en 2007 al 4° lugar en 2024, mientras que Medicina y Salud creció un +150,5% neto.

<img src="https://raw.githubusercontent.com/FeliProjects/analisis-educacion-superior-chile/refs/heads/main/assets/imagenes/03_evolucion_matricula.png">

- El estancamiento de la Educación: En 2007, Pedagogía y Educación lideraban el sistema. En 2024 registraron niveles de matrícula casi idénticos a los de hace 17 años, perdiendo cuota sistemáticamente debido al desgaste del ejercicio profesional y mayores exigencias de ingreso (Ley de Carrera Docente).

- Salud y Servicios como nuevos motores: Medicina y Enseñanza Comercial/Administración capturaron la mayor parte del crecimiento absoluto del país.

- Ajuste de Mercado en carreras tradicionales: Derecho (-7,8%) y Periodismo (-4,1%) fueron las únicas áreas con crecimiento acumulado negativo, mostrando una corrección del mercado ante la sobreoferta de egresados y baja empleabilidad inicial.

- Impacto COVID-19 (2020): La matrícula total sufrió una contracción del -3,8% en 2020 (47.5K de alumnos), logrando una recuperación total e hito histórico hacia 2024 (1.35M de alumnos).
    <img src="https://raw.githubusercontent.com/FeliProjects/analisis-educacion-superior-chile/refs/heads/main/assets/imagenes/04_evolucion_matricula_total.png" width="700" height="450">

### 2.3. Carreras Emergentes: Especialización y Vínculo Tecno-Productivo

Se analizaron 249 familias de carreras unificadas. Se definieron como Emergentes aquellas que iniciaron en 2007 por debajo de la mediana del sistema (≤877 alumnos) y se consolidaron en 2024 por sobre la mediana (≥2.130 alumnos).

<img src="https://raw.githubusercontent.com/FeliProjects/analisis-educacion-superior-chile/refs/heads/main/assets/imagenes/05_top10_crecimiento_absoluto.png">

|Tipo de Carrera| Área de Estudio| Familia de Carrera                               |   Matrícula 2007 |   Matrícula 2024 |   Crecimiento Absoluto |   Tasa Crecimiento % |
|:-|:-|:----------------------------------------------|-------:|-------:|-----------------------:|------------------------------:|
|Postgrado|Postítulo| Postitulo en Administracion y Comercio        |    853 |  14348 |                  13495 |                        1582.1 |
|Pregrado|Ingeniería| Ingenieria en Logistica                       |    389 |  10992 |                  10603 |                        2725.7 |
|Pregrado|Técnico| Tecnico en Peluqueria y Estetica              |    249 |   7673 |                   7424 |                        2981.5 |
|Pregrado|Ingeniería| Ingenieria en Recursos Humanos                |    844 |   7516 |                   6672 |                         790.5 |
|Pregrado|Técnico| Tecnico en Mineria y Metalurgia               |    387 |   6122 |                   5735 |                        1481.9 |
|Pregrado|Ingeniería| Ingenieria en Finanzas                        |    471 |   5229 |                   4758 |                        1010.2 |
|Pregrado|Técnico| Tecnico Veterinario                           |    812 |   5237 |                   4425 |                         545.0   |
|Pregrado|Técnico| Tecnico en Administracion Publica o Municipal |    395 |   4293 |                   3898 |                         986.8 |
|Pregrado|Técnico| Tecnico en Farmacia                           |    109 |   3999 |                   3890 |                        3568.8 |
|Pregrado|Otros| Otros Profesionales de Arte y Arquitectura    |     64 |   3942 |                   3878 |                        6059.4 |


- Explosión del Mercado de Postgrados: El liderazgo del Postítulo en Administración (+1.582%) puede reflejar 2 fenómenos. En primer lugar, la exigencia del mercado laboral por profesionales hiper-especializados capaces de gestionar operaciones complejas y, por otra parte, también refleja una necesidad de los profesionales por diferenciarse del resto, en un mercado cada vez más competitivo.

- Respuesta a Necesidades del País:

    - Logística y Minería: Crecimientos masivos vinculados directamente al desarrollo del comercio exterior, retail e industria minera en Chile.

    - Seguridad Privada (+5.591%): Reflejo directo de cambios normativos y de la crisis de seguridad pública, obligando al sector privado a profesionalizar sus áreas de resguardo.

### 2.4. Hallazgo Auditado: Anomalía de Clasificación en Datos Oficiales (SIES/MINEDUC)

La categoría oficial CINE-UNESCO "Otros Profesionales de Arte y Arquitectura" registró un crecimiento atípico del +6.059%. Al desglosar los las carreras asociadas a esa categoría, se descubrió una distorsión en la categorización de las carreras.

 <img src="https://raw.githubusercontent.com/FeliProjects/analisis-educacion-superior-chile/refs/heads/main/assets/imagenes/06_evolucion_otros_profesionales_art_arq.png">

 - Composición Real de la Categoría en 2024:

    - Estética Profesional (AIEP): 63,7% de las matrículas (2.512 alumnos).

    - Ilustración: 30,7% de las matrículas (1.211 alumnos).

    - Planificación Urbana: 0,4% de las matrículas (14 alumnos).


- Conclusión de Calidad de Datos: La carrera Estética Profesional (impartida por AIEP) está mal clasificada bajo "Otros Profesionales de Arte y Arquitectura" en los registros públicos, cuando su perfil ocupacional pertenece funcionalmente al sector de Salud, Personal Care y Bienestar, pudiendo estar perfectamente bajo la categoria "Otros Profesionales de Salud".

## 🚀 3. Recomendaciones Estratégicas

```
                  ┌─────────────────────────────────────────┐
                  │      RECOMENDACIONES ESTRATÉGICAS       │
                  └────────────────────┬────────────────────┘
                                       │
      ┌────────────────────────────────┼────────────────────────────────┐
      ▼                                ▼                                ▼
🏛️ MINEDUC / SIES             🏢 Directivos IES               🧭 Orientadores / RRHH
• Gobernanza de Datos         • Ajuste de Oferta              • Orientación basada en Datos
• Incentivo Pedagogías        • Articulación de Mallas        • Revalorización Técnico-Profesional
• Inversión en IPs            • Foco en Retención CRUCH
```

### 🏛️ 1. Para el Ministerio de Educación (MINEDUC) y Organismos Reguladores (SIES / CNA)

- 1.1. Implementar Auditorías y Reglas de Validación de Datos (SIES):

    - Problema: Se identificó la categorización errónea de carreras de alto volumen (ej. Estética Profesional etiquetada como Otros Profesionales de Arte y Arquitectura).

    - Acción: Establecer un protocolo estricto de validación y taxonomía estandarizada en los reportes anuales de las IES. Esto evitará diagnósticos equivocados en la asignación de recursos públicos y en la elaboración de estadísticas oficiales.

- 1.2. Recomposición de la Política de Atracción para Carreras Docentes:

    - Problema: El área de Formación Docente se encuentra estancada (CAGR ~0%), lo que genera un riesgo inminente de déficit de profesores idóneos para el sistema escolar a mediano plazo.

    - Acción: Rediseñar la Beca Vocación de Profesor e implementar programas de retención docente, combinando incentivos económicos con programas de postítulo.

- 1.3. Ajuste de Beneficios Estatales al Segmento Técnico-Profesional:

    - Problema: Los IPs capturan la mayor parte del crecimiento del sistema (CAGR 6,1%), pero la regulación y financiamiento histórico han estado sesgados hacia las universidades.

    - Acción: Ampliar y flexibilizar los instrumentos de gratuidad y becas hacia programas IP/CFT de alta pertinencia laboral y menor duración, optimizando el gasto público por estudiante.

### 🏢 2. Para Directivos de Instituciones de Educación Superior (IES)

- 2.1. Redimensionamiento de la Oferta Académica:

    - Problema: Carreras tradicionales como Derecho (-7,8%) y Periodismo (-4,1%) muestran contracciones sistemáticas en la demanda.

    - Acción: Congelar o reducir cupos en sedes saturadas e integrar especializaciones de alta empleabilidad en las mallas existentes (ej. LegalTech, Data Journalism, Compliance).

- 2.2. Diseño de Mallas Modulares y Continuidad de Estudios (Técnico → Postítulo):

    - Problema: El 32% de las carreras emergentes corresponden a Postítulos, demostrando que la titulación inicial ya no es suficiente.

    - Acción: Desarrollar trayectorias formativas "apilables" (stackable credentials) que permitan a los egresados de carreras técnicas continuar estudios hacia ingenierías o diplomados de especialización sin perder tiempo lectivo.

- 2.3. Plan de Retención y Acompañamiento Temprano en Universidades del CRUCH:

    - Problema: El CRUCH muestra un crecimiento positivo en captación de 1er año (CAGR 3,2%), pero un ritmo de crecimiento total menor (ΔCAGR=−0,4%), reflejando fugas o deserción en los primeros semestres.

    - Acción: Implementar sistemas de alerta temprana basados en analítica predictiva durante el primer año académico para intervenir oportunamente en estudiantes con riesgo financiero o académico.

### 🧭 3. Para Asesores Vocacionales, Liceos y Consultoras de RRHH

- 3.1. Orientación Vocacional Basada en Tendencias Reales de Mercado:

    - Problema: Existe una brecha entre las expectativas de los postulantes secundarios y las verdaderas oportunidades laborales del país.

    - Acción: Incorporar dashboards de tendencias como este análisis en los preuniversitarios y liceos, promoviendo el ingreso a áreas emergentes de alta demanda (Logística, Gestión de Seguridad, Sostenibilidad Energética, Tecnología Médica).

- 3.2. Desmitificación de la Educación Técnica:

    - Problema: Prejuicio histórico hacia las carreras cortas a pesar de sus altos índices de retorno y empleabilidad.

    - Acción: Comunicar activamente que la educación técnica en IPs ha sido la alternativa preferida por los estudiantes en la última década gracias a su alta tasa de inserción y menor endeudamiento.

## 🛠️ 4. Metodología Técnica y Arquitectura de Datos

### 4.1. Arquitectura de Datos y Pipeline de Procesamiento

Dado el volumen del dataset (~12 GB distribuido en 18 archivos CSV con ~20 millones de registros), el procesamiento directo en memoria RAM utilizando hojas de cálculo o DataFrames convencionales no era viable. Se diseñó una arquitectura híbrida SQL + Python:



```
[18 Archivos CSV] ──>  🐘 PostgreSQL (Data Warehouse) ──>  📊 SQL Aggregations (Full Dataset)
  (12 GB / ~20M filas)     └─ Tabla: `matricula_maestra`       └─ Filtros por Objetivos (BO1, BO2, BO3)
                           └─ Tabla 5% EDA: `muestra_matricula`                 │
                                                                                ▼
  [Visualizaciones & Insights]  <──  🐍 Python (Jupyter)  <──  DataFrames Acotados (.csv)
  (Seaborn / Matplotlib)             (Pandas / Regex / CAGR)     (SQLAlchemy Connection)
```

### 4.2. Estrategia de Big Data y Optimización de Memoria

1. Almacenamiento Centralizado (PostgreSQL):

    Se alojó la totalidad de los registros en la tabla `matricula_maestra`.

2. Muestreo Aleatorio para Análisis Exploratorio (EDA al 5%):

    Para evitar cuellos de botella en la fase de exploración inicial, se generó una tabla llamada `muestra_matricula` la cual contiene una muestra aleatoria del 5% (~1 millón de filas, ~434 MB en memoria RAM) directamente desde la base de datos mediante [esta consulta](https://github.com/FeliProjects/analisis-educacion-superior-chile/blob/main/sql/01_muestreo_eda.sql) SQL:

    ```
    -- Creación de tabla aleatoria representativa para EDA inicial
    CREATE TABLE muestra_matricula AS
    SELECT *
    FROM matricula_maestra
    ORDER BY RANDOM()
    LIMIT (
        SELECT COUNT(*) * 0.05
        FROM matricula_maestra
    );
    ```

3. Estrategia de Agregación "Push-Down" a SQL:

    Para los análisis definitivos sobre el 100% de los datos, las cargas pesadas de cómputo (Count / Group By) se delegaron al motor de PostgreSQL, extrayendo hacia Python únicamente las tablas consolidadas mediante una conexión con `SQLAlchemy`:

    ```
    # Congiguración de interfaz de conexión

    # Importación de librerias
    from sqlalchemy import create_engine
    import pandas as pd

    # Formato: postgresql://usuario:contraseña@host:puerto/nombre_bd
    DATABASE_URL = "postgresql://usuario:contraseña@localhost:5432/mineduc_db"

    # Creación del motor de conexión
    engine = create_engine(DATABASE_URL)

    # Se define la consulta sobre la tabla de muestra del 5%
    query = "SELECT * FROM muestra_matricula"

    # Leemos directamente a un DataFrame
    try:
        df = pd.read_sql(query, con=engine)
        print(f"Éxito: Se cargaron {len(df)} filas.")
    except Exception as e:
        print(f"Error al conectar: {e}")

    # Exportamos el df a un archivo .csv
    df.to_csv("muestra_estudiantes_dataset.csv")
    ```

## 📁 5. Repositorio de Código y SQL Scripts

### 5.1. Estructura del Repositorio

```
analisis-educacion-superior-chile/
├── README.md                         <- Resumen Ejecutivo y Reporte Principal
├── notebooks/
│   └── analisis.ipynb			      <- Jupyter Notebook con el análisis
├── sql/                              <- Agregaciones SQL para cada Business Objective (BO)
│   ├── 01_muestreo_eda.sql      	  <- Creación de base de datos y muestreo aleatorio (5%)
│   ├── 02_bo1_evolucion_areas.sql
│   ├── 03_bo2_tipo_institucion.sql
│   ├── 04_bo2_primer_año.sql
│   ├── 05_bo3_carreras_emergentes.sql
│   ├── 06_bo3_otros_arte_arq.sql
│   └── 07_bo3_otros_carreras.sql
├── data/
│   └── processed/                     <- Datasets .csv consolidados por objetivo
│    	├── bo_1_dataset.csv
│    	├── bo_2_dataset.csv
│    	├── bo_2_dataset_primer_año.csv
│    	├── bo_3_dataset.csv
│    	├── bo_3_otros_arte_arq.csv
│    	├── bo_3_otros_carreras.csv
│    	└── README.md                  <- Link de descarga de `muestra_estudiantes_dataset.csv`
├── assets/                            <- Gráficos e imágenes exportadas para el reporte
│   └── imagenes/
│       ├── 01_sharemarket.png
│       ├── 02_cagr.png
│       ├── 03_evolucion_matricula.png
│       ├── 04_evolucion_matricula_total.png
│       ├── 05_top10_crecimiento_absoluto.png
│       └── 06_evolucion_otros_profesionales_art_arq.png
│       └── 07_campos_cine_f13_unesco.png
├── requirements.txt
└── .gitignore
```
> [!IMPORTANT]  
> El dataset `muestra_estudiantes_dataset.csv` (637 MB) excede el límite de almacenamiento de GitHub. Se encuentra disponible para descarga externa en este [enlace](https://drive.proton.me/urls/TC6XN1TSYM#OYuibm2uah7v).
