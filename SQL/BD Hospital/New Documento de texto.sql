create database hospital;
use hospital;
create table cuarto (
    idCuarto int not null unique auto_increment, 
    tipo char (1) not null,
    primary key (idCuarto)

);

create table sala (
    idSala int not null unique auto_increment,
    equipo bit not null,  
    primary key (idSala)
);

create table maquina (
    idMaquina int not null unique auto_increment,
    nombre varchar (30)  not null,
    idSala int not null,
    primary key(idMaquina),
    foreign key(idSala) references sala(idSala)
);

