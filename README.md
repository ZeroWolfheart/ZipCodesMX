ZipCodesMX

Este proyecto contiene la informaci�n brindada por SEPOMEX, los c�digos postales, estados, municipios y colonias que hay en M�xico.

La informaci�n se encuentra normalizada en el modelo de base de datos que se encuentra en el proyecto, creado con MySql Workbench.

El codigo sql fue probado para la base de datos MySql y es conpatible con las versiones 5.5 o superiores.

Contenido:

Codigos-no Normalizados.sql: posee toda la informaci�n de SEPOMEX, de manera desorganizada, se incluye por si se desea incluir m�s informaci�n en el modelo propuesto.
Tablas normalizadas.sql: contiene el script sql para crear las tablas que contentienen la informaci�n ya normalizada de los c�digos postales, entidades y municipios.
Carpeta dump: Contiene los scripts numerados segun el orden en que deben ser ejecutados para llenar las tablas normalizadas.

El archivo modelo codigos postales.mwb contiene el modelo entidad relaci�n.

En total contiene 145908 registros.

Uso:

Dentro de la base de datos a utilizar ejecutar los scripts en el siguiente orden:

Ejecutar Tablas normalizadas.sql
Ejecutar 1cat_estados-data.sql
Ejecutar 2cat_municipios-data.sql
Ejecutar 3cat_cp-data.sql
