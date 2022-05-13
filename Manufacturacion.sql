create database	Manufacturacion;

use Manufacturacion;
create table producto 
(
	ID								integer primary key not null auto_increment,
    nombre							varchar(50) not null,
    fecha_introduccion				date not null,
    fecha_interrupcion				date not null,
    fecha_interrupcion_soporte		date not null,
    comentarios						varchar(100)
);

create table fabricante
(
	ID				integer primary key not null auto_increment,
    nombre			varchar(50) not null,
    rol				varchar(50) not null,
    asosiacion		varchar(50) not null,
    distribuidor	varchar(50) not null,
    subsidiario		real not null
);



create table documento
(
	ID		integer primary key not null auto_increment,
    fecha_creacion	date not null,
    comentario		varchar(100) not null,
    ubicacion		varchar(100) not null,
    texto			text(100) not null,
    imagen			varchar(200),
    P_ID			integer,
    foreign key (P_ID) references producto(ID)
);

create table especificacion
(
	id			integer primary key not null auto_increment,
    datos_documento		varchar(100) not null,
    descripcion			varchar(100) not null,
    comentario 			varchar(100) not null,
    D_ID				integer,
    foreign key (D_ID) references documento(ID)
);

