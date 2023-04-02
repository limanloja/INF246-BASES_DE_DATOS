/******** TABLAS *************/


drop table CE_PEDIDO_DETALLE;
drop table CE_DESCUENTO;
drop table CE_PRODUCTO;
drop table CE_CATEGORIA_PRODUCTO;
drop table CE_MARCA_PRODUCTO;
drop table CE_PEDIDO;
drop table CE_DIRECCION;
drop table CE_UBIGEO;
drop table CE_CLIENTE;
drop table CE_TIPO_DOCUMENTO;



CREATE TABLE CE_TIPO_DOCUMENTO (
    id_tipo_documento   NUMBER NOT NULL,
    nombre 				VARCHAR2(50 BYTE) NOT NULL,
    estado  			CHAR(1 BYTE) NOT NULL
);
ALTER TABLE CE_TIPO_DOCUMENTO ADD CONSTRAINT tipo_documento_pk PRIMARY KEY ( id_tipo_documento );

CREATE TABLE CE_CLIENTE (
    id_cliente			NUMBER NOT NULL,
    apellido_paterno	VARCHAR2(30 BYTE) NOT NULL,
	apellido_materno	VARCHAR2(30 BYTE) NOT NULL,
	nombres				VARCHAR2(50 BYTE) NOT NULL,
    id_tipo_documento	NUMBER NOT NULL,
	numero_documento	VARCHAR2(15 BYTE) NOT NULL,
	fecha_nacimiento	DATE NOT NULL,
	numero_telefono		VARCHAR2(15 BYTE) NOT NULL,
	correo_electronico	VARCHAR2(50 BYTE) NOT NULL,
	contrasena			VARCHAR2(150 BYTE) NOT NULL,
	estado				CHAR(1 BYTE) NOT NULL
);
ALTER TABLE CE_CLIENTE ADD CONSTRAINT cliente_pk PRIMARY KEY ( id_cliente );
ALTER TABLE CE_CLIENTE
    ADD CONSTRAINT cliente_tipodocumento_fk FOREIGN KEY ( id_tipo_documento )
        REFERENCES CE_TIPO_DOCUMENTO ( id_tipo_documento );
        
-------------------
CREATE TABLE CE_UBIGEO (
    id_ubigeo			CHAR(6 BYTE) NOT NULL,
    nombre 				VARCHAR2(50 BYTE) NOT NULL,
    id_ubigeo_padre		CHAR(6 BYTE) NOT NULL
);
ALTER TABLE CE_UBIGEO ADD CONSTRAINT ubigeo_pk PRIMARY KEY ( id_ubigeo );
/*ALTER TABLE CE_UBIGEO
    ADD CONSTRAINT ubigeo_padre_fk FOREIGN KEY ( id_ubigeo_padre )
        REFERENCES CE_UBIGEO ( id_ubigeo );*/

CREATE TABLE CE_DIRECCION (
    id_direccion		NUMBER NOT NULL,
	id_cliente			NUMBER NOT NULL,
    direccion			VARCHAR2(300 BYTE) NOT NULL,
    tipo				CHAR(1 BYTE),
	id_ubigeo			CHAR(6 BYTE) NOT NULL,
	referencia			VARCHAR2(500 BYTE),
	estado				CHAR(1 BYTE) NOT NULL
);
ALTER TABLE CE_DIRECCION ADD CONSTRAINT direccion_pk PRIMARY KEY ( id_direccion );
ALTER TABLE CE_DIRECCION
    ADD CONSTRAINT direccion_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES CE_CLIENTE ( id_cliente );
ALTER TABLE CE_DIRECCION
    ADD CONSTRAINT direccion_ubigeo_fk FOREIGN KEY ( id_ubigeo )
        REFERENCES CE_UBIGEO ( id_ubigeo );
        
---------------- 
 CREATE TABLE CE_CATEGORIA_PRODUCTO (
    id_categoria		NUMBER NOT NULL,
    nombre 				VARCHAR2(50 BYTE) NOT NULL,
    estado				CHAR(1 BYTE) NOT NULL
);
ALTER TABLE CE_CATEGORIA_PRODUCTO ADD CONSTRAINT categoria_pk PRIMARY KEY ( id_categoria );

