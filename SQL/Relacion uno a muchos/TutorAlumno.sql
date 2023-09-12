CREATE database Escuela;

use Escuela;

CREATE TABLE Tutor(
	tutor_id int not null IDENTITY, -- identity hace que sea autoincrementable de 1 en 1
	tutor_nombre varchar(30) not null,
	tutor_apellidos varchar(100) not null,
	tutor_edad int,
	tutor_materia varchar(30) not null,
	primary key(tutor_id)
);

CREATE TABLE Alumno(
	alumno_id int not null IDENTITY,
	alumno_nombre varchar(30) not null,
	alumno_apellidos varchar(100) not null,
	alumno_grado int not null, 
	alumno_edad int not null,
	alumno_carrera varchar(40) not null,
	tutor_id int not null,
	primary key(alumno_id),
	foreign key(tutor_id) references Tutor(tutor_id)
);

insert into Tutor(tutor_nombre, tutor_apellidos, tutor_edad, tutor_materia)
		   values('Paola', 'jimenez ramirez', 40, 'Economia'),
				 ('Fernando', 'Gomez ortiz', 30, 'Fisica'),
				 ('Roberto', 'fuentes', 27, 'Conjuntos'),
				 ('David', '------', 45, 'Matematicas 6'),
				 ('Maria', 'Moreno', 55, 'Base de datos');

insert into Tutor(tutor_nombre, tutor_apellidos, tutor_edad, tutor_materia)
		   values('Samanta', 'Gomez', null, 'Economia');

select * from tutor;

insert into Alumno(alumno_nombre, alumno_apellidos, alumno_grado, alumno_edad, alumno_carrera, tutor_id)
			values('Fernando', 'Jimenez lopez', 1, 18, 'Matematicas aplicadas', 5),
				  ('Paola', 'Jimenez', 2, 20, 'Economia', 2),
				  ('Mauricio', 'lopez', 3, 22, 'Matematicas puras', 1),
				  ('David', '----', 4, 30, 'Fisica', 4);

select * from Alumno;

-- avg

-- consultar el promedio de las edades de los tutores
select AVG(tutor_edad) as promedioDeEdad
	from Tutor
		where tutor_edad between 20 and 30;
		
-- sum
select sum(tutor_edad) as sumaEdad
	from tutor;

-- count
select count(tutor_edad) as totalRegistros
	from Tutor;

select count(tutor_materia) as totalRegistros
	from Tutor;

-- min
select MIN(tutor_edad) as edadMinima --, tutor_nombre
	from tutor;

-- max
select max(alumno_grado) as gradoAlumno
	from Alumno;


select * 
	from Tutor, Alumno;

select count(*)
	from Tutor;

select count(*)
	from alumno;