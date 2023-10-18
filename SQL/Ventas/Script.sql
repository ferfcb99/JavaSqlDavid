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

CREATE TABLE producto (
	id_producto int not null unique identity,
	nombre varchar (30) not null,
	precio decimal (8,2), -- 999.99 -> 5, 2 -> 71652.555 -> 8,3
	stock bit not null, -- recibe 1 si es true, y cero si es false 
	PRIMARY KEY (id_producto)
);


-- date:  fechas 'yyyy-mm-dd'
-- datetime: fecha y hora 'yyyy-mm-dd hh:mm:ss:ms'
CREATE TABLE cliente (
	numeroMembresia int not null identity unique,
	nombre varchar (20),
	apellido varchar (20),
	direccion varchar (500),
	primary key (numeroMembresia)
);

CREATE TABLE pedido (
	numeroDeOrden int not null unique IDENTITY,
	fecha DATE not NULL,
	numeroProductos int,
	curp varchar(18) not null, -- ESTE CAMPO ES EL QUE REFERENCIARA LA LLAVE FORANEA
	numeroMembresiaCliente int not null,
	PRIMARY KEY (numeroDeOrden),
	foreign key (curp) references trabajador(curp),
	FOREIGN key(numeroMembresiaCliente) REFERENCES cliente(numeroMembresia)
);


create table pedidoproducto(
	numeroDeOrden int not null,
	id_producto int not null,
	PRIMARY key(numeroDeOrden, id_producto),
	FOREIGN key (numeroDeOrden) REFERENCES pedido(numeroDeOrden),
	FOREIGN key (id_producto) REFERENCES producto(id_producto)
);
-- 1 , 2, 3, 4, 5
-- 5, 3, 4, 7

-- (1, 2)