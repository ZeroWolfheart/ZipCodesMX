<h1>ZipCodesMX</h1>

Este proyecto contiene la información brindada por SEPOMEX, los códigos postales, estados, municipios y colonias que hay en México.

La información se encuentra normalizada en el modelo de base de datos que se encuentra en el proyecto, creado con MySql Workbench.

El codigo sql fue probado para la base de datos MySql y es conpatible con las versiones 5.5 o superiores.

<h3>Contenido:</h3>
<ul>
  <li>Codigos-no Normalizados.sql: posee toda la información de SEPOMEX, de manera desorganizada, se incluye por si se desea incluir más información en el modelo propuesto.</li>
  <li>Tablas normalizadas.sql: contiene el script sql para crear las tablas que contentienen la información ya normalizada de los códigos postales, entidades y municipios.</li>
  <li>Carpeta dump: Contiene los scripts numerados segun el orden en que deben ser ejecutados para llenar las tablas normalizadas.</li>
  <li><b>StoredProcedures para su consulta a través del codigo postal y del id del registro</b></li>
  <li><b>Clases PHP de ejemplo</b></li>
</ul>
El archivo modelo codigos postales.mwb contiene el modelo entidad relación.

En total contiene 145908 registros.

<h3>Uso:</h3>

Dentro de la base de datos a utilizar ejecutar los scripts en el siguiente orden:
<ol>
  <li>Ejecutar Tablas normalizadas.sql</li>
  <li>Ejecutar 1cat_estados-data.sql</li>
  <li>Ejecutar 2cat_municipios-data.sql</li>
  <li>Ejecutar 3cat_cp-data.sql</li>
  <li>Ejecutar procedimientos para consultar.sql</li>
</ol>
