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
				 ('Fernando', 'Gomez ortiz', 40, 'Fisica'),
				 ('Roberto', 'fuentes', 40, 'Conjuntos'),
				 ('David', '------', 40, 'Matematicas 6'),
				 ('Maria', 'Moreno', 40, 'Base de datos');

select * from tutor;

insert into Alumno(alumno_nombre, alumno_apellidos, alumno_grado, alumno_edad, alumno_carrera, tutor_id)
			values('Fernando', 'Jimenez lopez', 8, 18, 'Matematicas aplicadas', 5),
				  ('Fernando', 'Jimenez lopez', 8, 18, 'Matematicas aplicadas', 5),
				  ('Fernando', 'Jimenez lopez', 8, 18, 'Matematicas aplicadas', 5),
				  ('Fernando', 'Jimenez lopez', 8, 18, 'Matematicas aplicadas', 5);

select * from Alumno;


