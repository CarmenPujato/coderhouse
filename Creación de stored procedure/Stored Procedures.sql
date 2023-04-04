use hotel_royal_entrega;

--Creacion de store procedure 

--Este script ordena a todos los clientes del hotel segun su nacionalidad. Los va a ordenar de manera ascendente.
--En caso de querer ordenar llamando otro campo, hay que cambiar en set campo a ordenar nacionalidad por el que queramos y ejecutar.   
drop procedure if exists sp_ordenar_clientes;

delimiter //
create procedure sp_ordenar_clientes (inout campo_a_ordenar varchar(35), inout tipo_de_orden varchar(35))  
begin
set @ordenar= concat('select * from clientes order by',' ',campo_a_ordenar,' ',tipo_de_orden);
prepare orden from @ordenar;
execute orden;
deallocate prepare orden;
end //
delimiter ; 
set @campo_a_ordenar= 'nacionalidad';
set @tipo_de_orden= 'asc';

call sp_ordenar_clientes(@campo_a_ordenar,@tipo_de_orden);

--En este procedimiento vamos a insertar nuevos datos en la tabla de servicios extra. 
drop procedure if exists sp_ingreso_nuevos_servicios_extra;
delimiter //
create procedure sp_ingreso_nuevos_servicios_extra (in id_producto int,in nombre varchar (35),in descripcion varchar(100),in precio decimal (6,2))
begin
insert into servicios_extra (id_producto,nombre,descripcion,precio)
values (id_producto,nombre,descripcion,precio);
end //
delimiter ;
call sp_ingreso_nuevos_servicios_extra (6,'guarderia infantil','cuidado de niños', 2000.00);
call sp_ingreso_nuevos_servicios_extra (7,' reserva de espectaculos','reserva de entradas para espectaculos teatrales y/o exposiciones', 0);
call sp_ingreso_nuevos_servicios_extra(8,'tintoreria','servicio de lavado de prendas',1500); 