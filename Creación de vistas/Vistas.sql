use hotel_royal_entrega;

--creacion de las vistas.

create or replace view vw_categoria_habitaciones as
(select* from descripcion_habitaciones);
select* from vw_categoria_habitaciones;


create or replace view vw_consulta_mayor_canal_de_reserva as 
(select c.responsable_de_reserva, r.id_canal_de_reserva , count(r.id_canal_de_reserva) as total
from reserva as r
inner join canal_de_reserva as c
on c.id_canal_de_reserva = r.id_canal_de_reserva
group by id_canal_de_reserva
order by total desc
limit 1);
select* from vw_consulta_mayor_canal_de_reserva;


create or replace view vw_clientes_extranjeros as
(select id_cliente,nombre,apellido,nacionalidad
from clientes 
where nacionalidad not like 'argen%');
select *from vw_clientes_extranjeros;


create or replace view vw_servicios_mas_consumidos as
(select s.nombre,c.id_producto, sum(c.cantidad) as total
from  servicios_extra as s
left join consumo_servicios_extra as c
on s.id_producto=c.id_producto
group by id_producto 
order by total desc);
select* from vw_servicios_mas_consumidos;


create or replace view vw_n°_de_comprobante as
(select id_reserva,n°_de_comprobante
from pago);
select* from vw_n°_de_comprobante;


create or replace view vw_duracion_promedio_estadia as
(select round(avg(datediff(fecha_de_salida,fecha_de_ingreso)),1) as duracion_promedio_estadia
from reserva); 
select* from vw_duracion_promedio_estadia;
