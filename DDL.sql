-- DDL

DROP DATABASE IF EXISTS rrhh_agencia;

CREATE DATABASE IF NOT EXISTS rrhh_agencia;
USE rrhh_agencia;

CREATE TABLE Empleados (
	id INT PRIMARY KEY auto_increment, 
    nombre VARCHAR (30) NOT NULL,
    apellido VARCHAR (30) NOT NULL,
    correo VARCHAR (50) UNIQUE NOT NULL
);
