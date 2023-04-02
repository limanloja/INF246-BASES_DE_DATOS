-- Generado por Oracle SQL Developer Data Modeler 21.2.0.165.1515
--   en:        2021-09-25 10:56:41 COT
--   sitio:      Oracle Database 12c
--   tipo:      Oracle Database 12c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE pp_clasificacion_cuenta (
    id_clasificacion     NUMBER NOT NULL,
    nombre               VARCHAR2(30 BYTE) NOT NULL,
    descripcion          VARCHAR2(255 BYTE) NOT NULL,
    tasa_interes         NUMBER(6, 3) NOT NULL,
    num_libre            NUMBER(2) NOT NULL,
    costo_transaccion    NUMBER(5, 2) NOT NULL,
    limite_transferencia NUMBER(7, 2) NOT NULL,
    beneficio_banco      CHAR(1 BYTE) NOT NULL
);

COMMENT ON TABLE pp_clasificacion_cuenta IS
    'Tabla que registra las clasificaciones que puede tener una cuenta bancaria.';

COMMENT ON COLUMN pp_clasificacion_cuenta.id_clasificacion IS
    'Identificador de la clasificación de cuenta.';

COMMENT ON COLUMN pp_clasificacion_cuenta.nombre IS
    'Nombre asignado a la clasificación de cuenta.';

COMMENT ON COLUMN pp_clasificacion_cuenta.descripcion IS
    'Descripción informativa de la clasificación de cuenta.';

COMMENT ON COLUMN pp_clasificacion_cuenta.tasa_interes IS
    'Porcentaje representativo de la tasa de interés mensual que gana la cuenta bancaria.';

COMMENT ON COLUMN pp_clasificacion_cuenta.num_libre IS
    'Número entero que representa la cantidad de transacciones sin costo que tendrá la cuenta bancaria por mes.';

COMMENT ON COLUMN pp_clasificacion_cuenta.costo_transaccion IS
    'Costo (en S/.) de una transacción realizada por una cuenta bancaria de este tipo. Esta tarifa se empieza a cobrar de la cuenta una vez que se superan la cantidad de transacciones sin costo del mes.';

COMMENT ON COLUMN pp_clasificacion_cuenta.limite_transferencia IS
    'Monto límite que puede transferir la cuenta en el día (en una o varias transferencias en el transcurso del día).';

COMMENT ON COLUMN pp_clasificacion_cuenta.beneficio_banco IS
    'Valor que representa si la cuenta tendrá los beneficios del "club" del Banco. ''S'' representa que tiene todos los beneficios, ''P'' representa que tiene algunos beneficios (parcial) y ''N'' representa que no tiene ninguno.';

ALTER TABLE pp_clasificacion_cuenta ADD CONSTRAINT pp_clasificacion_cuenta_pk PRIMARY KEY ( id_clasificacion );

CREATE TABLE pp_cliente (
    id_cliente         NUMBER NOT NULL,
    apellido_paterno   VARCHAR2(50 BYTE) NOT NULL,
    apellido_materno   VARCHAR2(50 BYTE) NOT NULL,
    nombres            VARCHAR2(50 BYTE) NOT NULL,
    tipo_documento     CHAR(1 BYTE) NOT NULL,
    numero_documento   VARCHAR2(15 BYTE) NOT NULL,
    fecha_nacimiento   DATE NOT NULL,
    direccion          VARCHAR2(150 BYTE) NOT NULL,
    referencia         VARCHAR2(100 BYTE) NOT NULL,
    ubigeo             CHAR(6 BYTE) NOT NULL,
    telefono_contacto  VARCHAR2(20 BYTE) NOT NULL,
    correo_electronico VARCHAR2(100 BYTE) NOT NULL,
    fecha_creacion     DATE NOT NULL,
    estado             CHAR(1 BYTE) NOT NULL
);

COMMENT ON TABLE pp_cliente IS
    'Tabla que registra los clientes del Banco Virtual PerúPago.';

COMMENT ON COLUMN pp_cliente.id_cliente IS
    'Identificador del cliente.';

COMMENT ON COLUMN pp_cliente.apellido_paterno IS
    'Apellido paterno del cliente.';

