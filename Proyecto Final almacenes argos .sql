/****** Nombre: jesus antoniojorge jimenez, Matricula: 19-MIIN-1-126, Seccion: 0541 ******/
/****** Materia: Base De Datos, Maestro: Starling Germosen Reynoso ******/
/****** Universidad Dominicana OYM ******/
/****** Proyecto Final: almacenes argos - logistica de distribucion ******/

create database almacenes_argos
use almacenes_argos


create table Productos
(
  Id_producto int primary key,
  Nombre Varchar(50),
  Precio_Unitario int,
  Modelo Varchar(50)
 )

  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(4390,'Shampo',1000,'caspa')
  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(8604,'Shampo',850,'pelo riso')
  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(8389,'Shampo',1000,'pelo crespo')
  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(4937,'vino decordi',1100,'rosado')
  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(4937,'vino decordi',650,'espumoso')
  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(4937,'vino decordi',550,'tinto')
  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(2643,'Vino decordi',1000,'Blanco')
  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(8454,'Vino decordi',1050,'agraciado')
  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(8436,'Maiz calvo',850,'dulce')
  insert into Producto(Id_producto,Nombre,Precio_Unitario,Modelo) Values(6703,'Maiz calvo',1000,'salado')
  
 select*from Producto


create table Empleado
(
Id_empleado int primary key,
Nombre Varchar(50),
Apellido Varchar(40),
Edad int,
Posicion Varchar(70),
Telefono varchar(20),
)

 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400307,'Oscar','Polar',26,'jefe de almacen','809-203-4239')
 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400308,'Luis','Lopez',30,'supervisor de almacen','809-604-3339')
 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400309,'Ricardo','Santana ',25,'analista de inventarios','809-334-7878')
 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400310,'Juan','Liriano',40,'auxiliar de almacen','809-687-5456')
 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400311,'Patricia','Carbajal',34,'supervisor de transporte','829-323-4463')
 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400312,'Lorena','Castillo',25,'analista de despacho','829-669-3215')
 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400313,'victor','Javier',50,'chofer','809-987-0012')
 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400314,'Christopher','Caraballo',35,'ayudante','849-258-6012')
 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400315,'Maria','Diaz',28,'supervisora de facturacion','829-202-4011')
 insert into Empleado (Id_empleado,Nombre,Apellido,Edad,Posicion,Telefono) values(400316,'Felipe','Dubal',40,'auxiliar documentado','809-121-3939')

 select*from Empleados


create table Clientes
(
Id_cliente int primary key,
Nombre Varchar(30),
Cedula varchar(13),
Ubicación Varchar(80)
)

insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181215,'Jose Luis','001-3867495-2','Santo Domingo')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(161217,'Alberto','402-3886355-7','Santo Domingo')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(171219,'Ana Julia','223-5267495-3','Santo Domingo')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(191221,'Katherine','223-6543295-4','La Romana')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(141223,'Laura','402-3887608-6','Santo Domingo')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(111225,'Carmen','223-3123495-9','Punta Cana')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(161229,'Yocasta','223-1342495-1','Higuey')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181241,'Luisa','402-3867495-0','La Romana')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(171251,'Leidy','402-3354675-3','Bani')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Cristina','001-9876545-0','Puerto Plata')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Cecilia','223-0176545-9','Hato Mayor')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Cristina','402-4576545-2','Puerto Plata')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Francisco','001-8976545-5','Dajabon')
insert into Cliente(Id_cliente,Nombre,Cedula,Ubicación) values(181253,'Felipe','223-0476545-7','Barahona')



create table Tipo_de_cliente 
(
Id_tipo_de_cliente int primary key,
Id_client int,
Provincias varchar(25),
Tipo_producto varchar(50),
FOREIGN KEY(Id_client) References Cliente(Id_cliente)
)

insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(1345,9826,'Santo Domingo','shampo pelo riso')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(9823,12326,'La Romana','shampo caspa')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(7234,34526,'Punta Cana','shampo pelo graso')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,91820,'Higuey','vino decordi tinto y rosado')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,92320,'Puerto Plata','vino decordi espumoso')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,93820,'Dajabon','vino decordi blanco y tinto')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,91220,'Barahona','vino decordi rosado')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,92820,'Hato Mayor','vino decordi blanco')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,91920,'Bani','maiz calvo dulce')
insert into Tipo_de_cliente(Id_tipo_de_cliente,Id_client,Provincias,Tipo_producto) values(3892,91660,'San Cristobal','maiz calvo dulce')

select*from Tipo_de_cliente


select* from Cliente

create table Historialdeventa
(
Id_historial int primary key,
Producto varchar(50),
Cantidad int,
Fecha date,
Precio int
)

insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2567,'shampo pelo riso',30,'2021-09-19',30000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(4839,'shampo caspa',50,'2021-10-23',42500)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2537,'shampo pelo graso',40,'2021-11-24',40000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2564,'vino decordi tinto',100,'2021-12-20',65000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2565,'vino decordi rosado',80,'2022-01-10',80000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2566,'vino decordi espumoso',150,'2022-02-27',157500)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2568,'vino decordi blanco',60,'2022-03-20',51000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(2569,'vino decordi agraciado',40,'2022-04-15',40000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(25670,'vino decordi rojo',180,'2022-05-30',189000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(24671,'maiz calvo dulce',60,'2022-06-28',39000)
insert into Historial_de_venta(Id_historial,Producto,Cantidad,Fecha,Precio) values(24671,'maiz calvo salado',60,'2022-07-28',49000)


select*from Historial_de_venta