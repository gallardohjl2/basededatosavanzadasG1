
-- Lenguaje de Definici�n de Datos (SQL-LDD)
-- Crear base tiendadigital
create database tiendadigital;
go

-- Cambiar de base de datos
use tiendadigital;
go

-- Crear tabla proveedor


create table proveedor(
 proveedorid int not null identity(1,1),
 numcontrol varchar(30) not null, 
 nombreempresa varchar(50) not null, 
 cp int not null, 
 calle varchar(50) not null, 
 colonia varchar(50) not null, 
 numero int,
 estado varchar(20) not null, 
 telefono varchar(20), 
 paginaweb varchar(30), 
 constraint pk_proveedor
 primary key(proveedorid),
 constraint unico_numcontrol
 unique(numcontrol),
 constraint unico_nombreempresa
 unique(nombreempresa)
);
go

-- Crear tabla categoria
create table categoria(
  categoriaid int not null, 
  descripcion varchar(100) not null
  constraint pk_categoria 
  primary key(categoriaid), 
  constraint unico_descripcion
  unique(descripcion)
);
go

-- Crear tabla producto
create table producto(
  productoid int not null identity(1,1),
  numerocontrol varchar(30) not null, 
  descripcion varchar(100) not null, 
  precio money not null, 
  existencia int not null, 
  [status] int not null,
  categoriaid int not null, 
  constraint pk_producto
  primary key (productoid),
  constraint unico_numerocontrol
  unique(numerocontrol),
  constraint unico_descripcion_producto
  unique(descripcion), 
  constraint chk_precio
  check(precio>0.0),
  constraint chk_existencia
  --check(existencia between 1 and 2000)
  check(existencia>=1 and existencia<=2000),
  constraint chk_status
  --check([status]=0 or [status] = 1)
  check([status] in(0,1)),
  constraint fk_producto_categoria
  foreign key(categoriaid)
  references categoria(categoriaid)
);
Go