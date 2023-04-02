-- tabla sb_region
insert into sb_region (id_region, nombre) values(1, 'Cajamarca');
insert into sb_region (id_region, nombre) values(2, 'Ancash');
insert into sb_region (id_region, nombre) values(3, 'Ayacucho');
insert into sb_region (id_region, nombre) values(4, 'Arequipa');
insert into sb_region (id_region, nombre) values(5, 'Cuzco');
insert into sb_region (id_region, nombre) values(6, 'Ucayali');
insert into sb_region (id_region, nombre) values(7, 'Lima');
insert into sb_region (id_region, nombre) values(8, 'Loreto');
insert into sb_region (id_region, nombre) values(9, 'Huanuco');
insert into sb_region (id_region, nombre) values(10, 'Puno');
insert into sb_region (id_region, nombre) values(11, 'Lambayeque');

-- tabla sb_provincia
insert into sb_provincia (id_provincia, nombre, id_region) values (1, 'San Miguel', 1);
insert into sb_provincia (id_provincia, nombre, id_region) values (2, 'Carlos Fermin', 2);
insert into sb_provincia (id_provincia, nombre, id_region) values (3, 'La Mar', 3);
insert into sb_provincia (id_provincia, nombre, id_region) values (4, 'Camana', 4);
insert into sb_provincia (id_provincia, nombre, id_region) values (5, 'Espinar', 5);
insert into sb_provincia (id_provincia, nombre, id_region) values (6, 'Padre Abad', 6);
insert into sb_provincia (id_provincia, nombre, id_region) values (7, 'Lima', 7);
insert into sb_provincia (id_provincia, nombre, id_region) values (8, 'Ucayali', 8);
insert into sb_provincia (id_provincia, nombre, id_region) values (9, 'Ambo', 9);
insert into sb_provincia (id_provincia, nombre, id_region) values (10, 'Chucuito', 10);
insert into sb_provincia (id_provincia, nombre, id_region) values (11, 'Canhete', 7);
insert into sb_provincia (id_provincia, nombre, id_region) values (12, 'Huaral', 7);
insert into sb_provincia (id_provincia, nombre, id_region) values (13, 'El Collao', 10);
insert into sb_provincia (id_provincia, nombre, id_region) values (14, 'Chiclayo', 11);

-- Tabla sb_Distrito
insert into sb_distrito (id_distrito, nombre, id_provincia) values (1, 'San Isidro', 7);
insert into sb_distrito (id_distrito, nombre, id_provincia) values (2, 'La Victoria', 7);
insert into sb_distrito (id_distrito, nombre, id_provincia) values (3, 'San Miguel', 7);
insert into sb_distrito (id_distrito, nombre, id_provincia) values (4, 'San Luis', 7);
insert into sb_distrito (id_distrito, nombre, id_provincia) values (5, 'San Luis', 2);
insert into sb_distrito (id_distrito, nombre, id_provincia) values (6, 'San Miguel', 1);
insert into sb_distrito (id_distrito, nombre, id_provincia) values (7, 'San Luis', 11);
insert into sb_distrito (id_distrito, nombre, id_provincia) values (8, 'La Victoria', 14);
insert into sb_distrito (id_distrito, nombre, id_provincia) values (9, 'San Miguel', 3);
insert into sb_distrito (id_distrito, nombre, id_provincia) values (10, 'Condoroma', 5);

-- Tabla sb_Banco 
insert into sb_banco (id_banco, nombre) values (1, 'Banco de Debito - BDP');
insert into sb_banco (id_banco, nombre) values (2, 'Banco Departamental - BDVA');
insert into sb_banco (id_banco, nombre) values (3, 'Banco Inferbank');

