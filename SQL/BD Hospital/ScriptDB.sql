create database hospital;
use hospital;


create table cuarto (
    idCuarto int not null unique identity, 
    tipo char(1) not null,
    primary key (idCuarto)
);

create table sala (
    idSala int not null unique identity,
    equipo bit not null,  
    primary key (idSala)
);

create table maquina (
    idMaquina int not null unique identity,
    nombre varchar (30)  not null,
    idSala int not null,
    primary key(idMaquina),
    foreign key(idSala) references sala(idSala)
);

create table medico (
    idMedico int not null unique identity,
    nombre varchar (30)  not null,
    apellido varchar (30)  not null,
    especialidad varchar (30)  not null,
    idSala int not null,
    primary key (idMedico),
    foreign key(idSala) references sala(idSala)
);
create table paciente (
    idPaciente int not null unique identity,
    nombre varchar (30)  not null,
    apellido varchar (30)  not null,
    edad int not null, 
    motivoDeIngreso varchar (30)  not null,
    idCuarto int not null,
    idMedico int not null,
    primary key (idPaciente),
    foreign key(idCuarto) references cuarto(idCuarto),
    foreign key (idMedico) references medico(idMedico)
);
