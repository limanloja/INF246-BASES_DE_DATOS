-- Generado por Oracle SQL Developer Data Modeler 19.2.0.182.1216
--   en:        2020-04-27 21:08:22 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE sb_agencia (
    id_agencia    NUMBER NOT NULL,
    nombre        VARCHAR2(40) NOT NULL,
    direccion     VARCHAR2(50) NOT NULL,
    id_distrito   NUMBER NOT NULL
);

COMMENT ON COLUMN sb_agencia.id_agencia IS
    'Identificador de la agencia.';

COMMENT ON COLUMN sb_agencia.nombre IS
    'Nombre de la agencia.';

COMMENT ON COLUMN sb_agencia.direccion IS
    'Dirección de la agencia.';

COMMENT ON COLUMN sb_agencia.id_distrito IS
    'Identificador del distrito donde está ubicada la agencia.';

ALTER TABLE sb_agencia ADD CONSTRAINT sb_agencia_pk PRIMARY KEY ( id_agencia );

CREATE TABLE sb_banco (
    id_banco   NUMBER NOT NULL,
    nombre     VARCHAR2(40) NOT NULL
);

COMMENT ON COLUMN sb_banco.id_banco IS
    'Identificador del banco.';

COMMENT ON COLUMN sb_banco.nombre IS
    'Nombre del banco.';

ALTER TABLE sb_banco ADD CONSTRAINT sb_banco_pk PRIMARY KEY ( id_banco );

CREATE TABLE sb_cliente (
    id_cliente    NUMBER NOT NULL,
    ape_paterno   VARCHAR2(20) NOT NULL,
    ape_materno   VARCHAR2(20) NOT NULL,
    nombre        VARCHAR2(20) NOT NULL,
    dni           VARCHAR2(8) NOT NULL,
    sexo          VARCHAR2(1) NOT NULL,
    direccion     VARCHAR2(50),
    telefono      VARCHAR2(10),
    email         VARCHAR2(30),
    id_distrito   NUMBER
);

COMMENT ON COLUMN sb_cliente.id_cliente IS
    'Identificador del cliente.';

COMMENT ON COLUMN sb_cliente.ape_paterno IS
    'Apellido paterno del cliente.';

COMMENT ON COLUMN sb_cliente.ape_materno IS
    'Apellido materno del cliente.';

COMMENT ON COLUMN sb_cliente.nombre IS
    'Nombre del cliente.';

COMMENT ON COLUMN sb_cliente.dni IS
    'DNI del cliente.';

COMMENT ON COLUMN sb_cliente.sexo IS
    'Sexo del cliente (M o F).';

COMMENT ON COLUMN sb_cliente.direccion IS
    'Dirección del cliente.';

COMMENT ON COLUMN sb_cliente.telefono IS
    'Teléfono fijo o celular del cliente.';

COMMENT ON COLUMN sb_cliente.email IS
    'Correo electrónico del cliente.';

COMMENT ON COLUMN sb_cliente.id_distrito IS
    'Identificador del distrito donde vive el cliente.';

ALTER TABLE sb_cliente ADD CONSTRAINT sb_cliente_pk PRIMARY KEY ( id_cliente );

CREATE TABLE sb_cliente_cuenta (
    id_cliente   NUMBER NOT NULL,
    id_cuenta    NUMBER NOT NULL
);

COMMENT ON COLUMN sb_cliente_cuenta.id_cliente IS
    'Identificador del cliente dueño de la cuenta.';

COMMENT ON COLUMN sb_cliente_cuenta.id_cuenta IS
    'Identificador de la cuenta que pertenece al cliente.';

ALTER TABLE sb_cliente_cuenta ADD CONSTRAINT sb_cli_cue_pk PRIMARY KEY ( id_cliente,
                                                                         id_cuenta );

CREATE TABLE sb_cuenta (
    id_cuenta        NUMBER NOT NULL,
    numero           VARCHAR2(20) NOT NULL,
    moneda           VARCHAR2(1) NOT NULL,
    fecha_apertura   DATE NOT NULL,
    saldo            NUMBER NOT NULL,
    id_agencia       NUMBER NOT NULL,
    tipo             VARCHAR2(20) NOT NULL
);

COMMENT ON COLUMN sb_cuenta.id_cuenta IS
    'Identificador de la cuenta.';

COMMENT ON COLUMN sb_cuenta.numero IS
    'Número de la cuenta.';

COMMENT ON COLUMN sb_cuenta.moneda IS
    'Moneda: S = Soles D = Dólares.';