-- Tabla sb_Agencia 
insert into sb_agencia (id_agencia, nombre, direccion, id_distrito) VALUES (1, 'Agencia Rivera Navarrete', 'Av. R. Rivera Navarrete 1504', 1);
insert into sb_agencia (id_agencia, nombre, direccion, id_distrito) VALUES (2, 'Agencia Aviacion', 'Av. Aviacion 294', 2);
insert into sb_agencia (id_agencia, nombre, direccion, id_distrito) VALUES (3, 'Agencia Open Plaza', 'Av. la Marina 2355', 3);
insert into sb_agencia (id_agencia, nombre, direccion, id_distrito) VALUES (4, 'Agencia La Romana', 'Jr. Los Colibies 117', 9);
insert into sb_agencia (id_agencia, nombre, direccion, id_distrito) VALUES (5, 'Agencia Espinar', 'Av. El Sol 248', 4);
insert into sb_agencia (id_agencia, nombre, direccion, id_distrito) VALUES (6, 'Agencia Las Musas', 'Paseo Musas Reales', 8);

-- Tabla sb_Cliente
insert into sb_cliente (id_cliente, ape_paterno, ape_materno, nombre, dni, sexo, direccion, telefono, email, id_distrito) values (1, 'TORRES', 'SALAZAR', 'ROMINA ISABEL', '40894715', 'F', 'Av. Paseo de la Republica 1578', '3695522', 'rtorres@chimail.pe', 3);
insert into sb_cliente (id_cliente, ape_paterno, ape_materno, nombre, dni, sexo, direccion, telefono, email, id_distrito) values (2, 'BENAVIDES', 'QUISPE', 'RAUL CARLOS', '00478547', 'M', 'Calle Las Palmeras 389', '', 'rbenavides@coldmail.com', 3);
insert into sb_cliente (id_cliente, ape_paterno, ape_materno, nombre, dni, sexo, direccion, id_distrito) values (3, 'CRUZ', 'RAMOS', 'MARIA DEL CARMEN', '45330178', 'F', 'Av. Brasil 1678', 5);
insert into sb_cliente (id_cliente, ape_paterno, ape_materno, nombre, dni, sexo, direccion, id_distrito) values (4, 'NESTOR', 'UBILLUZ', 'FELIPE', '05930128', 'M', 'Calle B 112', 7);
insert into sb_cliente (id_cliente, ape_paterno, ape_materno, nombre, dni, sexo, direccion, id_distrito) values (5, 'NUEVO', 'PEREZ', 'LUIS', '02365202', 'M', 'Calle B 112', 7);

-- tabla sb_tarjeta
insert into sb_tarjeta (id_tarjeta, numero, estado, id_cliente) values(1, '455799991478', 1, 1);
insert into sb_tarjeta (id_tarjeta, numero, estado, id_cliente) values(2, '3468102686931132', 1, 2);
insert into sb_tarjeta (id_tarjeta, numero, estado, id_cliente) values(3, '8530786586', 1, 3);
insert into sb_tarjeta (id_tarjeta, numero, estado, id_cliente) values(4, '3468387283452460', 0, 1);
insert into sb_tarjeta (id_tarjeta, numero, estado, id_cliente) values(5, '1700786329', 1, 1);
insert into sb_tarjeta (id_tarjeta, numero, estado, id_cliente) values(6, '570891345726', 1, 2);
insert into sb_tarjeta (id_tarjeta, numero, estado, id_cliente) values(7, '1347089517296', 1, 4);
insert into sb_tarjeta (id_tarjeta, numero, estado, id_cliente) values(8, '760829541759', 0, 4);
insert into sb_tarjeta (id_tarjeta, numero, estado, id_cliente) values(9, '999929541759', 0, 5);