COMMENT ON COLUMN pp_cliente.apellido_materno IS
    'Apellido materno del cliente.';

COMMENT ON COLUMN pp_cliente.nombres IS
    'Nombres del cliente.';

COMMENT ON COLUMN pp_cliente.tipo_documento IS
    'Tipo de documento del cliente. ''D'' significa que es un DNI (exactamente 8 dígitos), ''R'' significa que es un RUC (exactamente 11 dígitos), ''C'' significa que es un carnet de extranjería (máximo 12 caracteres), ''P'' significa que es un pasaporte (máximo 12 caracteres), ''N'' significa que es una partida de nacimiento (máximo 15 caracteres) y ''O'' significa que son otros tipos de documento (máximo 15 caracteres).';

COMMENT ON COLUMN pp_cliente.numero_documento IS
    'Número de documento del cliente.';

COMMENT ON COLUMN pp_cliente.fecha_nacimiento IS
    'Fecha de nacimiento del cliente.';

COMMENT ON COLUMN pp_cliente.direccion IS
    'Dirección exacta de residencia del cliente.';

COMMENT ON COLUMN pp_cliente.referencia IS
    'Referencias físicas de la residencia del cliente.';

COMMENT ON COLUMN pp_cliente.ubigeo IS
    'Ubigeo del distrito de residencia del cliente.';

COMMENT ON COLUMN pp_cliente.telefono_contacto IS
    'Teléfono de contacto del cliente.';

COMMENT ON COLUMN pp_cliente.correo_electronico IS
    'Correo electrónico del cliente.';

COMMENT ON COLUMN pp_cliente.fecha_creacion IS
    'Fecha de creación del cliente.';

COMMENT ON COLUMN pp_cliente.estado IS
    'Estado del cliente. ''V'' significa que el cliente está vigente, ''B'' que el cliente se encuentra bloqueado y ''E'' que el cliente está eliminado.';

ALTER TABLE pp_cliente ADD CONSTRAINT pp_cliente_pk PRIMARY KEY ( id_cliente );

CREATE TABLE pp_cuenta_bancaria (
    id_cuenta            NUMBER NOT NULL,
    numero_cuenta        VARCHAR2(21 BYTE) NOT NULL,
    codigo_interbancario VARCHAR2(20 BYTE) NOT NULL,
    id_cliente           NUMBER NOT NULL,
    tipo_cuenta          CHAR(1 BYTE) NOT NULL,
    id_clasificacion     NUMBER NOT NULL,
    fecha_registro       DATE NOT NULL,
    estado               CHAR(1 BYTE) NOT NULL
);

COMMENT ON TABLE pp_cuenta_bancaria IS
    'Tabla que registra las cuentas bancarias de los clientes del Banco Virtual PerúPago.';

COMMENT ON COLUMN pp_cuenta_bancaria.id_cuenta IS
    'Identificador de la cuenta bancaria.';

COMMENT ON COLUMN pp_cuenta_bancaria.numero_cuenta IS
    'Número local de la cuenta bancaria.';

COMMENT ON COLUMN pp_cuenta_bancaria.codigo_interbancario IS
    'Código interbancario (CCI) de la cuenta bancaria, el cual se usa para transferencias con otros bancos.';

COMMENT ON COLUMN pp_cuenta_bancaria.id_cliente IS
    'Identificador del cliente al que pertenece la cuenta.';

COMMENT ON COLUMN pp_cuenta_bancaria.tipo_cuenta IS
    'Tipo de cuenta asociado a esta cuenta: ''C'' significa que es una cuenta corriente, mientras que ''A'' está asociado a una cuenta de ahorros.';

COMMENT ON COLUMN pp_cuenta_bancaria.id_clasificacion IS
    'Identificador de la clasificación de cuenta asociada a esta cuenta.';

COMMENT ON COLUMN pp_cuenta_bancaria.fecha_registro IS
    'Fecha en la que se registró la cuenta bancaria.';

COMMENT ON COLUMN pp_cuenta_bancaria.estado IS
    'Estado de la cuenta bancaria. ''V'' significa que la cuenta está vigente, ''B'' que la cuenta se encuentra bloqueada y ''E'' que la cuenta está eliminada.';

