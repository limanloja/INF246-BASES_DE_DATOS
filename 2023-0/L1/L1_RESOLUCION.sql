-- P1(3pts)
-- A(2pts)
-- crear tabla HE_CLIENTE
-- syntax: create table nomre(nombreColumna tipoDato not null/ null, ...)
create table HE_CLIENTE (
    ID_CLIENTE number not null
    ,NOMBRES varchar2(50) not null
    ,APELLIDOS varchar2(50) not null
    ,DNI varchar2(8) not null
    --,primary key (ID_CLIENTE)/* 1ra forma de asignar pk */
);
-- 2da forma: alter table
alter table HE_CLIENTE
add primary key (ID_CLIENTE);
-- eliminar pk
alter table HE_CLIENTE
drop primary key;
-- consultar información de la tabla
select * from HE_CLIENTE;
-- B(1pts)
-- agregar comentarios: COMMENT
-- syntax: comment on column nombreTabla.nombreColummna is 'comentario'
comment on column HE_CLIENTE.ID_CLIENTE is 'Identificador del cliente';
comment on column HE_CLIENTE.NOMBRES is 'Nombres del cliente';
comment on column HE_CLIENTE.APELLIDOS is 'Apellidos del cliente';
comment on column HE_CLIENTE.DNI is 'DNI del cliente';

-- P2(2pts)
-- A(1pts)
-- agregar una tabla
-- syntax: alter table nombreTabla add nombreColumna tipoDato not null/null;
alter table HE_PEDIDO add ID_CLIENTE number not null;
-- consulta de la tabla HE_PEDIDO
select * from HE_PEDIDO;
-- B(1pts)
-- agregar una llave foranea (FK)
/* 
    sytanx: alter table nombreTabla1
            add constraint nombreRestriccion
            foreign key (campoClaveForanea)
            references nombreTabla2 (campoClavePrimaria);
*/
alter table HE_PEDIDO
add constraint fk_idcliente_cliente_pedido
foreign key (ID_CLIENTE)
references HE_CLIENTE (ID_CLIENTE);
-- P3(6pts)
-- insertar datos
-- syntax: insert into nombreTabla (col1, col2, ...) values (val1, val2, ...)
-- insertar en las tablas del enunciado
insert into HE_CLIENTE values (1, 'Eric', 'Cartman', '77777777');
insert into HE_PEDIDO values (1,0,1);
insert into HE_PEDIDO_POSTRE values (1,1,6,2);
insert into HE_PEDIDO_POSTRE values (2,1,8,3);
insert into HE_PEDIDO_POSTRE_SABOR values (1,1,2,2);
insert into HE_PEDIDO_POSTRE_SABOR values (2,1,3,1);
insert into HE_PEDIDO_POSTRE_SABOR values (3,2,8,2);
-- consultas
select * from HE_CLIENTE;
select * from HE_PEDIDO;
select * from HE_PEDIDO_POSTRE;
select * from HE_PEDIDO_POSTRE_SABOR;
-- P4 (2pts)
select * from HE_PEDIDO_POSTRE_SABOR;
select * from HE_SABOR;
-- version moderna de cruzar tablas
select a.id_pedido_postre, 
a.id_sabor, b.nombre, 
a.numero_bolas 
from HE_PEDIDO_POSTRE_SABOR a
inner join HE_SABOR b 
on a.id_sabor = b.id_sabor
order by a.id_sabor asc;
-- version tradicional
select a.id_pedido_postre, 
a.id_sabor, b.nombre, 
a.numero_bolas 
from HE_PEDIDO_POSTRE_SABOR a, HE_SABOR b 
where a.id_sabor = b.id_sabor
order by a.id_sabor asc;
-- P5(2pts)
-- A(1pts)
-- actualizar campo de una tabla
-- syntax: update nombreTabla set col1 = val1 where condicion
update HE_PEDIDO
set precio = 8.0
where id_pedido = 1;
--B(1pts)
select b.id_pedido,
(a.nombres||' '||a.apellidos) "NOMBRE COMPLETO",
b.precio
from HE_CLIENTE a, HE_PEDIDO b
where a.id_cliente = b.id_cliente;
-- P6(2pts)
update he_orden_produccion
set fecha_hora_term_real = to_date('27/01/2023','DD/MM/YYYY'), estado = 'T'
where fecha_hora_term_planif<to_date('27/01/2023','DD/MM/YYYY');
-- P7(3pts)
select a.id_orden_produccion, 
b.id_sabor, 
b.nombre, 
a.cantidad, 
TO_CHAR(a.fecha_hora_registro, 'DD-MM-YYYY') as FECHA_REGISTRO,
TO_CHAR(a.fecha_hora_term_planif, 'DD-MM-YYYY') as FECHA_PLANIFICADA,
NVL(TO_CHAR(a.fecha_hora_term_real, 'DD-MM-YYYY'),' ') as FECHA_TERMINADA,
a.estado
from he_orden_produccion a,HE_SABOR b
where b.id_sabor = a.id_sabor
order by 5 asc, 4 desc;
