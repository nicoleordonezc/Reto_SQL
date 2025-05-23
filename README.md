
# Procesamiento y Transformación de Datos de Empleados

## Descripción

Una agencia de recursos humanos desea estandarizar la visualización de la información personal para sus reportes internos. Para lograrlo, se ha desarrollado un script SQL que crea la base de datos y la tabla `empleados`, inserta registros de ejemplo y realiza una consulta que transforma los datos utilizando funciones SQL.

## Contenido del Script

### 1. Creación de la Base de Datos y la Tabla

- Se crea una base de datos para almacenar la información.
- Se define la tabla `empleados` con columnas relevantes para los datos personales de los empleados, tales como nombre, apellido y correo electrónico.

### 2. Inserción de Registros

- Se agregan varios registros de empleados con datos representativos.

### 3. Consulta SQL con Transformaciones

La consulta `SELECT` aplicada usa las siguientes funciones para procesar y transformar los datos:

- `CONCAT`: para unir nombre y apellido en un solo campo.
- `LENGTH`: para calcular la longitud del correo electrónico.
- `UPPER`: para convertir el nombre a mayúsculas y facilitar la estandarización.
- `SUBSTRING`: para extraer una parte específica del correo electrónico.

### 4. Uso de Alias

Para mejorar la legibilidad de los resultados, las columnas resultantes se renombran usando alias con `AS`. Por ejemplo:

- `NombreCompleto` para la concatenación de nombre y apellido.
- `LongitudEmail` para la longitud del email.
- `NombreMayusculas` para el nombre en mayúsculas.
- `PrefijoEmail` para la parte inicial del email.

## Ejemplo de Consulta

```sql
SELECT
  CONCAT(nombre, ' ', apellido) AS NombreCompleto,
  LENGTH(email) AS LongitudEmail,
  UPPER(nombre) AS NombreMayusculas,
  SUBSTRING(email, 1, 5) AS PrefijoEmail
FROM empleados;
````

## Resultados Esperados

El resultado muestra una tabla clara y legible con la información transformada para cada empleado, facilitando su análisis y estandarización para los reportes internos.

| NombreCompleto | LongitudEmail | NombreMayusculas | PrefijoEmail |
| -------------- | ------------- | ---------------- | ------------ |
| Ana Martínez   | 21            | ANA              | gmail.com    |
| Carlos Sánchez | 22            | CARLOS           | email.com    |
| Laura Gómez    | 19            | LAURA            | hotmail.com  |