ALTER TABLE pp_cuenta_bancaria ADD CONSTRAINT pp_cuenta_pk PRIMARY KEY ( id_cuenta );

CREATE TABLE pp_distrito (
    id_distrito  CHAR(6 BYTE) NOT NULL,
    nombre       VARCHAR2(100 BYTE) NOT NULL,
    id_provincia CHAR(6 BYTE) NOT NULL
);

COMMENT ON TABLE pp_distrito IS
    'Tabla que registra los distritos del Perú.';

COMMENT ON COLUMN pp_distrito.id_distrito IS
    'Ubigeo del distrito.';

COMMENT ON COLUMN pp_distrito.nombre IS
    'Nombre del distrito.';

COMMENT ON COLUMN pp_distrito.id_provincia IS
    'Ubigeo de la provincia a la que pertenece el distrito.';

ALTER TABLE pp_distrito ADD CONSTRAINT pp_distrito_pk PRIMARY KEY ( id_distrito );

CREATE TABLE pp_provincia (
    id_provincia CHAR(6 BYTE) NOT NULL,
    nombre       VARCHAR2(100 BYTE) NOT NULL,
    id_region    CHAR(6 BYTE) NOT NULL
);

COMMENT ON TABLE pp_provincia IS
    'Tabla que registra las provincias del Perú.';

COMMENT ON COLUMN pp_provincia.id_provincia IS
    'Ubigeo de la provincia.';

COMMENT ON COLUMN pp_provincia.nombre IS
    'Nombre de la provincia.';

COMMENT ON COLUMN pp_provincia.id_region IS
    'Ubigeo de la región a la que pertenece la provincia.';

ALTER TABLE pp_provincia ADD CONSTRAINT pp_provincia_pk PRIMARY KEY ( id_provincia );

CREATE TABLE pp_region (
    id_region CHAR(6 BYTE) NOT NULL,
    nombre    VARCHAR2(100 BYTE) NOT NULL
);

COMMENT ON TABLE pp_region IS
    'Tabla que registra las regiones (anteriormente departamentos) del Perú.';

COMMENT ON COLUMN pp_region.id_region IS
    'Ubigeo de la región.';

COMMENT ON COLUMN pp_region.nombre IS
    'Nombre de la región.';

ALTER TABLE pp_region ADD CONSTRAINT pp_region_pk PRIMARY KEY ( id_region );

CREATE TABLE pp_tarjeta_bancaria (
    id_tarjeta        NUMBER NOT NULL,
    numero_tarjeta    VARCHAR2(16 BYTE) NOT NULL,
    id_cuenta         NUMBER NOT NULL,
    ubicacion         CHAR(1 BYTE) NOT NULL,
    fecha_emision     DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    estado            CHAR(1 BYTE) NOT NULL
);

COMMENT ON TABLE pp_tarjeta_bancaria IS
    'Tabla que registra las tarjetas bancarias emitidas por el Banco Virtual PerúPago.';

COMMENT ON COLUMN pp_tarjeta_bancaria.id_tarjeta IS
    'Identificador de la tarjeta bancaria.';

COMMENT ON COLUMN pp_tarjeta_bancaria.numero_tarjeta IS
    'Número de la tarjeta bancaria.';

COMMENT ON COLUMN pp_tarjeta_bancaria.id_cuenta IS
    'Identificador de la cuenta bancaria a la que pertenece la tarjeta.';

COMMENT ON COLUMN pp_tarjeta_bancaria.ubicacion IS
    'Ubicación de la tarjeta bancaria. ‘V’ significa que la tarjeta sólo tiene su versión virtual, ‘F’ significa que sólo tiene versión en físico y ‘A’ significa que tiene ambas versiones.';

COMMENT ON COLUMN pp_tarjeta_bancaria.fecha_emision IS
    'Fecha de emisión de la tarjeta.';

COMMENT ON COLUMN pp_tarjeta_bancaria.fecha_vencimiento IS
    'Fecha de vencimiento impresa en la tarjeta bancaria.';

COMMENT ON COLUMN pp_tarjeta_bancaria.estado IS
    'Estado de la tarjeta. ''V'' significa que la tarjeta está vigente, ''P'' que la tarjeta se encuentra en proceso de emisión, ''B'' que la tarjeta está bloqueada y ''A'' que la tarjeta ha sido anulada.';

