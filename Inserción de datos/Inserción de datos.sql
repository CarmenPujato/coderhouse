use hotel_royal_entrega;

--insercion de datos tabla canal de reserva

insert into canal_de_reserva (responsable_de_reserva)
values ('particular'),
('almundo'),
('trivago'),
('booking'),
('gyra'),
('turismo city'),
('despegar'),
('expedia'),
('kayak'),
('priceline'),
('world travel'),
('tripadvidor'),
('hoteles'),
('vrbo'),
('accor live limitless'),
('atrapalo'),
('viator'),
('hotel beds'),
('best day');
select* from canal_de_reserva;

--insercion de datos tabla descripcion habtaciones

insert into descripcion_habitaciones (categoria, capacidad,precio_por_dia)
values ('single standart',2,'7450.00'),
('doble twin', 2,'8600.00'),
('doble king',2,'8968.55'),
('triple',3,'12258.00'),
('cuadruple',4,'15745.00');
select * from descripcion_habitaciones;

--insercion datos tabla servicios extra

insert into servicios_extra (nombre, descripcion, precio)
values ('transfer','desde o hacia el aeropuerto', 3500),
('day tour', 'guia turistica por la ciudad',4000),
('spa day', 'dia de spa en un local asociado',5000),
('alquiler de bicicletas', 'alquiler diario de bicicletas',1500),
('parking','estacionamiento por dia', 1000);
select* from servicios_extra;

--insercion de datos tabla habitaciones

insert into habitaciones (id_habitacion,n°habitacion,piso,id_tipo_de_habitacion)
values (1,201,2,1),
(2,202,2,2),
(3,203,2,3),
(4,204,2,4),
(5,205,2,5),
(6,301,3,1),
(7,302,3,2),
(8,303,3,3),
(9,304,3,4),
(10,305,3,5),
(11,401,4,1),
(12,402,4,2),
(13,403,4,3),
(14,404,4,4),
(15,405,4,5),
(16,501,5,1),
(17,502,5,2),
(18,503,5,3),
(19,504,5,4),
(20,505,5,5),
(21,601,6,1),
(22,602,6,2),
(23,603,6,3),
(24,604,6,4),
(25,605,6,5),
(26,701,7,1),
(27,702,7,2),
(28,703,7,3),
(29,704,7,4),
(30,705,7,5);
select* from habitaciones; 

--de las siguiente tablas se importo la informacion de archivos .csv

select * from recepcionista;

select * from direccion_clientes;

select * from clientes;

--insercion de datos en la tabla reserva

insert into reserva (id_reserva,id_cliente,fecha_de_ingreso,fecha_de_salida,id_canal_de_reserva,id_recepcionista,cantidad_pasajeros)
values (1,1,'2022-04-22','2022-04-24',4,1,4),
(2,5,'2022-05-14','2022-05-21',3,4,2),
(3,7,'2022-06-09','2022-06-14',6,6,3),
(4,10,'2022-05-19','2022-05-21',4,1,3),
(5,13,'2022-07-04','2022-07-07',4,2,2),
(6,15,'2022-03-15','2022-03-17', 11,5,1),
(7,16,'2022-04-22','2022-04-24',10,7,2),
(8,18,'2022-03-18','2022-03-26',18,8,3),
(9,21,'2022-06-12','2022-06-16',19,9,3),
(10,24,'2022-02-06','2022-02-10',12,5,2),
(11,26,'2022-02-10','2022-02-15',15,8,1),
(12,27,'2022-01-04','2022-01-8',1,3,2),
(13,29,'2022-01-01','2022-01-03',1,6,1),
(14,30,'2022-03-16','2022-03-19',4,7,1);
select * from reserva;

--insercion de datos en la tabla reserva habitacion.

insert into reserva_habitacion (id_reserva_habitacion, id_habitacion,id_reserva)
values (1,1,1),
(2,2,1),
(3,3,2),
(4,9,3),
(5,13,4),
(6,11,4),
(7,8,5),
(8,6,6),
(9,3,7),
(10,23,8),
(11,26,9),
(12,28,9),
(13,28,10),
(14,21,11),
(15,18,12),
(16,11,13),
(17,16,14);
select * from reserva_habitacion;

--insercion de datos en la tabla consumo servicios extra

insert into consumo_servicios_extra (id_servicios_extra,id_producto,cantidad, precio_total,id_reserva)
values (1,4,2,2*1500.00,1),
(2,1,1,1*3500,2),
(3,2,1,4000,2),
(4,4,3,3*1500.00,3),
(5,5,2,2*1000,4),
(6,1,1,3500.00,5),
(7,2,1,4000.00,5),
(8,4,2,2*1500,6),
(9,1,2,2*3500.00,7),
(10,1,2,2*3500.00,8),
(11,2,1,4000.00,8),
(12,3,1,5000.00,8),
(13,4,2,2*1500.00,8),
(14,4,3,3*1500.00,9),
(15,1,2,2*3500.00,10),
(16,2,1,4000.00,10),
(17,5,6,6*1000.00,11),
(18,2,1,4000.00,11),
(19,4,1,1500.00,11),
(20,5,5,5*1000.00,12),
(21,3,1,5000.00,12),
(22,1,2,2*3500.00,13),
(23,1,1,3500.00,14);
select * from consumo_servicios_extra;

--insercion de datos en la tabla pago

insert into pago (id_pago,fecha_de_pago,n°_de_comprobante,id_recepcionista,id_reserva)
values (1,'2022-04-24',00424,2,1),
(2,'2022-05-21',00521,1,2),
(3,'2022-06-09',00609,3,3),
(4,'2022-05-19',00519,5,4),
(5,'2022-07-07',00707,6,5),
(6,'2022-03-15',00315,2,6),
(7,'2022-04-22',422,5,7),
(8,'2022-03-18',0318,8,8),
(9,'2022-06-16',0616,2,9),
(10,'2022-02-10',0210,3,10),
(11,'2022-02-15',0215,6,11),
(12,'2022-01-04',0104,9,12),
(13,'2022-01-03',0103,10,13);
select* from pago;