use hotel_royal_entrega;

start transaction;
delete from hotel_royal_entrega.recepcionista where id_recepcionista =8;
delete from hotel_royal_entrega.recepcionista where id_recepcionista =9;
delete from hotel_royal_entrega.recepcionista where id_recepcionista =10;

--Para deshacer las eliminaciones ejecutamos : 
rollback;
--Para confirmar definitivamente las eliminaciones ejecuto:
commit;

--Insercion de 8 nuevos registros con savepoint: 
start transaction;
insert into habitaciones (id_habitacion,n°habitacion,piso,id_tipo_de_habitacion)
values (31,801,8,1);
insert into habitaciones (id_habitacion,n°habitacion,piso,id_tipo_de_habitacion)
values (32,802,8,2);
insert into habitaciones (id_habitacion,n°habitacion,piso,id_tipo_de_habitacion)
values (33,803,8,3);
insert into habitaciones (id_habitacion,n°habitacion,piso,id_tipo_de_habitacion)
values (34,804,8,4);
savepoint habNuevas1;

insert into habitaciones (id_habitacion,n°habitacion,piso,id_tipo_de_habitacion)
values (35,805,8,5);
insert into habitaciones (id_habitacion,n°habitacion,piso,id_tipo_de_habitacion)
values (36,901,9,1);
insert into habitaciones (id_habitacion,n°habitacion,piso,id_tipo_de_habitacion)
values (37,902,9,2);
insert into habitaciones (id_habitacion,n°habitacion,piso,id_tipo_de_habitacion)
values (38,903,9,3);
savepoint habNuevas2;

--Para eliminar el savepoint:
release savepoint habNuevas1;