-- Tabla sb_cuenta
insert into sb_cuenta (id_cuenta, numero, moneda, fecha_apertura, saldo, id_agencia, tipo) values (1, '001698742175963', 'S', to_date('15/06/2019', 'dd/mm/yyyy'), 16980, 4, 'A');
insert into sb_cuenta (id_cuenta, numero, moneda, fecha_apertura, saldo, id_agencia, tipo) values (2, '001649613132551', 'S', to_date('04/07/2019', 'dd/mm/yyyy'), 28827, 4, 'M');
insert into sb_cuenta (id_cuenta, numero, moneda, fecha_apertura, saldo, id_agencia, tipo) values (3, '553497217321', 'S', to_date('23/01/2018', 'dd/mm/yyyy'), 3964, 3, 'C');
insert into sb_cuenta (id_cuenta, numero, moneda, fecha_apertura, saldo, id_agencia, tipo) values (4, '005541735719378', 'D', to_date('12/04/2018', 'dd/mm/yyyy'), 1595, 4, 'A');
insert into sb_cuenta (id_cuenta, numero, moneda, fecha_apertura, saldo, id_agencia, tipo) values (5, '6732184363905', 'D', to_date('31/07/2019', 'dd/mm/yyyy'), 1656, 4, 'C');
insert into sb_cuenta (id_cuenta, numero, moneda, fecha_apertura, saldo, id_agencia, tipo) values (6, '1123660258822', 'D', to_date('31/07/2019', 'dd/mm/yyyy'), 5000, 4, 'C');
insert into sb_cuenta (id_cuenta, numero, moneda, fecha_apertura, saldo, id_agencia, tipo) values (7, '9632000022255', 'D', to_date('31/07/2019', 'dd/mm/yyyy'), 8500, 4, 'C');

-- tabla sb_cliente_cuenta
insert into sb_cliente_cuenta (id_cliente, id_cuenta) values (1, 3);
insert into sb_cliente_cuenta (id_cliente, id_cuenta) values (2, 1);
insert into sb_cliente_cuenta (id_cliente, id_cuenta) values (3, 4);
insert into sb_cliente_cuenta (id_cliente, id_cuenta) values (4, 2);
insert into sb_cliente_cuenta (id_cliente, id_cuenta) values (1, 2);
insert into sb_cliente_cuenta (id_cliente, id_cuenta) values (1, 3);
insert into sb_cliente_cuenta (id_cliente, id_cuenta) values (3, 5);
insert into sb_cliente_cuenta (id_cliente, id_cuenta) values (5, 6);
insert into sb_cliente_cuenta (id_cliente, id_cuenta) values (5, 7);

-- tabla sb_tarjeta_cuenta
insert into sb_tarjeta_cuenta (id_tarjeta, id_cuenta) values (1, 3);
insert into sb_tarjeta_cuenta (id_tarjeta, id_cuenta) values (2, 5);
insert into sb_tarjeta_cuenta (id_tarjeta, id_cuenta) values (3, 4);
insert into sb_tarjeta_cuenta (id_tarjeta, id_cuenta) values (5, 2);
insert into sb_tarjeta_cuenta (id_tarjeta, id_cuenta) values (6, 1);
insert into sb_tarjeta_cuenta (id_tarjeta, id_cuenta) values (8, 6);
insert into sb_tarjeta_cuenta (id_tarjeta, id_cuenta) values (9, 7);

-- tabla sb_prestamo
insert into sb_prestamo (id_prestamo, monto, moneda, fecha, plazo, interes, id_cliente, id_agencia, cuota) values (1, 5000, 'S', to_date('15/03/2020', 'dd/mm/yyyy'), 20, 6, 1, 3, 250);
insert into sb_prestamo (id_prestamo, monto, moneda, fecha, plazo, interes, id_cliente, id_agencia, cuota) values (2, 50000, 'S', to_date('12/04/2020', 'dd/mm/yyyy'), 25, 9, 4, 6, 2000);
insert into sb_prestamo (id_prestamo, monto, moneda, fecha, plazo, interes, id_cliente, id_agencia, cuota) values (3, 15000, 'D', to_date('03/11/2019', 'dd/mm/yyyy'), 60, 15, 3, 2, 250);

