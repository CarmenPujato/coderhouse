use mysql;
select * from user;

--Creacion de los usuarios

create user if not exists 'usuario1'@'localhost' identified by 'prueba123';
create user if not exists 'usuario2'@'localhost' identified by 'prueba456';

--Al usuario1 se le otorga permiso unicamente de lectura a todas las tablas.
grant select on *.* to usuario1@localhost;

--Al usuario2 se le otroga permiso de lectura, inserción y modificación de datos en las tablas.
grant select, insert, update on *.* to usuario2@localhost;

--Nos aseguramos de que ninguno de los dos pueda eliminar registros
revoke delete on *.* from 'usuario1'@'localhost','usuario2'@'localhost';
select* from user; 