COMMENT ON COLUMN sb_cuenta.fecha_apertura IS
    'Fecha de apertura de la cuenta.';

COMMENT ON COLUMN sb_cuenta.saldo IS
    'Saldo actual de la cuenta.';

COMMENT ON COLUMN sb_cuenta.id_agencia IS
    'Identificador de la agencia donde se apertura la cuenta.';

ALTER TABLE sb_cuenta ADD CONSTRAINT sb_cuenta_pk PRIMARY KEY ( id_cuenta );

CREATE TABLE sb_cuota (
    id_cuota            NUMBER NOT NULL,
    id_prestamo         NUMBER NOT NULL,
    num_cuota           NUMBER NOT NULL,
    fecha_vencimiento   DATE NOT NULL,
    fecha_pago          DATE,
    monto_pago          NUMBER,
    estado              NUMBER(1) NOT NULL,
    id_agencia          NUMBER
);

COMMENT ON COLUMN sb_cuota.id_cuota IS
    'Identificador de la cuota.';

COMMENT ON COLUMN sb_cuota.id_prestamo IS
    'Identificador del préstamo.';

COMMENT ON COLUMN sb_cuota.num_cuota IS
    'Número de cuota.';

COMMENT ON COLUMN sb_cuota.fecha_vencimiento IS
    'Fecha de vencimiento de la cuota.';

COMMENT ON COLUMN sb_cuota.fecha_pago IS
    'Fecha en que se paga la cuota.';

COMMENT ON COLUMN sb_cuota.monto_pago IS
    'Monto pagado por la cuota.';

COMMENT ON COLUMN sb_cuota.estado IS
    'Estado del pago de la cuota.
0: No pagada
1: Pagada a tiempo
2: Pagada con mora';

COMMENT ON COLUMN sb_cuota.id_agencia IS
    'Identificador de la agencia donde se realiza el pago.';

ALTER TABLE sb_cuota ADD CONSTRAINT sb_cuota_pk PRIMARY KEY ( id_cuota );

CREATE TABLE sb_deposito_retiro (
    id_dep_ret   NUMBER NOT NULL,
    tipo         VARCHAR2(1) NOT NULL,
    id_cuenta    NUMBER NOT NULL,
    monto        NUMBER NOT NULL,
    moneda       VARCHAR2(1) NOT NULL,
    fecha_hora   DATE NOT NULL,
    id_agencia   NUMBER NOT NULL
);

COMMENT ON COLUMN sb_deposito_retiro.id_dep_ret IS
    'Identificador del depósito o retiro.';

COMMENT ON COLUMN sb_deposito_retiro.tipo IS
    'D = Depósito, R = Retiro.';

COMMENT ON COLUMN sb_deposito_retiro.id_cuenta IS
    'Identificador de la cuenta en la que se realizó el depósito o retiro.';

COMMENT ON COLUMN sb_deposito_retiro.monto IS
    'Monto del depósito o retiro.';

COMMENT ON COLUMN sb_deposito_retiro.moneda IS
    'Moneda en la que se realiza el depósito o retiro. S = Soles, D = Dólares.';

COMMENT ON COLUMN sb_deposito_retiro.fecha_hora IS
    'Fecha y hora en que se realiza el depósito o retiro.';

COMMENT ON COLUMN sb_deposito_retiro.id_agencia IS
    'Identificador de la agencia donde se realiza el depósito o retiro.';

ALTER TABLE sb_deposito_retiro ADD CONSTRAINT sb_dep_ret_pk PRIMARY KEY ( id_dep_ret );

CREATE TABLE sb_distrito (
    id_distrito    NUMBER NOT NULL,
    nombre         VARCHAR2(20) NOT NULL,
    id_provincia   NUMBER NOT NULL
);

COMMENT ON COLUMN sb_distrito.id_distrito IS
    'Identificador del distrito.';

COMMENT ON COLUMN sb_distrito.nombre IS
    'Identificador de la provincia a la que pertenece el distrito.';

COMMENT ON COLUMN sb_distrito.id_provincia IS
    'Identificador de la provincia a la que pertenece el distrito.';

ALTER TABLE sb_distrito ADD CONSTRAINT sb_distrito_pk PRIMARY KEY ( id_distrito );

CREATE TABLE sb_prestamo (
    id_prestamo   NUMBER NOT NULL,
    monto         NUMBER NOT NULL,
    moneda        VARCHAR2(1) NOT NULL,
    fecha         DATE NOT NULL,
    plazo         NUMBER NOT NULL,
    interes       NUMBER NOT NULL,
    id_cliente    NUMBER NOT NULL,
    id_agencia    NUMBER NOT NULL,
    cuota         NUMBER
);

