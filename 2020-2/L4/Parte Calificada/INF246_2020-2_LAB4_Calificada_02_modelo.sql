CREATE TABLE sp_semestre (
    id_semestre       NUMBER PRIMARY KEY,
    nombre            VARCHAR2(50) NOT NULL,
    fecha_inicio      DATE NOT NULL,
    fecha_fin         DATE NOT NULL
);


CREATE TABLE sp_apoderado (
    id_apoderado      NUMBER NOT NULL,
    id_postulante     NUMBER NOT NULL,
    nombre_completo   VARCHAR2(200) NOT NULL,
    parentesco        VARCHAR2(1) NOT NULL,
    ocupacion         VARCHAR2(100),
    trabajo           VARCHAR2(100),
    contacto          VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN sp_apoderado.id_apoderado IS
    'Identificador del apoderado.';

COMMENT ON COLUMN sp_apoderado.id_postulante IS
    'Identificador del postulante asociado a este apoderado.';

COMMENT ON COLUMN sp_apoderado.nombre_completo IS
    'Nombre completo del apoderado.';

COMMENT ON COLUMN sp_apoderado.parentesco IS
    'Parentezco del apoderado:
P = Padre
M = Madre
H = Hermano(a)
F = Otro familiar
A = Apoderado';

COMMENT ON COLUMN sp_apoderado.ocupacion IS
    'Ocupación del apoderado.';

COMMENT ON COLUMN sp_apoderado.trabajo IS
    'Centro de trabajo del apoderado.';

COMMENT ON COLUMN sp_apoderado.contacto IS
    'Número de contacto del apoderado.';

ALTER TABLE sp_apoderado ADD CONSTRAINT sp_apoderado_pk PRIMARY KEY ( id_apoderado );

CREATE TABLE sp_centro_estudios (
    id_centro       NUMBER NOT NULL,
    nombre          VARCHAR2(100) NOT NULL,
    direccion       VARCHAR2(150) NOT NULL,
    tipo_centro     VARCHAR2(1) NOT NULL,
    tipo_registro   VARCHAR2(1) NOT NULL
);

COMMENT ON COLUMN sp_centro_estudios.id_centro IS
    'Identificador del centro de estudios.';

COMMENT ON COLUMN sp_centro_estudios.nombre IS
    'Nombre del centro de estudios.';

COMMENT ON COLUMN sp_centro_estudios.direccion IS
    'Dirección del centro de estudios.';

COMMENT ON COLUMN sp_centro_estudios.tipo_centro IS
    'Tipo del centro de estudios:
C = Colegio
P = Centro preuniversitario';

COMMENT ON COLUMN sp_centro_estudios.tipo_registro IS
    'Tipo de registro del centro de estudios:
A = Acreditado por la universidad
M = Ingresado manualmente';

ALTER TABLE sp_centro_estudios ADD CONSTRAINT sp_centro_estudios_pk PRIMARY KEY ( id_centro );

CREATE TABLE sp_convocatoria (
    id_convocatoria   NUMBER NOT NULL,
    nombre            VARCHAR2(150) NOT NULL,
    descripcion       VARCHAR2(1000) NOT NULL,
    id_semestre       NUMBER NOT NULL,
    fecha_inicio      DATE NOT NULL,
    fecha_fin         DATE NOT NULL,
    estado            VARCHAR2(1) NOT NULL
);

COMMENT ON COLUMN sp_convocatoria.id_convocatoria IS
    'Identificador de la convocatoria.';

COMMENT ON COLUMN sp_convocatoria.nombre IS
    'Nombre de la convocatoria.';

COMMENT ON COLUMN sp_convocatoria.descripcion IS
    'Descripción de la convocatoria.';

COMMENT ON COLUMN sp_convocatoria.id_semestre IS
    'Identificador del semestre al que pertenece la convocatoria.';

COMMENT ON COLUMN sp_convocatoria.fecha_inicio IS
    'Fecha de inicio de inscripción a la convocatoria.';

COMMENT ON COLUMN sp_convocatoria.fecha_fin IS
    'Fecha de fin de inscripción a la convocatoria.';

COMMENT ON COLUMN sp_convocatoria.estado IS
    'Estado actual de la convocatoria:
A = activo
C = cerrado';

ALTER TABLE sp_convocatoria ADD CONSTRAINT sp_convocatoria_pk PRIMARY KEY ( id_convocatoria );

CREATE TABLE sp_convocatoria_modalidad (
    id_convocatoria   NUMBER NOT NULL,
    id_modalidad      NUMBER NOT NULL
);

COMMENT ON COLUMN sp_convocatoria_modalidad.id_convocatoria IS
    'Identificador de la convocatoria.';

COMMENT ON COLUMN sp_convocatoria_modalidad.id_modalidad IS
    'Identificador de la modalidad.';

ALTER TABLE sp_convocatoria_modalidad ADD CONSTRAINT sp_conmod_pk PRIMARY KEY ( id_convocatoria,
                                                                                id_modalidad );

CREATE TABLE sp_convocatoria_postulante (
    id_convocatoria   NUMBER NOT NULL,
    id_postulante     NUMBER NOT NULL
);

COMMENT ON COLUMN sp_convocatoria_postulante.id_convocatoria IS
    'Identificador de la convocatoria.';

COMMENT ON COLUMN sp_convocatoria_postulante.id_postulante IS
    'Identificador del postulante.';

ALTER TABLE sp_convocatoria_postulante ADD CONSTRAINT sp_conpos_pk PRIMARY KEY ( id_convocatoria,
                                                                                 id_postulante );

CREATE TABLE sp_cuenta (
    id_cuenta           NUMBER NOT NULL,
    banco               VARCHAR2(100) NOT NULL,
    tipo_cuenta         VARCHAR2(1) NOT NULL,
    nro_cuenta          VARCHAR2(50) NOT NULL,
    nro_interbancario   VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN sp_cuenta.id_cuenta IS
    'Identificador de la cuenta bancaria.';

COMMENT ON COLUMN sp_cuenta.banco IS
    'Nombre del banco al que pertenece la cuenta.';

COMMENT ON COLUMN sp_cuenta.tipo_cuenta IS
    'Tipo de cuenta bancaria:
A = Cuenta de ahorros
C = Cuenta corriente';

COMMENT ON COLUMN sp_cuenta.nro_cuenta IS
    'Número de cuenta para transferencias dentro del mismo banco.';

COMMENT ON COLUMN sp_cuenta.nro_interbancario IS
    'Número de cuenta para transferencias interbancarias.';

ALTER TABLE sp_cuenta ADD CONSTRAINT sp_cuenta_pk PRIMARY KEY ( id_cuenta );

CREATE TABLE sp_documento (
    id_documento   NUMBER NOT NULL,
    nombre         VARCHAR2(100) NOT NULL,
    descripcion    VARCHAR2(1000) NOT NULL,
    id_modalidad   NUMBER NOT NULL
);

COMMENT ON COLUMN sp_documento.id_documento IS
    'Identificador del documento requerido.';

COMMENT ON COLUMN sp_documento.nombre IS
    'Nombre del documento requerido.';

COMMENT ON COLUMN sp_documento.descripcion IS
    'Descripción del documento requerido.';

COMMENT ON COLUMN sp_documento.id_modalidad IS
    'Identificador de la modalidad del documento requerido.';

ALTER TABLE sp_documento ADD CONSTRAINT sp_documento_pk PRIMARY KEY ( id_documento );

CREATE TABLE sp_documento_postulante (
    id_documento    NUMBER NOT NULL,
    id_postulante   NUMBER NOT NULL,
    ruta_archivo    VARCHAR2(200) NOT NULL
);

COMMENT ON COLUMN sp_documento_postulante.id_documento IS
    'Identificador del documento requerido.';

COMMENT ON COLUMN sp_documento_postulante.id_postulante IS
    'Identificador del postulante.';

ALTER TABLE sp_documento_postulante ADD CONSTRAINT sp_docpos_pk PRIMARY KEY ( id_documento,
                                                                              id_postulante );

CREATE TABLE sp_modalidad (
    id_modalidad   NUMBER NOT NULL,
    nombre         VARCHAR2(50) NOT NULL,
    descripcion    VARCHAR2(1000) NOT NULL
);

COMMENT ON TABLE sp_modalidad IS
    'Esta tabla guardará los documentos requeridos para que el postulante termine su inscripción.';

COMMENT ON COLUMN sp_modalidad.id_modalidad IS
    'Identificador de la modalidad.';

COMMENT ON COLUMN sp_modalidad.nombre IS
    'Nombre de la modalidad.';

COMMENT ON COLUMN sp_modalidad.descripcion IS
    'Descripción de la modalidad.';

ALTER TABLE sp_modalidad ADD CONSTRAINT sp_modalidad_pk PRIMARY KEY ( id_modalidad );

CREATE TABLE sp_pago (
    cod_pago            VARCHAR2(50) NOT NULL,
    id_postulante       NUMBER NOT NULL,
    id_cuenta           NUMBER NOT NULL,
    monto               NUMBER(10, 2) NOT NULL,
    fecha_vencimiento   DATE NOT NULL,
    fecha_pago          DATE,
    concepto            VARCHAR2(1) NOT NULL,
    estado              VARCHAR2(1) NOT NULL
);

COMMENT ON COLUMN sp_pago.cod_pago IS
    'Identificador del pago.';

COMMENT ON COLUMN sp_pago.id_postulante IS
    'Identificador del postulante que realizó el pago.';

COMMENT ON COLUMN sp_pago.id_cuenta IS
    'Identificador de la cuenta bancaria a la que fue depositado el pago.';

COMMENT ON COLUMN sp_pago.monto IS
    'Monto del pago, en soles.';

COMMENT ON COLUMN sp_pago.fecha_vencimiento IS
    'Fecha de vencimiento del pago.';

COMMENT ON COLUMN sp_pago.fecha_pago IS
    'Fecha de realización del pago.';

COMMENT ON COLUMN sp_pago.concepto IS
    'Concepto del pago:
D = Derecho de inscripción';

COMMENT ON COLUMN sp_pago.estado IS
    'Estado del pago:
P = Pendiente
R = Realizado
M = Moroso';

ALTER TABLE sp_pago ADD CONSTRAINT sp_pago_pk PRIMARY KEY ( cod_pago );

CREATE TABLE sp_postulante (
    id_postulante      NUMBER NOT NULL,
    id_usuario         NUMBER NOT NULL,
    id_modalidad       NUMBER NOT NULL,
    tipo_documento     VARCHAR2(1) NOT NULL,
    nro_documento      VARCHAR2(50) NOT NULL,
    fecha_nacimiento   DATE NOT NULL,
    telefono           VARCHAR2(50) NOT NULL,
    domicilio          VARCHAR2(100) NOT NULL,
    estado             VARCHAR2(1)
);

COMMENT ON TABLE sp_postulante IS
    'Esta tabla guardará los datos del postulante a la universidad.';

COMMENT ON COLUMN sp_postulante.id_postulante IS
    'Identificador del postulante.';

COMMENT ON COLUMN sp_postulante.id_usuario IS
    'Identificador del usuario asociado al postulante.';

COMMENT ON COLUMN sp_postulante.id_modalidad IS
    'Identificador de la modalidad asociada al postulante.';

COMMENT ON COLUMN sp_postulante.tipo_documento IS
    'Tipo del documento:
D = DNI
C = Carné de extranjería';

COMMENT ON COLUMN sp_postulante.nro_documento IS
    'Número del documento del postulante.';

COMMENT ON COLUMN sp_postulante.fecha_nacimiento IS
    'Fecha de nacimiento del postulante';

COMMENT ON COLUMN sp_postulante.telefono IS
    'Teléfono fijo o celular del postulante.';

COMMENT ON COLUMN sp_postulante.domicilio IS
    'Domicilio del postulante.';

CREATE UNIQUE INDEX sp_postulante_sp_usuario_idx ON
    sp_postulante (
        id_usuario
    ASC );

ALTER TABLE sp_postulante ADD CONSTRAINT sp_postulante_pk PRIMARY KEY ( id_postulante );

CREATE TABLE sp_postulante_centro (
    id_postulante   NUMBER NOT NULL,
    id_centro       NUMBER NOT NULL,
    fecha_inicio    DATE NOT NULL,
    fecha_fin       DATE NOT NULL
);

COMMENT ON COLUMN sp_postulante_centro.id_postulante IS
    'Identificador del postulante.';

COMMENT ON COLUMN sp_postulante_centro.id_centro IS
    'Identificador del centro de estudios.';

COMMENT ON COLUMN sp_postulante_centro.fecha_inicio IS
    'Fecha de inicio de estudios del postulante en el colegio.';

COMMENT ON COLUMN sp_postulante_centro.fecha_fin IS
    'Fecha de fin de estudios del postulante en el colegio.';

ALTER TABLE sp_postulante_centro ADD CONSTRAINT sp_poscen_pk PRIMARY KEY ( id_postulante,
                                                                           id_centro );
							   																	   
CREATE TABLE sp_usuario (
    id_usuario    NUMBER NOT NULL,
    correo        VARCHAR2(150) NOT NULL,
    contrasenha   VARCHAR2(150) NOT NULL,
    nombre        VARCHAR2(100) NOT NULL,
    ap_paterno    VARCHAR2(50) NOT NULL,
    ap_materno    VARCHAR2(50) NOT NULL,
    tipo          VARCHAR2(1) NOT NULL,
    sexo          VARCHAR2(1) NOT NULL
);

COMMENT ON COLUMN sp_usuario.id_usuario IS
    'Identificador del usuario.';

COMMENT ON COLUMN sp_usuario.correo IS
    'Correo electrónico del usuario.';

COMMENT ON COLUMN sp_usuario.contrasenha IS
    'Contraseña del usuario.';

COMMENT ON COLUMN sp_usuario.nombre IS
    'Nombres del postulante.';

COMMENT ON COLUMN sp_usuario.ap_paterno IS
    'Apellido paterno del postulante.';

COMMENT ON COLUMN sp_usuario.ap_materno IS
    'Apellido materno del postulante.';
	
ALTER TABLE sp_usuario ADD CONSTRAINT sp_usuario_pk PRIMARY KEY ( id_usuario );

ALTER TABLE sp_convocatoria
    ADD CONSTRAINT sp_convocatoria_sp_semestre_fk FOREIGN KEY ( id_semestre )
        REFERENCES sp_semestre ( id_semestre );

ALTER TABLE sp_apoderado
    ADD CONSTRAINT sp_apoderado_sp_postulante_fk FOREIGN KEY ( id_postulante )
        REFERENCES sp_postulante ( id_postulante );

ALTER TABLE sp_convocatoria_modalidad
    ADD CONSTRAINT sp_conmod_sp_convocatoria_fk FOREIGN KEY ( id_convocatoria )
        REFERENCES sp_convocatoria ( id_convocatoria );

ALTER TABLE sp_convocatoria_modalidad
    ADD CONSTRAINT sp_conmod_sp_modalidad_fk FOREIGN KEY ( id_modalidad )
        REFERENCES sp_modalidad ( id_modalidad );

ALTER TABLE sp_convocatoria_postulante
    ADD CONSTRAINT sp_conpos_sp_convocatoria_fk FOREIGN KEY ( id_convocatoria )
        REFERENCES sp_convocatoria ( id_convocatoria );

ALTER TABLE sp_convocatoria_postulante
    ADD CONSTRAINT sp_conpos_sp_postulante_fk FOREIGN KEY ( id_postulante )
        REFERENCES sp_postulante ( id_postulante );


ALTER TABLE sp_documento_postulante
    ADD CONSTRAINT sp_docpos_sp_documento_fk FOREIGN KEY ( id_documento )
        REFERENCES sp_documento ( id_documento );

ALTER TABLE sp_documento_postulante
    ADD CONSTRAINT sp_docpos_sp_postulante_fk FOREIGN KEY ( id_postulante )
        REFERENCES sp_postulante ( id_postulante );

ALTER TABLE sp_documento
    ADD CONSTRAINT sp_documento_sp_modalidad_fk FOREIGN KEY ( id_modalidad )
        REFERENCES sp_modalidad ( id_modalidad );

ALTER TABLE sp_pago
    ADD CONSTRAINT sp_pago_sp_banco_fk FOREIGN KEY ( id_cuenta )
        REFERENCES sp_cuenta ( id_cuenta );

ALTER TABLE sp_pago
    ADD CONSTRAINT sp_pago_sp_postulante_fk FOREIGN KEY ( id_postulante )
        REFERENCES sp_postulante ( id_postulante );

ALTER TABLE sp_postulante_centro
    ADD CONSTRAINT sp_poscen_sp_colegio_fk FOREIGN KEY ( id_centro )
        REFERENCES sp_centro_estudios ( id_centro );

ALTER TABLE sp_postulante_centro
    ADD CONSTRAINT sp_poscen_sp_postulante_fk FOREIGN KEY ( id_postulante )
        REFERENCES sp_postulante ( id_postulante );

ALTER TABLE sp_postulante
    ADD CONSTRAINT sp_postulante_sp_modalidad_fk FOREIGN KEY ( id_modalidad )
        REFERENCES sp_modalidad ( id_modalidad );

ALTER TABLE sp_postulante
    ADD CONSTRAINT sp_postulante_sp_usuario_fk FOREIGN KEY ( id_usuario )
        REFERENCES sp_usuario ( id_usuario );
