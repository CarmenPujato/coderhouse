drop schema if exists hotel_royal_entrega;
create schema hotel_royal_entrega;
use hotel_royal_entrega;

--la tabla recepcionista muestra la identificacion de la persona que recibe la reserva 

create table if not exists hotel_royal_entrega.recepcionista
(
id_recepcionista int auto_increment,
nombre varchar(50) not null,
apellido varchar(50) not null,
dni int,
telefono varchar (20)not null,
email varchar(30) not null,
turno varchar (10) not null,
primary key (id_recepcionista)
)
;

--la tabla descripcion habitaciones describe la categoria, capacidad y precio por dia de la habitacion

create table if not exists hotel_royal_entrega.descripcion_habitaciones
(
id_tipo_de_habitacion int auto_increment,
categoria varchar(50) not null,
capacidad int not null,
precio_por_dia decimal(9,2) not null,
primary key (id_tipo_de_habitacion)
)
;

--la tabla canal de reserva muestra el responsable de hacer la reserva, si es un particular o una agencia de viajes

create table if not exists hotel_royal_entrega.canal_de_reserva
(
id_canal_de_reserva int auto_increment,
responsable_de_reserva varchar(50) not null,
primary key (id_canal_de_reserva)
)
;

--la tabla direccion clientes muestra las direcciones de los distintos clientes del hotel.

create table if not exists hotel_royal_entrega.direccion_clientes
(
id_direccion int auto_increment,
calle varchar(50) not null,
numero varchar (30) not null,
piso int ,
barrio varchar (50),
ciudad varchar (50) not null,
codigo_postal varchar (30) ,
primary key (id_direccion)
)
;

--la tabla clientes muestra el listado de clientes que tiene el hotel 

create table if not exists hotel_royal_entrega.clientes
(
id_cliente int auto_increment,
nombre varchar(50) not null,
apellido varchar(50)not null,
nacionalidad varchar (50)not null,
identificacion int not null,
direccion int not null,
telefono varchar(20)not null,
email varchar(30)not null,
primary key (id_cliente),
constraint fk_clientes_direcciones foreign key (direccion) references hotel_royal_entrega.direccion_clientes (id_direccion)
)
;

--la tabla servicios extra muestra todos los servicios extra que pueden ser solicitados por el cliente

create table if not exists hotel_royal_entrega.servicios_extra
(
id_producto int auto_increment,
nombre varchar(50) not null,
descripcion varchar (100) not null,
precio decimal(6,2) not null,
primary key (id_producto)
)
;

--la tabla habitaciones muestra el lugar geografico de la habitacion dentro del hotel, piso y numero de la habitacion y el tipo de habitacion.

create table if not exists hotel_royal_entrega.habitaciones
(
id_habitacion int auto_increment,
n°habitacion int not null,
piso int not null,
id_tipo_de_habitacion int not null,
primary key (id_habitacion),
constraint fk_habitaciones_descripcion
foreign key (id_tipo_de_habitacion) references hotel_royal_entrega.descripcion_habitaciones(id_tipo_de_habitacion)
)
;

--tabla reserva sirve para mostrar las reservas que recibe el hotel

create table if not exists hotel_royal_entrega.reserva
(
id_reserva int auto_increment,
id_cliente int not null,
fecha_de_ingreso date not null,
fecha_de_salida date not null,
id_canal_de_reserva int not null,
id_recepcionista int not null,
cantidad_pasajeros int not null,
primary key (id_reserva),
constraint fk_reserva_clientes foreign key (id_cliente) references hotel_royal_entrega.clientes (id_cliente),
constraint fk_reserva_canal_de_reserva foreign key (id_canal_de_reserva) references hotel_royal_entrega.canal_de_reserva(id_canal_de_reserva) on delete cascade,
constraint fk_reserva_recepcionista foreign key (id_recepcionista) references hotel_royal_entrega.recepcionista(id_recepcionista)
)
;

--la tabla reserva habitacion muestra el cuarto y tipo de cuarto que reserva el cliente y la cantidad de cuartos en esa misma reserva

create table if not exists hotel_royal_entrega.reserva_habitacion
(
id_reserva_habitacion int auto_increment,
id_habitacion int not null,
id_reserva int not null,
primary key (id_reserva_habitacion),
constraint fk_reserva_habitacion_habitaciones foreign key (id_habitacion) references hotel_royal_entrega.habitaciones (id_habitacion),
constraint fk_reserva foreign key (id_reserva) references hotel_royal_entrega.reserva (id_reserva) on delete cascade
)
;

--la tabla consumo servicios extra muestra los servicios que consumen los huspedes.

create table if not exists hotel_royal_entrega.consumo_servicios_extra
(id_servicios_extra int auto_increment,
id_producto int not null,
cantidad int not null,
precio_total int not null,
id_reserva int not null,
primary key (id_servicios_extra),
constraint fk_consumo_servicios_extra foreign key (id_producto) references hotel_royal_entrega.servicios_extra (id_producto),
constraint fk_servicios_reserva foreign key (id_reserva) references hotel_royal_entrega.reserva (id_reserva)
);

--tabla pago sirve para mostrar el registro de pagos de los clientes

create table if not exists hotel_royal_entrega.pago
(
id_pago int auto_increment,
fecha_de_pago date not null,
n°_de_comprobante int not null,
id_recepcionista int not null,
id_reserva int not null,
primary key(id_pago),
constraint fk_pago_reserva foreign key (id_reserva) references reserva (id_reserva) on delete cascade,
constraint fk_pago_recepcionista foreign key (id_recepcionista) references hotel_royal_entrega.recepcionista (id_recepcionista) on delete cascade
)
;