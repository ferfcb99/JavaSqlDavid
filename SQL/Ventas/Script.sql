create database Tienda;

use Tienda;

-- drop database Tienda;

CREATE TABLE departamento(
	id_departamento int not null unique identity,
	nombre_departamento varchar(40) not null unique,
	cantidad_trabajadores int not null,
	primary key(id_departamento)
);


CREATE TABLE trabajador(
	curp varchar(18) not null unique,
	nombre_trabajador varchar(30) not null,
	apellido1_trabajador varchar(30) not null,
	apellido2_trabajador varchar(30) not null,
	edad int not null,
	puesto varchar(30) not null,
	id_departamento int not null,
	PRIMARY KEY(curp),
	foreign key(id_departamento) references departamento(id_departamento) --ON DELETE CASCADE ON UPDATE CASCADE
);