-- tabla pp_region
insert into pp_region (id_region, nombre) values('010000', 'Cajamarca');
insert into pp_region (id_region, nombre) values('020000', 'Ancash');
insert into pp_region (id_region, nombre) values('030000', 'Ayacucho');
insert into pp_region (id_region, nombre) values('040000', 'Arequipa');
insert into pp_region (id_region, nombre) values('050000', 'Cuzco');
insert into pp_region (id_region, nombre) values('060000', 'Ucayali');
insert into pp_region (id_region, nombre) values('080000', 'Loreto');
insert into pp_region (id_region, nombre) values('090000', 'Huanuco');
insert into pp_region (id_region, nombre) values('140000', 'Lambayeque');
insert into pp_region (id_region, nombre) values('150000', 'Lima');
insert into pp_region (id_region, nombre) values('210000', 'Puno');


-- tabla pp_provincia
insert into pp_provincia (id_provincia, nombre, id_region) values ('010100', 'San Miguel', '010000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('020200', 'Carlos F Fitzcarrald', '020000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('030300', 'La Mar', '030000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('040400', 'Camana', '040000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('050500', 'Espinar', '050000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('060600', 'Padre Abad', '060000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('150700', 'Lima', '150000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('080800', 'Ucayali', '080000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('090900', 'Ambo', '090000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('151100', 'Canhete', '150000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('150600', 'Huaral', '150000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('210500', 'El Collao', '210000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('140100', 'Chiclayo', '140000');
insert into pp_provincia (id_provincia, nombre, id_region) values ('140200', 'Ferrenhafe', '140000');


-- Tabla pp_Distrito
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('150701', 'San Isidro', '150700');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('150702', 'La Victoria', '150700');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('150703', 'San Miguel', '150700');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('150704', 'San Luis', '150700');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('020205', 'San Luis', '020200');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('010106', 'San Miguel', '010100');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('151107', 'San Luis', '151100');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('140106', 'La Victoria', '140100');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('030309', 'San Miguel', '030300');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('050510', 'Condoroma', '050500');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('150711', 'Brenha', '150700');
insert into pp_distrito (id_distrito, nombre, id_provincia) values ('140203', 'Incahuasi', '140200');


-- Tabla pp_Cliente
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (1,'Prado','Nunez','Laura Sofia','D','07914423',to_date('23/10/1979','dd/mm/yyyy'),'Av. Paseo de la Republica 1578','Frente al supermercado','150701','441851','lprado@jotmail.com',to_date('31/03/2004','dd/mm/yyyy'),'V');
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (2,'Olarte','Timo','Leonardo Manuel','D','07231165',to_date('05/03/1976','dd/mm/yyyy'),'Calle Las Palmeras 389','A dos cuadras del mercado','020205','994100259','lolarte@ymail.com',to_date('18/02/2005','dd/mm/yyyy'),'V');
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (3,'Zuñiga','Cuya','Sergio Miguel','R','19875128601',to_date('12/09/1982','dd/mm/yyyy'),'Av. Brasil 1678','Al costado de la iglesia de los Mormones','150711','953781458','szcuya@yucy.com',to_date('09/07/2012','dd/mm/yyyy'),'B');
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (4,'Hidalguez','Garcia','Lourdes','P','000000607371597',to_date('05/10/1989','dd/mm/yyyy'),'Calle B 112','Frente al colegio nacional','140106','998200124','lhgarcia@yaju.es',to_date('12/07/2009','dd/mm/yyyy'),'V');
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (5,'Martinez','Fiestas','Zarela Rosa','P','000007958412',to_date('03/03/1994','dd/mm/yyyy'),'Jr. Los Músicos 287','A dos casas de la veterinaria','050510','4708547','zmfiestas@ymail.com',to_date('04/12/2011','dd/mm/yyyy'),'V');
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (6,'Bejar','Flores','Luis Rafael','D','06325841',to_date('18/06/1972','dd/mm/yyyy'),'Calle Lavalle 715','Al lado de la ferretería','010106','4853698','lbejar@jotmeil.com',to_date('06/11/2017','dd/mm/yyyy'),'V');
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (7,'Soto','Cerna','Joaquin','P','000000849318',to_date('29/11/1998','dd/mm/yyyy'),'Av. La Marina 1587','Frente al parque principal','150703','6780015','jsoto@jotmeil.com',to_date('21/09/2015','dd/mm/yyyy'),'B');
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (8,'Perez','Olivares','Catalina Isabel','C','000109745519',to_date('19/04/1999','dd/mm/yyyy'),'Av. Faucett 156','A la espalda del concesionario de autos','150703','977710687','capeolv@yimeil.com',to_date('17/06/2004','dd/mm/yyyy'),'E');
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (9,'Pastor','Uceda','José Rafael','R','09711873284',to_date('09/07/1992','dd/mm/yyyy'),'Jr. Los Proceres 845','Al lado del chifa','150703','984441002','jrpastor@yimeil.com',to_date('02/03/2010','dd/mm/yyyy'),'B');
Insert into pp_cliente (Id_cliente, apellido_paterno, apellido_materno, nombres, tipo_documento, numero_documento, fecha_nacimiento, direccion, referencia, ubigeo, telefono_contacto, correo_electronico, fecha_creacion, estado) VALUES (10,'Izquierdo','Galloso','Clark','O','000004578510136',to_date('14/08/1983','dd/mm/yyyy'),'Calle Soria 110','Hay un kiosko en la esquina','140203','966183741','clizqg@yucy.cl',to_date('16/10/2011','dd/mm/yyyy'),'V');


-- Tabla pp_clasificacion_cuenta
Insert into pp_clasificacion_cuenta (Id_clasificacion,nombre,descripcion,tasa_interes,num_libre,costo_transaccion,limite_transferencia,beneficio_banco) VALUES (1,'Cuenta Ganadora','Canjea premios al instante, sin sorteos.',0.15,5,3.5,750,'S');
Insert into pp_clasificacion_cuenta (Id_clasificacion,nombre,descripcion,tasa_interes,num_libre,costo_transaccion,limite_transferencia,beneficio_banco) VALUES (2,'Cuenta Proveedor','Sin costo de mantenimiento siempre que recibas pagos como proveedor así como cobranzas y adelantos de letras y facturas',0.08,25,7.5,5000,'P');
Insert into pp_clasificacion_cuenta (Id_clasificacion,nombre,descripcion,tasa_interes,num_libre,costo_transaccion,limite_transferencia,beneficio_banco) VALUES (3,'Cuenta Digital','Ahorra sin pagar mantenimiento',0.01,99,5,500,'N');
Insert into pp_clasificacion_cuenta (Id_clasificacion,nombre,descripcion,tasa_interes,num_libre,costo_transaccion,limite_transferencia,beneficio_banco) VALUES (4,'Cuenta Free','Es la cuenta de ahorros que te permite realizar operaciones ilimitadas, sin costo en todo el Perú desde nuestra red y retiros, sin comisiones, en el exterior desde cajeros automáticos de bancos aliados.',0.02,3,4.95,500,'P');
Insert into pp_clasificacion_cuenta (Id_clasificacion,nombre,descripcion,tasa_interes,num_libre,costo_transaccion,limite_transferencia,beneficio_banco) VALUES (5,'Cuenta Premio','Podrás ganar 1 millón de soles',0.1,9,12.5,750,'S');
Insert into pp_clasificacion_cuenta (Id_clasificacion,nombre,descripcion,tasa_interes,num_libre,costo_transaccion,limite_transferencia,beneficio_banco) VALUES (6,'Cuenta Kids','Es una cuenta creada para que los menores de edad aprendan a ahorrar y a usar su dinero de manera responsable, con la asesoría de un adulto.',0.12,3,7.5,1000,'P');
Insert into pp_clasificacion_cuenta (Id_clasificacion,nombre,descripcion,tasa_interes,num_libre,costo_transaccion,limite_transferencia,beneficio_banco) VALUES (7,'Cuenta Ilimitada','Operaciones ilimitadas  por todos los canales',0.06,99,5,1000,'S');
Insert into pp_clasificacion_cuenta (Id_clasificacion,nombre,descripcion,tasa_interes,num_libre,costo_transaccion,limite_transferencia,beneficio_banco) VALUES (8,'Cuenta Sueldo','Cuenta únicamente para recibir tu sueldo de tu empleador actual',0.04,25,6.5,750,'P');



-- Tabla pp_cuenta_bancaria
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (1,'001698742175963','001698742175963856',1,'C',6,to_date('13/10/2008', 'dd/mm/yyyy'),'V');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (2,'001649613132551','001649613132551862',5,'C',2,to_date('19/06/2017', 'dd/mm/yyyy'),'E');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (3,'553497217321','55349721732114',7,'A',5,to_date('23/10/2009', 'dd/mm/yyyy'),'V');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (4,'005541735719378','005541735719378876',2,'A',1,to_date('05/01/2006', 'dd/mm/yyyy'),'V');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (5,'6732184363905','6732184363905',9,'A',3,to_date('01/12/2010', 'dd/mm/yyyy'),'V');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (6,'8749479486487','8749479486487',3,'A',8,to_date('18/03/2012', 'dd/mm/yyyy'),'B');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (7,'132651467203','132651467203',8,'C',4,to_date('27/09/2011', 'dd/mm/yyyy'),'V');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (8,'46412318312','46412318312',10,'C',7,to_date('30/04/2016', 'dd/mm/yyyy'),'B');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (9,'486231053630','486231053630',4,'C',2,to_date('25/06/2010', 'dd/mm/yyyy'),'E');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (10,'89898742165','89898742165',6,'C',3,to_date('11/08/2017', 'dd/mm/yyyy'),'B');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (11,'563789159528','563789159528',1,'A',5,to_date('13/09/2009', 'dd/mm/yyyy'),'V');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (12,'671526763413','671526763413',7,'C',1,to_date('29/08/2017', 'dd/mm/yyyy'),'V');
insert into pp_cuenta_bancaria (id_cuenta,numero_cuenta,codigo_interbancario,id_cliente,tipo_cuenta,id_clasificacion,fecha_registro,estado) values (13,'079348573427','079348573427',4,'C',8,to_date('16/11/2014', 'dd/mm/yyyy'),'V');


-- tabla pp_tarjeta_bancaria
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(1,'4557158794112007',11,'F',to_date('15/09/2014', 'dd/mm/yyyy'), to_date('01/10/2021', 'dd/mm/yyyy'), 'V', 'A');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(2,'4042786215468318',8,'A',to_date('03/05/2016', 'dd/mm/yyyy'), to_date('01/05/2023', 'dd/mm/yyyy'), 'V', 'A');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(3,'3984185453835787',5,'V',to_date('01/10/2021', 'dd/mm/yyyy'), to_date('01/10/2028', 'dd/mm/yyyy'), 'P', 'A');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(4,'3678458755219683',1,'A',to_date('01/11/2008', 'dd/mm/yyyy'), to_date('01/11/2015', 'dd/mm/yyyy'), 'A', 'I');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(5,'3478915992140058',7,'F',to_date('01/10/2011', 'dd/mm/yyyy'), to_date('01/10/2018', 'dd/mm/yyyy'), 'B', 'A');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(6,'3971258010645685',13,'A',to_date('20/11/2014', 'dd/mm/yyyy'), to_date('01/12/2021', 'dd/mm/yyyy'), 'V', 'I');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(7,'4387184165731970',10,'A',to_date('15/08/2017', 'dd/mm/yyyy'), to_date('01/09/2024', 'dd/mm/yyyy'), 'V', 'A');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(8,'4187511208719641',2,'A',to_date('25/06/2017', 'dd/mm/yyyy'), to_date('01/07/2024', 'dd/mm/yyyy'), 'V', 'A');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(9,'3268439815618481',6,'F',to_date('25/03/2012', 'dd/mm/yyyy'), to_date('01/04/2019', 'dd/mm/yyyy'), 'A', 'I');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(10,'3778964518973189',3,'A',to_date('25/03/2012', 'dd/mm/yyyy'), to_date('01/04/2019', 'dd/mm/yyyy'), 'B', 'I');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(11,'3812348176808923',9,'A',to_date('01/07/2010', 'dd/mm/yyyy'), to_date('01/07/2017', 'dd/mm/yyyy'), 'A', 'A');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(12,'3534265845259864',12,'F',to_date('01/09/2017', 'dd/mm/yyyy'), to_date('01/09/2024', 'dd/mm/yyyy'), 'V', 'A');
insert into pp_tarjeta_bancaria (id_tarjeta, numero_tarjeta, id_cuenta, ubicacion, fecha_emision, fecha_vencimiento, estado,compras_internet) values(13,'3945579643525352',4,'A',to_date('01/10/2021', 'dd/mm/yyyy'), to_date('01/10/2028', 'dd/mm/yyyy'), 'P', 'I');


-- tabla pp_transferencia
insert into pp_transferencia (id_transferencia, cuenta_origen, cuenta_destino, monto_transferido, mensaje, fecha_transaccion, fecha_confirmacion, estado) values(1,6,2,325.75,'por servicios',to_date('29/06/2021','dd/mm/yyyy'), to_date('30/06/2021', 'dd/mm/yyyy'), 'C');
insert into pp_transferencia (id_transferencia, cuenta_origen, cuenta_destino, monto_transferido, mensaje, fecha_transaccion, fecha_confirmacion, estado) values(2,8,1,179,'para contrato',to_date('20/07/2021','dd/mm/yyyy'), to_date('20/07/2021', 'dd/mm/yyyy'), 'A');
insert into pp_transferencia (id_transferencia, cuenta_origen, cuenta_destino, monto_transferido, mensaje, fecha_transaccion, fecha_confirmacion, estado) values(3,12,6,3781,'pago estudios',to_date('27/09/2021','dd/mm/yyyy'), null, 'P');
insert into pp_transferencia (id_transferencia, cuenta_origen, cuenta_destino, monto_transferido, mensaje, fecha_transaccion, fecha_confirmacion, estado) values(4,1,8,6312,'Por prestamo',to_date('26/09/2021','dd/mm/yyyy'), null, 'P');
insert into pp_transferencia (id_transferencia, cuenta_origen, cuenta_destino, monto_transferido, mensaje, fecha_transaccion, fecha_confirmacion, estado) values(5,7,12,589.95,'servicios',to_date('08/06/2021','dd/mm/yyyy'), to_date('09/06/2021', 'dd/mm/yyyy'), 'C');
insert into pp_transferencia (id_transferencia, cuenta_origen, cuenta_destino, monto_transferido, mensaje, fecha_transaccion, fecha_confirmacion, estado) values(6,2,7,321.99,'para la casa',to_date('15/04/2021','dd/mm/yyyy'), to_date('15/04/2021', 'dd/mm/yyyy'), 'C');
insert into pp_transferencia (id_transferencia, cuenta_origen, cuenta_destino, monto_transferido, mensaje, fecha_transaccion, fecha_confirmacion, estado) values(7,1,6,490,'para reparaciones',to_date('13/07/201','dd/mm/yyyy'), to_date('13/07/2021', 'dd/mm/yyyy'), 'A');
insert into pp_transferencia (id_transferencia, cuenta_origen, cuenta_destino, monto_transferido, mensaje, fecha_transaccion, fecha_confirmacion, estado) values(8,6,8,762,'por servicios',to_date('21/08/2021','dd/mm/yyyy'), to_date('21/08/2021', 'dd/mm/yyyy'), 'A');



