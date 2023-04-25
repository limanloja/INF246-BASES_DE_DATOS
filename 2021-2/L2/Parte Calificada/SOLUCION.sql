--L1 2021-0
--1
DROP TABLE PP_PROMOCION;

create table PP_PROMOCION (
    ID_PROMOCION NUMBER NOT NULL,
    NOMBRE VARCHAR2(100 BYTE) NOT NULL,
    FECHA_INICIO DATE NOT NULL,
    FECHA_FIN DATE NOT NULL,
    primary key(ID_PROMOCION)
);

COMMENT ON COLUMN PP_PROMOCION.ID_PROMOCION IS
    'Identificador de la promoción.';
COMMENT ON COLUMN PP_PROMOCION.NOMBRE IS
    'Nombre de la promoción.';
COMMENT ON COLUMN PP_PROMOCION.FECHA_INICIO IS
    'Fecha de inicio de la promoción.';
COMMENT ON COLUMN PP_PROMOCION.FECHA_FIN IS
    'Fecha de fin de la promoción.';
--2
ALTER TABLE PP_PROMOCION
ADD TASA_DESCUENTO NUMBER(2,2);

ALTER TABLE PP_TARJETA_BANCARIA
ADD COMPRAS_INTERNET VARCHAR2(50 BYTE);

COMMENT ON COLUMN PP_PROMOCION.TASA_DESCUENTO IS
    'Porcentaje de descuento a aplicar con la promoción.';
COMMENT ON COLUMN PP_TARJETA_BANCARIA.COMPRAS_INTERNET IS
    'Indica si la tarjeta está habilitada para realizar compras por internet. (
    A o I)';
--3
ALTER TABLE PP_PROMOCION
MODIFY TASA_DESCUENTO NUMBER(6,3);

ALTER TABLE PP_TARJETA_BANCARIA
MODIFY COMPRAS_INTERNET VARCHAR2(1 BYTE);
--4
ALTER TABLE PP_CLIENTE
MODIFY FECHA_NACIMIENTO NULL;

--5
insert into pp_region values (110000, 'ICA');
insert into pp_provincia values (110100, 'ICA',110000);
insert into pp_distrito values (110101, 'ICA',110100);
insert into pp_distrito values (110102, 'LA TINGUIÑA',110100);
insert into pp_distrito values (110103, 'LOS AQUIJES',110100);
insert into pp_distrito values (110104, 'OCUCAJE',110100);
insert into pp_distrito values (110105, 'PACHACUTEC',110100);
insert into pp_distrito values (110106, 'PARCONA',110100);
insert into pp_distrito values (110107, 'PUEBLO NUEVO',110100);
insert into pp_distrito values (110108, 'SALAS',110100);
insert into pp_distrito values (110109, 'SAN JOSE DE LOS MOLINOS',110100);
insert into pp_distrito values (110110, 'SAN JUAN BAUTISTA',110100);
insert into pp_distrito values (110111, 'SANTIAGO',110100);
insert into pp_distrito values (110112, 'SUBTANJALLA',110100);
insert into pp_distrito values (110113, 'TATE',110100);
insert into pp_distrito values (110114, 'YAUCA DEL ROSARIO',110100);

select * from pp_region;
select * from pp_provincia;
select * from pp_distrito;
--6
select numero_tarjeta, 
ubicacion, 
fecha_vencimiento, 
compras_internet 
from pp_tarjeta_bancaria
where ubicacion = 'A'
and compras_internet = 'A'
order by fecha_vencimiento asc;
--7
select (a.apellido_paterno||' '||a.apellido_materno||', '||a.nombres) "NOMBRES",
a.numero_documento, 
b.numero_cuenta,
c.numero_tarjeta
from pp_cliente a, pp_cuenta_bancaria b,pp_tarjeta_bancaria c
where b.id_cliente = a.id_cliente
and c.id_cuenta = b.id_cuenta
and c.estado = 'V'
and c.ubicacion = 'A'
and c.fecha_emision>to_date('01/05/2016','DD/MM/YYYY')
order by a.apellido_paterno asc;
--8
update pp_tarjeta_bancaria
set estado = 'A'
where fecha_vencimiento<to_date('27/09/2021','DD/MM/YYYY');
--where fecha_vencimiento<trunc(sysdate);
select * from pp_tarjeta_bancaria where fecha_vencimiento<to_date('27/09/2021','DD/MM/YYYY');
--9
select b.numero_cuenta,
c.monto_transferido,
a.nombres,
a.apellido_paterno
from pp_cliente a, pp_cuenta_bancaria b,pp_transferencia c
where b.id_cliente = a.id_cliente
and c.cuenta_destino = b.id_cuenta
and c.monto_transferido>500;
--10
delete from pp_tarjeta_bancaria
where estado = 'A';

select * from pp_tarjeta_bancaria;
select sysdate from dual;