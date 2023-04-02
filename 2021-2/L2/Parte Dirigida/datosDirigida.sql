-- TABLA INV_TIPO_PRODUCTO
INSERT INTO INV_TIPO_PRODUCTO (Id_Tipo_Producto, Nombre) VALUES ( 4, 'Cereales');
INSERT INTO INV_TIPO_PRODUCTO (Id_Tipo_Producto, Nombre) VALUES ( 5, 'Vegetales');


-- Tabla INV_PRODUCTO
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (1, 'Arroz', 'Kg', 15, to_date('03/04/2021', 'dd/mm/yyyy'), 'A', 4);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (2, 'Azúcar', 'Kg', 17, to_date('19/01/2021', 'dd/mm/yyyy'), 'A', 3);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (3, 'Leche', 'L', 32, to_date('05/06/2021', 'dd/mm/yyyy'),'A', 1);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (4, 'Lenteja', 'Kg', 11, to_date('03/04/2021', 'dd/mm/yyyy'), 'A', 3);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (5, 'Jamón prensado', 'Kg', 5, to_date('23/02/2021', 'dd/mm/yyyy'), 'A', 2);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (6, 'Yogurt bebible', 'L', 8, to_date('03/04/2021', 'dd/mm/yyyy'), 'A', 1);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (7, 'Lechuga', 'Ud', 3, to_date('23/02/2021', 'dd/mm/yyyy'), 'A', 5);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (8, 'Zanahoria', 'Kg', 4, to_date('03/04/2021', 'dd/mm/yyyy'), 'A', 5);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (9, 'Tomate', 'Kg', 8, to_date('05/06/2021', 'dd/mm/yyyy'), 'A', 5);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (10, 'Choclo', 'Ud', 5, to_date('13/07/2021', 'dd/mm/yyyy'), 'A', 5);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (11, 'Espinaca', 'Kg', 1, to_date('19/01/2021', 'dd/mm/yyyy'), 'A', 5);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (12, 'Arverja partida', 'Kg', 2, to_date('23/02/2021', 'dd/mm/yyyy'), 'A', 3);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (13, 'Jamonada', 'Kg', 1, to_date('19/01/2021', 'dd/mm/yyyy'), 'A', 2);
Insert into INV_PRODUCTO (Id_producto, nombre, unidad, cantidad, fecha_compra, ind_activo, id_tipo_producto) VALUES (14, 'Hotdog', 'Kg', 2, to_date('03/04/2021', 'dd/mm/yyyy'), 'A', 2);


