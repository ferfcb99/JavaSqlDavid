-- programar base de datos de un cliente

-- sentencia para crear base de datos
CREATE DATABASE Clientes;

-- sentencia para poner en uno una base de datos
USE Clientes;

-- CHAR       - Es estatico 
-- VARCHAR    - Tipo de dato dinamico con limite (varchar(n)) [maximo n posiciones] [p,a,o]
-- NVARCHAR   - Es varchar pero comprime

CREATE TABLE Cliente(
	cliente_id INT,
	cliente_nombre VARCHAR(20) NOT NULL, 
	cliente_edad int, -- NULL,
	cliente_consumo money NOT NULL,
	PRIMARY KEY(cliente_id)
);

SELECT * FROM Cliente;

-- generar la consulta que devuelva solo los nombres y los consumos de los clientes
select cliente_nombre, cliente_consumo 
	from Cliente;

-- generar la consulta que devuelve los registros de aquellos clientes que han consumido mas de $50
select * 
	from Cliente 
		where cliente_consumo > 50;

-- generar la consulta que devuelve los registros de aquellos clientes que han consumido cantidades entre 20 y 35
select * 
	from cliente
		where cliente_consumo >= 20 and cliente_consumo <=35;
-- misma consulta con between
select * 
	from Cliente
		where cliente_consumo between 20 and 35;


INSERT INTO Cliente(cliente_id, cliente_nombre, cliente_edad, cliente_consumo)
			VALUES (1, 'Paola', 20, 400);

INSERT INTO Cliente(cliente_id, cliente_nombre, cliente_edad, cliente_consumo)
			VALUES (2, 'Fernanda', 20, 400),
				   (3, 'Fernando', 50, 8000); 

insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (4, 'Lizzy', 4, 2);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (5, 'Toby', 5, 7);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (6, 'Sidonnie', 6, 38);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (7, 'Broddy', 7, 2);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (8, 'Patrica', 8, 33);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (9, 'Glennis', 9, 16);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (10, 'Randal', 10, 4);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (11, 'Goddard', 11, 10);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (12, 'Rudy', 12, 10);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (13, 'Tallia', 13, 12);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (14, 'Kirsteni', 14, 22);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (15, 'Ellissa', 15, 21);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (16, 'Allsun', 16, 20);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (17, 'Hadley', 17, 30);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (18, 'Jacquelynn', 18, 13);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (19, 'Shaine', 19, 27);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (20, 'Magdaia', 20, 26);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (21, 'Robyn', 21, 14);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (22, 'Coletta', 22, 7);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (23, 'Corie', 23, 11);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (24, 'Rab', 24, 27);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (25, 'Minna', 25, 5);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (26, 'Salomone', 26, 12);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (27, 'Bondy', 27, 35);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (28, 'Christel', 28, 16);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (29, 'Karissa', 29, 36);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (30, 'Lindie', 30, 13);
insert into Cliente (cliente_id, cliente_nombre, cliente_edad, cliente_consumo) values (31, 'Keenan', 31, 33);

-- para borrar una base de datos
drop database Clientes;