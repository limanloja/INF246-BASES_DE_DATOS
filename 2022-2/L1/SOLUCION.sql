--EJECTUR DROPS
--PARTE 1
--Ejecutar SOLO DDL
/*
cómo renombrar una columna:
alter table tabla
rename column nombreactual
to nuevonombre;
*/
--A
alter table sp_insumo
rename column unidad_divisoria 
to id_unidad;
--consulta para mostrar información (nombre columnas y datos)
select * from sp_insumo;
--B
create table sp_dimension(
    id_dimension char(1 byte) primary key,
    denominacion varchar2(40 byte)
);
--C
create table sp_unidad_divisoria (
    id_unidad varchar2(5 byte) primary key,
    nombre varchar2(50 byte),
    id_dimension char(1 byte)
);
alter table sp_unidad_divisoria
add constraint fk_unidiv_dimen
foreign key (id_dimension)
references sp_dimension(id_dimension);
--D
alter table sp_insumo
add constraint fk_insum_uniddiv
foreign key (id_unidad)
references sp_unidad_divisoria(id_unidad);
--2
--A
alter table sp_producto
rename column tipo 
to id_tipo;
select * from sp_producto;
--B
create table sp_tipo_producto(
    id_tipo number primary key,
    nombre varchar2(100 byte)
);
--C
alter table sp_producto
add constraint fk_prod_tipo
foreign key (id_tipo)
references sp_tipo_producto(id_tipo);
--3
alter table sp_compra_insumo
rename to sp_detalle_compra;
select * from sp_detalle_compra;

alter table sp_compra_producto
rename to sp_detalle_producto;
select * from sp_detalle_producto;
--4
alter table sp_insumo
modify estado char(1 byte);

alter table sp_matriz_insumo
modify cantidad numeric(6,2);

alter table sp_detalle_compra
modify cantidad numeric(6,2);

alter table sp_orden_compra
modify fecha_autorizacion null;
alter table sp_orden_compra
modify fecha_entrega null;

alter table sp_orden_produccion
modify fecha_autorizacion null;
alter table sp_orden_produccion
modify fecha_fin null;

alter table sp_detalle_producto
modify merma default(0);

--5
alter table sp_producto
add stock numeric not null;
--ejecutar DML
--6
select * from sp_insumo;
select * from sp_unidad_divisoria;

select a.id_insumo, a.nombre, a.stock
from sp_insumo a, sp_unidad_divisoria b
where a.id_unidad = b.id_unidad
and b.nombre = 'Pulgada cuadrada';
--7
select * from sp_unidad_divisoria;
select * from sp_insumo;
select * from sp_producto;
select * from sp_matriz_insumo;

select c.nombre as INSUMO, (a.cantidad||' '||d.nombre||' ('||d.id_unidad||')') as REQUERIMIENTO
from sp_matriz_insumo a, sp_producto b, sp_insumo c, sp_unidad_divisoria d
where b.id_producto = a.id_producto
and c.id_insumo = a.id_insumo
and d.id_unidad = c.id_unidad
and b.nombre = 'MocasÃ­n Caballero Talla 41';