COMMENT ON COLUMN sb_prestamo.id_prestamo IS
    'Identificador del préstamo.';

COMMENT ON COLUMN sb_prestamo.monto IS
    'Monto del préstamo.';

COMMENT ON COLUMN sb_prestamo.moneda IS
    'Moneda del préstamo. S = Soles, D = Dólares.';

COMMENT ON COLUMN sb_prestamo.fecha IS
    'Fecha en que se otorga el préstamo.';

COMMENT ON COLUMN sb_prestamo.plazo IS
    'Plazo del préstamo en meses.';

COMMENT ON COLUMN sb_prestamo.interes IS
    'Porcentaje de interés mensual.';

COMMENT ON COLUMN sb_prestamo.id_cliente IS
    'Identificador del cliente al que se le otorga el préstamo.';

COMMENT ON COLUMN sb_prestamo.id_agencia IS
    'Identificador de la agencia en que se tramitó el préstamo.';

COMMENT ON COLUMN sb_prestamo.cuota IS
    'Monto de cuota mensual.';

ALTER TABLE sb_prestamo ADD CONSTRAINT sb_prestamo_pk PRIMARY KEY ( id_prestamo );

CREATE TABLE sb_provincia (
    id_provincia   NUMBER NOT NULL,
    nombre         VARCHAR2(20) NOT NULL,
    id_region      NUMBER NOT NULL
);

COMMENT ON COLUMN sb_provincia.id_provincia IS
    'Identificador de la provincia.';

COMMENT ON COLUMN sb_provincia.nombre IS
    'Nombre de la provincia.';

COMMENT ON COLUMN sb_provincia.id_region IS
    'Identificador de la región a la que pertenece la provincia.';

ALTER TABLE sb_provincia ADD CONSTRAINT sb_provincia_pk PRIMARY KEY ( id_provincia );

CREATE TABLE sb_region (
    id_region   NUMBER NOT NULL,
    nombre      VARCHAR2(20) NOT NULL
);

COMMENT ON COLUMN sb_region.id_region IS
    'Identificador de la región.';

COMMENT ON COLUMN sb_region.nombre IS
    'Nombre de la región.';

ALTER TABLE sb_region ADD CONSTRAINT sb_region_pk PRIMARY KEY ( id_region );

CREATE TABLE sb_tarjeta (
    id_tarjeta   NUMBER NOT NULL,
    numero       VARCHAR2(16) NOT NULL,
    estado       NUMBER NOT NULL,
    id_cliente   NUMBER NOT NULL
);

COMMENT ON COLUMN sb_tarjeta.id_tarjeta IS
    'Identificador de la tarjeta.';

COMMENT ON COLUMN sb_tarjeta.numero IS
    'Número de la tarjeta.';

COMMENT ON COLUMN sb_tarjeta.estado IS
    '0 = Inactiva, 1 = Activa.';

COMMENT ON COLUMN sb_tarjeta.id_cliente IS
    'Identificador del cliente dueño de la tarjeta.';

ALTER TABLE sb_tarjeta ADD CONSTRAINT sb_tarjeta_pk PRIMARY KEY ( id_tarjeta );

CREATE TABLE sb_tarjeta_cuenta (
    id_tarjeta   NUMBER NOT NULL,
    id_cuenta    NUMBER NOT NULL
);

COMMENT ON COLUMN sb_tarjeta_cuenta.id_tarjeta IS
    'Identificador de la tarjeta.';

COMMENT ON COLUMN sb_tarjeta_cuenta.id_cuenta IS
    'Identificador de la cuenta.';

ALTER TABLE sb_tarjeta_cuenta ADD CONSTRAINT sb_tar_cue_pk PRIMARY KEY ( id_cuenta,
                                                                         id_tarjeta );

CREATE TABLE sb_transferencia (
    id_transferencia     NUMBER NOT NULL,
    id_cuenta_origen     NUMBER NOT NULL,
    num_cuenta_destino   NUMBER NOT NULL,
    id_banco             NUMBER NOT NULL,
    monto                NUMBER NOT NULL,
    moneda               VARCHAR2(1) NOT NULL,
    fecha_hora           DATE NOT NULL,
    id_agencia           NUMBER
);

COMMENT ON COLUMN sb_transferencia.id_transferencia IS
    'Identificador de la transferencia.';