-- tabla sb_cuota
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,fecha_pago,monto_pago,estado,id_agencia) values (1,3,1,TO_DATE('30/11/2019', 'dd/mm/yyyy'), to_date('29/11/2019', 'dd/mm/yyyy'), 250, 1, 3);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,fecha_pago,monto_pago,estado,id_agencia) values (2,3,2,TO_DATE('30/12/2019', 'dd/mm/yyyy'), to_date('03/01/2020', 'dd/mm/yyyy'), 287.5, 2, 3);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,fecha_pago,monto_pago,estado,id_agencia) values (3,3,3,TO_DATE('30/01/2020', 'dd/mm/yyyy'), to_date('30/01/2020', 'dd/mm/yyyy'), 250, 1, 4);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,fecha_pago,monto_pago,estado,id_agencia) values (5,3,5,TO_DATE('28/02/2020', 'dd/mm/yyyy'), to_date('27/02/2020', 'dd/mm/yyyy'), 250, 1, 2);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,fecha_pago,monto_pago,estado,id_agencia) values (6,3,6,TO_DATE('30/03/2020', 'dd/mm/yyyy'), to_date('30/03/2020', 'dd/mm/yyyy'), 250, 1, 1);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (7,3,7,TO_DATE('30/04/2020', 'dd/mm/yyyy'), 0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (8,3,8,TO_DATE('30/05/2020', 'dd/mm/yyyy'), 0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (9,3,9,TO_DATE('30/06/2020', 'dd/mm/yyyy'), 0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (10,3,10,TO_DATE('30/07/2020', 'dd/mm/yyyy'), 0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (11,3,10,TO_DATE('30/08/2020', 'dd/mm/yyyy'), 0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (12,3,10,TO_DATE('30/09/2020', 'dd/mm/yyyy'), 0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (13,3,10,TO_DATE('30/10/2020', 'dd/mm/yyyy'), 0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (14,3,10,TO_DATE('30/11/2020', 'dd/mm/yyyy'), 0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (15,3,10,TO_DATE('30/12/2020', 'dd/mm/yyyy'), 0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (16,2,1,to_date('05/05/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (17,2,2,to_date('05/06/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (18,2,3,to_date('05/07/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (19,2,4,to_date('05/08/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (20,2,5,to_date('05/09/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (21,2,6,to_date('05/10/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (22,2,7,to_date('05/11/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (23,2,8,to_date('05/12/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (24,1,1,to_date('03/04/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (25,1,2,to_date('03/05/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (26,1,3,to_date('03/06/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (27,1,4,to_date('03/07/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (28,1,5,to_date('03/08/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (29,1,6,to_date('03/09/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (30,1,7,to_date('03/10/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (31,1,8,to_date('03/11/2020', 'dd/mm/yyyy'),0);
insert into sb_cuota(id_cuota,id_prestamo,num_cuota,fecha_vencimiento,estado) values (32,1,9,to_date('03/12/2020', 'dd/mm/yyyy'),0);

-- tabla sb_deposito_retiro
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (1, 'D', 2, 5000, 'S', to_date('25/07/2019 11:45', 'dd/mm/yyyy hh24:mi'), 3);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (2, 'D', 2, 5000, 'S', to_date('25/08/2019 11:45', 'dd/mm/yyyy hh24:mi'), 3);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (3, 'D', 2, 5000, 'S', to_date('25/09/2019 11:45', 'dd/mm/yyyy hh24:mi'), 3);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (4, 'D', 2, 5000, 'S', to_date('25/10/2019 11:45', 'dd/mm/yyyy hh24:mi'), 3);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (5, 'D', 2, 5000, 'S', to_date('25/11/2019 11:45', 'dd/mm/yyyy hh24:mi'), 3);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (6, 'R', 2, 11473, 'S', to_date('20/12/2019 11:45', 'dd/mm/yyyy hh24:mi'), 3);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (7, 'D', 2, 5000, 'S', to_date('22/12/2020 11:45', 'dd/mm/yyyy hh24:mi'), 3);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (8, 'D', 2, 5000, 'S', to_date('25/02/2020 11:45', 'dd/mm/yyyy hh24:mi'), 3);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (9, 'D', 2, 5000, 'S', to_date('25/03/2020 11:45', 'dd/mm/yyyy hh24:mi'), 3);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (10, 'D', 1, 2200, 'S', to_date('30/07/2019 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (11, 'D', 1, 2200, 'S', to_date('30/08/2019 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (12, 'R', 1, 1300, 'S', to_date('18/09/2019 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (13, 'D', 1, 2200, 'S', to_date('30/09/2019 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (14, 'D', 1, 2200, 'S', to_date('30/11/2019 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (15, 'R', 1, 1920, 'S', to_date('22/12/2019 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (16, 'D', 1, 2200, 'S', to_date('30/12/2019 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (17, 'D', 1, 2200, 'S', to_date('30/01/2020 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (18, 'D', 1, 2200, 'S', to_date('28/02/2020 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (19, 'D', 1, 2200, 'S', to_date('30/03/2020 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (20, 'R', 1, 2000, 'S', to_date('30/04/2020 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (21, 'D', 1, 2200, 'S', to_date('30/06/2020 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (22, 'D', 5, 100, 'D', to_date('29/08/2019 13:00', 'dd/mm/yyyy HH24:MI'), 1);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (23, 'R', 5, 50, 'D', to_date('29/09/2019 13:00', 'dd/mm/yyyy HH24:MI'), 1);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (24, 'D', 5, 100, 'D', to_date('29/10/2019 13:00', 'dd/mm/yyyy HH24:MI'), 1);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (25, 'D', 5, 100, 'D', to_date('29/11/2019 13:00', 'dd/mm/yyyy HH24:MI'), 1);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (26, 'R', 5, 66, 'D', to_date('20/12/2019 13:00', 'dd/mm/yyyy HH24:MI'), 1);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (27, 'D', 5, 100, 'D', to_date('29/12/2019 13:00', 'dd/mm/yyyy HH24:MI'), 1);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (28, 'D', 5, 100, 'D', to_date('28/02/2019 13:00', 'dd/mm/yyyy HH24:MI'), 1);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (29, 'R', 5, 100, 'D', to_date('29/03/2019 13:00', 'dd/mm/yyyy HH24:MI'), 1);
insert into sb_deposito_retiro (id_dep_ret, tipo, id_cuenta, monto, moneda, fecha_hora, id_agencia) values (30, 'D', 5, 372, 'S', to_date('29/03/2019 13:00', 'dd/mm/yyyy HH24:MI'), 1);

-- tabla sb_transferencia
insert into sb_transferencia (id_transferencia, id_cuenta_origen, num_cuenta_destino, id_banco, monto, moneda, fecha_hora, id_agencia) values(1, 1, '6732184363905', 1, 1300, 'S', to_date('18/09/2019 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_transferencia (id_transferencia, id_cuenta_origen, num_cuenta_destino, id_banco, monto, moneda, fecha_hora, id_agencia) values(2, 3, '001698742175963', 1, 200, 'S', to_date('20/06/2019 17:00', 'dd/mm/yyyy HH24:MI'), 1);
insert into sb_transferencia (id_transferencia, id_cuenta_origen, num_cuenta_destino, id_banco, monto, moneda, fecha_hora, id_agencia) values(3, 3, '001649613132551', 2, 300, 'S', to_date('18/07/2019 17:00', 'dd/mm/yyyy HH24:MI'), 2);
insert into sb_transferencia (id_transferencia, id_cuenta_origen, num_cuenta_destino, id_banco, monto, moneda, fecha_hora, id_agencia) values(4, 4, '553497217321', 3, 1000,  'S', to_date('25/01/2018 17:00', 'dd/mm/yyyy HH24:MI'), 4);
insert into sb_transferencia (id_transferencia, id_cuenta_origen, num_cuenta_destino, id_banco, monto, moneda, fecha_hora, id_agencia) values(5, 4, '005541735719378', 3, 400, 'D', to_date('18/04/2018 17:00', 'dd/mm/yyyy HH24:MI'), 2);
insert into sb_transferencia (id_transferencia, id_cuenta_origen, num_cuenta_destino, id_banco, monto, moneda, fecha_hora, id_agencia) values(6, 4, '6732184363905', 3, 1000, 'D', to_date('06/08/2019 17:00', 'dd/mm/yyyy HH24:MI'), 4);