ALTER TABLE pp_tarjeta_bancaria ADD CONSTRAINT pp_tarjeta_pk PRIMARY KEY ( id_tarjeta );

CREATE TABLE pp_transferencia (
    id_transferencia   NUMBER NOT NULL,
    cuenta_origen      NUMBER NOT NULL,
    cuenta_destino     NUMBER NOT NULL,
    monto_transferido  NUMBER(7, 2) NOT NULL,
    mensaje            VARCHAR2(255 BYTE) NOT NULL,
    fecha_transaccion  DATE NOT NULL,
    fecha_confirmacion DATE NULL,
    estado             CHAR(1 BYTE) NOT NULL
);

COMMENT ON TABLE pp_transferencia IS
    'Tabla que registra las transferencias entre las cuentas bancarias.';

COMMENT ON COLUMN pp_transferencia.id_transferencia IS
    'Identificador de la transferencia.';

COMMENT ON COLUMN pp_transferencia.cuenta_origen IS
    'Cuenta de origen de la transferencia, la cual transfiere el monto.';

COMMENT ON COLUMN pp_transferencia.cuenta_destino IS
    'Cuenta de destino de la transferencia, la cual recibe el monto.';

COMMENT ON COLUMN pp_transferencia.monto_transferido IS
    'Monto de la transferencia.';

COMMENT ON COLUMN pp_transferencia.mensaje IS
    'Mensaje personalizado que puede enviar el cliente dueño de la cuenta de origen.';

COMMENT ON COLUMN pp_transferencia.fecha_transaccion IS
    'Fecha de transacción de la transferencia.';

COMMENT ON COLUMN pp_transferencia.fecha_confirmacion IS
    'Fecha de confirmación de la transferencia. Es el momento en el cual se acepta la realización de la transferencia: hay algunas transferencias que se confirman al instante; otras se confirman en horas, comúnmente cuando el monto es lo suficiente grande).';

COMMENT ON COLUMN pp_transferencia.estado IS
    'Estado de la transferencia. ''C'' significa que la transferencia ha sido confirmada, ''P'' que la transferencia está en proceso a ser confirmada y ''A'' que la transferencia ha sido anulada.';

ALTER TABLE pp_transferencia ADD CONSTRAINT pp_transferencia_pk PRIMARY KEY ( id_transferencia );

ALTER TABLE pp_cliente
    ADD CONSTRAINT pp_cliente_distrito_fk FOREIGN KEY ( ubigeo )
        REFERENCES pp_distrito ( id_distrito );

ALTER TABLE pp_cuenta_bancaria
    ADD CONSTRAINT pp_cuenta_clasificacion_fk FOREIGN KEY ( id_clasificacion )
        REFERENCES pp_clasificacion_cuenta ( id_clasificacion );

ALTER TABLE pp_cuenta_bancaria
    ADD CONSTRAINT pp_cuenta_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES pp_cliente ( id_cliente );

ALTER TABLE pp_distrito
    ADD CONSTRAINT pp_distrito_provincia_fk FOREIGN KEY ( id_provincia )
        REFERENCES pp_provincia ( id_provincia );

ALTER TABLE pp_provincia
    ADD CONSTRAINT pp_provincia_region_fk FOREIGN KEY ( id_region )
        REFERENCES pp_region ( id_region );

ALTER TABLE pp_tarjeta_bancaria
    ADD CONSTRAINT pp_tarjeta_cuenta_fk FOREIGN KEY ( id_cuenta )
        REFERENCES pp_cuenta_bancaria ( id_cuenta );

ALTER TABLE pp_transferencia
    ADD CONSTRAINT pp_transferencia_cuenta_fk1 FOREIGN KEY ( cuenta_origen )
        REFERENCES pp_cuenta_bancaria ( id_cuenta );

ALTER TABLE pp_transferencia
    ADD CONSTRAINT pp_transferencia_cuenta_fk2 FOREIGN KEY ( cuenta_destino )
        REFERENCES pp_cuenta_bancaria ( id_cuenta );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             16
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
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
