CREATE DATABASE PRACTICA_1_IPC_2


CREATE TABLE CLIENTE
(
CUI int,
Locacion varchar(100) not null,
edad int not null, 
Placa_Vehiculo varchar not null,
No_Viajes int not null,
Primary key(CUI)
)

create table VEHICULO
(
Placa varchar(30) not null,
Modelo varchar(30) not null,
Capacidad int null,
Cui_Propietario int not null,
Primary key(Placa)
)

Create table SERVICIO
(
ID_Servicio varchar not null,
Costo double not null,
Descripcion varchar not null,
estado int,
Primary key(ID_Servicio)
)

Create table CLIENTE_SERVICIO
(
ID_Cliente_Servicio int,
CUI_Cliente int,
ID_Servicio varchar,
ID_Vehiculo varchar,
Primary key(ID_Cliente_Servicio),
Foreign key CUI_Cliente references CLIENTE(CUI)
Foreign key ID_Servicio references SERVICIO(ID_Servicio)
Foreign key ID_Vehiculo references VEHICULO(Placa)
)