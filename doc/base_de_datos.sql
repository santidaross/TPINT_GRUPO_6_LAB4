create schema dbBank;

use dbBank;

create table usuario
(
	username VARCHAR(10) NOT NULL PRIMARY KEY,
	password VARCHAR(25),
	//dni_cliente VARCHAR(8),
	tipo INT,
	baja BOOL
);

create table cliente 
(
	dni VARCHAR(8) NOT NULL PRIMARY KEY,
	username VARCHAR(10),
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
	dni VARCHAR(8) NOT NULL,
	telefono VARCHAR(20) NOT NULL,
    PRIMARY KEY (dni,telefono)
);

create table cuenta
(
	dni_cliente VARCHAR(8) NOT NULL,
	cbu VARCHAR(22) NOT NULL,
	fecha_creacion DATE,
	tipo INT,
	numero VARCHAR(10),
	saldo DECIMAL(19,4),
	baja BOOL,
    PRIMARY KEY (dni_cliente, cbu)
);


create table movimiento
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	dni_cliente VARCHAR(8),
	fecha DATE,
	detalle VARCHAR(50),
	importe DECIMAL(19,4),
	saldo DECIMAL(19,4),
	tipo INT
);

create table prestamo_solicitud 
(
	id VARCHAR(8) NOT NULL PRIMARY KEY,
	dni_cliente VARCHAR(8),
	fecha DATE,
	importe_solicitado DECIMAL(19,4),
	importe_a_pagar DECIMAL(19,4),
	plazo_meses DATE
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
	importe_cuota DECIMAL(19,4),
	estado_cuota INT
);


// INSERTS

INSERT INTO `dbbank`.`usuario`
(`usuario`,`password`,`tipo`,`baja`)
VALUES
("sross",123,1,0),
("aross",321,0,0),
("flopez",231,0,1),
("rlopez",213,1,1);