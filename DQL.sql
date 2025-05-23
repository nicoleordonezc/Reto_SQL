-- DQL

SELECT CONCAT(E.nombre, ' ', E.apellido) AS nombre_completo  FROM Empleados E;

SELECT LENGTH(CONCAT(E.nombre, ' ', E.apellido)) AS longitud_nombre, CONCAT(E.nombre, ' ', E.apellido) AS nombre_completo FROM Empleados E;

SELECT UPPER(nombre) AS nombre_mayusculas FROM Empleados;

SELECT SUBSTRING_INDEX(correo, '@', -1) AS dominio_correo FROM Empleados ORDER BY id;
