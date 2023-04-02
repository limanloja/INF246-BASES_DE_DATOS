-- PREGUNTA 1

CREATE TABLE sp_semestre (
    id_semestre NUMBER NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    PRIMARY KEY (id_semestre)
);

COMMENT ON COLUMN sp_semestre.id_semestre IS 'Identificador del semestre';
COMMENT ON COLUMN sp_semestre.nombre IS 'Nombre del semestre';
COMMENT ON COLUMN sp_semestre.fecha_inicio IS 'Fecha de inicio del semestre';
COMMENT ON COLUMN sp_semestre.fecha_fin IS 'Fecha de fin del semestre';

-- PREGUNTA 2

ALTER TABLE sp_usuario
ADD tipo VARCHAR2(1) NOT NULL;

ALTER TABLE sp_postulante
ADD estado VARCHAR2(1) NOT NULL;

-- PREGUNTA 3

ALTER TABLE sp_semestre
MODIFY nombre VARCHAR2(100);

ALTER TABLE sp_postulante
ADD FOREIGN KEY (id_usuario) REFERENCES sp_usuario(id_usuario);


-- PREGUNTA 4

INSERT INTO sp_usuario (id_usuario, correo, contrasenha, nombre, ap_paterno, ap_materno, tipo)
VALUES (18, 'jaimeq@gmail.com', '1234567', 'Jaime', 'Quijote', 'Salazar', 'E');

COMMENT ON COLUMN sp_usuario.tipo IS 'A = administrador P = postulante E = evaluador';

INSERT INTO sp_usuario (id_usuario, correo, contrasenha, nombre, ap_paterno, ap_materno, tipo)
VALUES (19, 'yamileb@gmail.com', '38xnsjaaq', 'Yamile', 'Barrios', 'Tejada', 'A');

COMMENT ON COLUMN sp_postulante.estado IS 'A = aprobado P = pendiente R = rechazado';

-- PREGUNTA 5

UPDATE sp_pago
SET monto = monto + 50
WHERE fecha_pago > fecha_vencimiento;

-- PREGUNTA 6

SELECT (spus.ap_paterno || ' ' || spus.ap_materno || ' ' || spus.nombre) as nombre_completo, sppa.fecha_vencimiento, sppa.fecha_pago
FROM sp_pago sppa, sp_postulante sppo, sp_usuario spus
WHERE sppo.id_usuario = spus.id_usuario
AND sppo.id_postulante = sppa.id_postulante
AND sppa.estado = 'M';

-- PREGUNTA 7

UPDATE sp_apoderado
SET contacto = '965410015',
    ocupacion = 'Ing. De Minas'
WHERE nombre_completo = 'Alejandro Magno';

UPDATE sp_apoderado
SET contacto = '980753911',
    ocupacion = 'Gerente General'
WHERE nombre_completo = 'Felicita Rios';

UPDATE sp_apoderado
SET contacto = '930555741',
    ocupacion = 'Jefa de Planta'
WHERE nombre_completo = 'Maritza Trujillano';

UPDATE sp_apoderado
SET contacto = '910178332',
    ocupacion = 'Consultor'
WHERE nombre_completo = 'Roberto Iglesias';

-- PREGUNTA 8

SELECT spap.nombre_completo, spap.contacto, sppa.cod_pago, sppa.monto, sppa.fecha_pago, sppa.estado
FROM sp_apoderado spap, sp_postulante sppo, sp_pago sppa
WHERE spap.id_postulante = sppo.id_postulante
AND sppo.id_postulante = sppa.id_postulante
AND sppo.estado = 'P';

-- cod pago: 2 y 7

UPDATE sp_pago
SET monto = 1.25*monto
WHERE cod_pago = 7 OR cod_pago = 2;

-- PREGUNTA 9

DELETE FROM sp_usuario WHERE tipo = 'E';