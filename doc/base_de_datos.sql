create schema Bank;

use Bank;

create table usuario
(
	usuario VARCHAR(10) NOT NULL PRIMARY KEY,
	dni_cliente VARCHAR(8),
	password VARCHAR(25),
	tipo INT,
	baja BOOL
);

create table cliente 
(
	dni VARCHAR(8) NOT NULL PRIMARY KEY,
	usuario VARCHAR(10),
	cuil VARCHAR(11),
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	sexo INT,
	fecha_nacimiento DATE,
	nacionalidad VARCHAR(20),
	provincia VARCHAR(20),
	localidad VARCHAR(20),
	direccion VARCHAR(50),
	correo_electronico VARCHAR(50),
	baja BOOL
);

create table telefono (
	dni VARCHAR(8) NOT NULL PRIMARY KEY,
	telefono VARCHAR(20) NOT NULL PRIMARY KEY
);

create table cuenta
(
	dni_cliente VARCHAR(8) NOT NULL PRIMARY KEY,
	cbu VARCHAR(22) NOT NULL PRIMARY KEY,
	fecha_creacion DATE,
	tipo INT,
	numero VARCHAR(10),
	saldo MONEY,
	baja BOOL
);


create table movimiento
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	dni_cliente VARCHAR(8),
	fecha DATE,
	detalle VARCHAR(50),
	importe MONEY,
	saldo MONEY,
	tipo INT
);

create table prestamo_solicitud 
(
	id VARCHAR(8) NOT NULL PRIMARY KEY,
	dni_cliente VARCHAR(8),
	fecha DATE,
	importe_solicitado MONEY,
	importe_a_pagar MONEY,
	plazo_meses DATE,
);


create table prestamo_estado
(
	prestamo_id VARCHAR(8) NOT NULL PRIMARY KEY,
	estado_aprobacion INT,
	fecha DATE,
	detalle VARCHAR(100)
);

create table prestamo_cuota
(
	prestamo_id VARCHAR(8) NOT NULL PRIMARY KEY,
	numero_cuota INT,
	cuotas INT,
	fecha_limite_cuota DATE,
	importe_cuota MONEY,
	estado_cuota INT
);


INSERT INTO usuario (usuario,password,dni_)