use hotel_royal_entrega;

--Funciones
--esta funcion muestra el nombre del servicio a partir del numero de id.
drop function if exists servicio_extra;
delimiter //
create function fn_servicios_extra (Idproducto int)
returns varchar (40)
deterministic
begin
declare servicio varchar (40);
set servicio = (select nombre  from servicios_extra where id_producto= Idproducto );
return servicio;
end //
delimiter ;
select fn_servicios_extra (2) as servicio ;

--esta funcion sirve para sumar la cantidad de pasajeros que pasan por el hotel
drop function if exists fn_total_pasajeros_en_el_año;

delimiter //
create function fn_total_pasajeros_en_el_año  ()
returns int
deterministic
begin
declare total_pasajeros_en_el_año int;
select sum(cantidad_pasajeros) into total_pasajeros_en_el_año from reserva ;
return total_pasajeros_en_el_año;
end //
delimiter ;
select fn_total_pasajeros_en_el_año () as total;