CREATE TABLE CE_MARCA_PRODUCTO (
    id_marca			NUMBER NOT NULL,
    nombre 				VARCHAR2(50 BYTE) NOT NULL,
	pais_origen			VARCHAR2(50 BYTE) NOT NULL,
    estado				CHAR(1 BYTE) NOT NULL
);
ALTER TABLE CE_MARCA_PRODUCTO ADD CONSTRAINT marca_pk PRIMARY KEY ( id_marca );

CREATE TABLE CE_PRODUCTO (
    id_producto			NUMBER NOT NULL,
    id_categoria		NUMBER NOT NULL,
	id_marca			NUMBER NOT NULL,
	precio 				NUMBER(10,2)NOT NULL,
	stock 				NUMBER NOT NULL,
	nombre				VARCHAR2(50 BYTE) NOT NULL,
	descripcion			VARCHAR2(250 BYTE) NOT NULL,
	estado				CHAR(1 BYTE) NOT NULL
);
ALTER TABLE CE_PRODUCTO ADD CONSTRAINT producto_pk PRIMARY KEY ( id_producto );
ALTER TABLE CE_PRODUCTO
    ADD CONSTRAINT producto_categoria_fk FOREIGN KEY ( id_categoria )
        REFERENCES CE_CATEGORIA_PRODUCTO ( id_categoria );
ALTER TABLE CE_PRODUCTO
    ADD CONSTRAINT producto_marca_fk FOREIGN KEY ( id_marca )
        REFERENCES CE_MARCA_PRODUCTO ( id_marca );
		
		
CREATE TABLE CE_DESCUENTO (
    id_descuento	NUMBER NOT NULL,
	id_producto		NUMBER NOT NULL,
	porcentaje		NUMBER(10,2),
	fecha_inicio	DATE NOT NULL,
	fecha_fin		DATE NOT NULL
);
ALTER TABLE CE_DESCUENTO ADD CONSTRAINT descuento_pk PRIMARY KEY ( id_descuento );
ALTER TABLE CE_DESCUENTO
    ADD CONSTRAINT descuento_producto_fk FOREIGN KEY ( id_producto )
        REFERENCES CE_PRODUCTO ( id_producto );
        
------------
 CREATE TABLE CE_PEDIDO (
    id_pedido			NUMBER NOT NULL,
	codigo				VARCHAR2(20 BYTE) NOT NULL,
    id_cliente			NUMBER NOT NULL,
	id_direccion		NUMBER NOT NULL,
	fecha_registro		TIMESTAMP NOT NULL,
	fecha_envio			TIMESTAMP NOT NULL,
	fecha_entrega		TIMESTAMP NOT NULL,
	subtotal			DECIMAL(8,2) NOT NULL,
	monto_igv			DECIMAL(8,2) NOT NULL,
	monto_total			DECIMAL(8,2) NOT NULL,
	estado				CHAR(1 BYTE) NOT NULL
);
ALTER TABLE CE_PEDIDO ADD CONSTRAINT pedido_pk PRIMARY KEY ( id_pedido );
ALTER TABLE CE_PEDIDO
    ADD CONSTRAINT pedido_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES CE_CLIENTE ( id_cliente );
ALTER TABLE CE_PEDIDO
    ADD CONSTRAINT pedido_direccion_fk FOREIGN KEY ( id_direccion )
        REFERENCES CE_DIRECCION ( id_direccion );

CREATE TABLE CE_PEDIDO_DETALLE (
    id_pedido_detalle	NUMBER NOT NULL,
    id_pedido			NUMBER NOT NULL,
	id_producto			NUMBER NOT NULL,
	numero_unidades		NUMBER NOT NULL,
	subtotal			DECIMAL(8,2) NOT NULL,
	estado				CHAR(1 BYTE) NOT NULL
);
ALTER TABLE CE_PEDIDO_DETALLE ADD CONSTRAINT pedido_detalle_pk PRIMARY KEY ( id_pedido_detalle );
ALTER TABLE CE_PEDIDO_DETALLE
    ADD CONSTRAINT pedido_detalle_pedido_fk FOREIGN KEY ( id_pedido )
        REFERENCES CE_PEDIDO ( id_pedido );
ALTER TABLE CE_PEDIDO_DETALLE
    ADD CONSTRAINT pedido_detalle_producto_fk FOREIGN KEY ( id_producto )
        REFERENCES CE_PRODUCTO ( id_producto );
        