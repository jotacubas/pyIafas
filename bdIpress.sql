drop database if exists BDIpress;
create database BDIpress;
use BDIpress;

create table Cargo (
  CodCargo int primary key auto_increment,
  CarDescripcion char(30) unique );

create table Distrito (
  CodDistrito int primary key auto_increment,
  DisDescripcion char(30) unique );


create table Proveedores (
  CodProveedor int primary key,
  ProvNombre char(30) not null,
  ProvCategoria char(5) unique,
  ProvRUC char(11) unique,
  ProvContacto char(30) not null,
  ProvTelefonos char(20),
  ProvCorreo char(30),  
  ProvDireccion char(50) not null,
  ProvMonto decimal(5,2) not null,
  CodDistrito int references Distrito(CodDistrito),
  CodProcedimiento int references Procedimientos(CodProcedimiento));

create table Procedimientos (
  CodProcedimiento int primary key auto_increment,
  ProcDescripcion char(50) not null,
  CodProveedor int references Proveedores(CodProveedor) );  

create table Empleado (
  CodEmpleado int primary key auto_increment,
  EmpNombres char(30) not null,
  EmpApePat char(30) not null,
  EmpApeMat char(30) not null,
  EmpDni char(8) unique,
  EmpClave char(8) not null,
  EmpCorreo char(30),  
  EmpDireccion char(50) not null,
  CodDistrito int references Distrito(CodDistrito),
  CodCargo int references Cargo(CodCargo),
  Eliminado bit default 0 );

create table Usuario(
CodUsuario int(8) primary key auto_increment,
NomUsuario char(30) not null,
ApeUsuario char(30) not null,
EmaUsuario char(40) not null,  
ClaveUsuario char(10) not null);

insert into Usuario
values (70864794,201970864794,'admin123');

select * from usuario