COMMENT ON COLUMN sb_transferencia.id_cuenta_origen IS
    'Identificador de la cuenta desde la que se realiza la transferencia.';

COMMENT ON COLUMN sb_transferencia.num_cuenta_destino IS
    'Número de la cuenta que recibe la transferencia.';

COMMENT ON COLUMN sb_transferencia.id_banco IS
    'Identificador del banco al que pertenece la cuenta destino.';

COMMENT ON COLUMN sb_transferencia.monto IS
    'Monto de la transferencia.';

COMMENT ON COLUMN sb_transferencia.moneda IS
    'Moneda en la que se realiza la transferencia. S = Soles, D = Dólares.';

COMMENT ON COLUMN sb_transferencia.fecha_hora IS
    'Fecha y hora en que se realiza la transferencia.';

COMMENT ON COLUMN sb_transferencia.id_agencia IS
    'Identificador de la agencia donde se realiza. Si se queda en NULL significa que la transferencia se realizó vía aplicativo móvil.'
    ;

ALTER TABLE sb_transferencia ADD CONSTRAINT sb_transferencia_pk PRIMARY KEY ( id_transferencia );

ALTER TABLE sb_agencia
    ADD CONSTRAINT sb_agencia_distrito_fk FOREIGN KEY ( id_distrito )
        REFERENCES sb_distrito ( id_distrito );

ALTER TABLE sb_cliente_cuenta
    ADD CONSTRAINT sb_cli_cue_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES sb_cliente ( id_cliente );

ALTER TABLE sb_cliente_cuenta
    ADD CONSTRAINT sb_cli_cue_cuenta_fk FOREIGN KEY ( id_cuenta )
        REFERENCES sb_cuenta ( id_cuenta );

ALTER TABLE sb_cliente
    ADD CONSTRAINT sb_cliente_distrito_fk FOREIGN KEY ( id_distrito )
        REFERENCES sb_distrito ( id_distrito );

ALTER TABLE sb_cuenta
    ADD CONSTRAINT sb_cuenta_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES sb_agencia ( id_agencia );

ALTER TABLE sb_cuota
    ADD CONSTRAINT sb_cuota_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES sb_agencia ( id_agencia );

ALTER TABLE sb_cuota
    ADD CONSTRAINT sb_cuota_prestamo_fk FOREIGN KEY ( id_prestamo )
        REFERENCES sb_prestamo ( id_prestamo );

ALTER TABLE sb_deposito_retiro
    ADD CONSTRAINT sb_dep_ret_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES sb_agencia ( id_agencia );

ALTER TABLE sb_deposito_retiro
    ADD CONSTRAINT sb_dep_ret_cuenta_fk FOREIGN KEY ( id_cuenta )
        REFERENCES sb_cuenta ( id_cuenta );

ALTER TABLE sb_distrito
    ADD CONSTRAINT sb_distrito_provincia_fk FOREIGN KEY ( id_provincia )
        REFERENCES sb_provincia ( id_provincia );

ALTER TABLE sb_prestamo
    ADD CONSTRAINT sb_prestamo_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES sb_agencia ( id_agencia );

ALTER TABLE sb_prestamo
    ADD CONSTRAINT sb_prestamo_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES sb_cliente ( id_cliente );

ALTER TABLE sb_provincia
    ADD CONSTRAINT sb_provincia_region_fk FOREIGN KEY ( id_region )
        REFERENCES sb_region ( id_region );

ALTER TABLE sb_tarjeta_cuenta
    ADD CONSTRAINT sb_tar_cue_cuenta_fk FOREIGN KEY ( id_cuenta )
        REFERENCES sb_cuenta ( id_cuenta );

ALTER TABLE sb_tarjeta_cuenta
    ADD CONSTRAINT sb_tar_cue_tarjeta_fk FOREIGN KEY ( id_tarjeta )
        REFERENCES sb_tarjeta ( id_tarjeta );

ALTER TABLE sb_tarjeta
    ADD CONSTRAINT sb_tarjeta_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES sb_cliente ( id_cliente );

ALTER TABLE sb_transferencia
    ADD CONSTRAINT sb_transferencia_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES sb_agencia ( id_agencia );

ALTER TABLE sb_transferencia
    ADD CONSTRAINT sb_transferencia_banco_fk FOREIGN KEY ( id_banco )
        REFERENCES sb_banco ( id_banco );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            14
-- CREATE INDEX                             0
-- ALTER TABLE                             33
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
