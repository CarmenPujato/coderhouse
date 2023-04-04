use hotel_royal_entrega;

--Creación de triggers
--creacion de la tabla log para auditar los pagos.
drop table if  exists auditoria_pagos;
CREATE TABLE IF NOT EXISTS auditoria_pagos 
(
id_auPagos INT AUTO_INCREMENT ,
n°_de_comprobante int NOT NULL ,
nombre_accion VARCHAR(10) ,
nombre_tabla VARCHAR(50) ,
usuario VARCHAR(100) ,
fecha datetime    ,
PRIMARY KEY (id_auPagos)
)
;

--creacion trigger 1: este trigger genera un registro luego de que se ingresa un nuevo pago.
drop trigger if exists trg_after_insert_pagos;
DELIMITER //
CREATE TRIGGER trg_after_insert_pagos AFTER INSERT ON hotel_royal_entrega.pago
FOR EACH ROW 
BEGIN

INSERT INTO auditoria_pagos (n°_de_comprobante, nombre_accion,nombre_tabla , usuario,fecha)
VALUES ( new.n°_de_comprobante, 'insert' , 'pago' ,CURRENT_USER() , NOW());

END//
DELIMITER ;

select* from pago;
select* from auditoria_pagos;
insert into pago (id_pago,fecha_de_pago,n°_de_comprobante,id_recepcionista,id_reserva)
value (14,'2022-03-16',0316,9,14);

--creacion trigger 2: genera un registro antes de que se haga agun cambio en la tabla de pagos.
drop trigger if exists trg_before_update_pagos;
DELIMITER //
CREATE TRIGGER trg_before_update_pagos before update ON hotel_royal_entrega.pago
FOR EACH ROW 
BEGIN

INSERT INTO auditoria_pagos (n°_de_comprobante, nombre_accion,nombre_tabla , usuario,fecha)
VALUES (old.n°_de_comprobante, 'update' , 'pago' ,CURRENT_USER() , NOW());

END//
DELIMITER ;
UPDATE pago SET fecha_de_pago = '2022-05-14' WHERE n°_de_comprobante = 521 ; 
select *  from auditoria_pagos;
select* from pago;


--creacion tabla log numero 2 donde se va a almacenar info proveniente de la tabla consumo servicios extra. 
drop table if  exists auditoria_consumo_serv_extra;
CREATE TABLE IF NOT EXISTS auditoria_consumo_serv_extra 
(
id_auConsumo INT AUTO_INCREMENT ,
id_servicios_extra int NOT NULL ,
cantidad int,
nombre_accion VARCHAR(10) ,
nombre_tabla VARCHAR(50) ,
usuario VARCHAR(100) ,
fecha datetime    ,
PRIMARY KEY (id_auConsumo)
)
;
DELIMITER //

--creacion trigger 3: este trigger va a generar un registro antes de que se produzca un cambio en la tabla de consumo de servicios extra.

drop trigger if exists trg_before_update_consumo;
delimiter //
CREATE TRIGGER trg_before_update_consumo BEFORE UPDATE ON hotel_royal_entrega.consumo_servicios_extra
FOR EACH ROW 
BEGIN

INSERT INTO auditoria_consumo_serv_extra (id_servicios_extra,cantidad, nombre_accion , nombre_tabla ,usuario, fecha)
VALUES ( OLD.id_servicios_extra ,NEW.cantidad, 'update' , 'hotel_royal.consumo_servicios_extra' , current_user (), NOW());

END//
DELIMITER 

SELECT * FROM consumo_servicios_extra; 
UPDATE consumo_servicios_extra SET cantidad = 3 WHERE id_servicios_extra = 1 ; 
update consumo_servicios_extra SET precio_total = (3*1500) where id_servicios_extra = 1 ;
SELECT * FROM auditoria_consumo_serv_extra;

--creacion trigger 4: este trigger registra despues de que produce una eliminacion de algun registro.

drop trigger if exists trg_after_delete_consumo;
DELIMITER //
CREATE TRIGGER trg_after_delete_consumo after delete ON hotel_royal_entrega.consumo_servicios_extra
FOR EACH ROW 
BEGIN

INSERT INTO auditoria_consumo_serv_extra (id_servicios_extra,cantidad, nombre_accion , nombre_tabla ,usuario, fecha)
VALUES ( OLD.id_servicios_extra ,old.cantidad, 'delete' , 'hotel_royal.consumo_servicios_extra' , current_user (), NOW());

END//
DELIMITER 
select* from consumo_servicios_extra;
delete from consumo_servicios_extra where id_servicios_extra = 23;
select* from auditoria_consumo_serv_extra;