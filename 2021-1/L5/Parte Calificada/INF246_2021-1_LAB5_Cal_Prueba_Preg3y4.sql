-- Archivo de pruebas

-- Estimado(a) alumno(a)
-- En caso que desee revisar que su respuesta en las Preguntas 3 y 4 estén correctas, use las instrucciones que están presentes por pregunta. Se recomienda que ejecute línea por línea para que vea el comportamiento de su base de datos.

---------------
---- Pregunta 3
---------------

INSERT INTO GE_EVENTO (ID_EVENTO, NOMBRE, TEMA, OBJETIVO, FECHA_HORA_INICIO, FECHA_HORA_FIN, UBIGEO, LATITUD, LONGITUD, DIRECCION, ID_TIPO_EVENTO, ID_SECTOR, AFORO, VIRTUAL, ENLACE, ID_RESPONSABLE, CARGO_RESPONSABLE, ESTADO) VALUES(14,'Aniversario de la Municipacidad de Andahuaylas', 'Social', 'Celebrar el aniversario de la Municipacidad', TO_DATE('2021-06-16 18:00', 'YYYY-MM-DD HH24:MI'),NULL, '030301',' -96.53046','-17.52898','-',3,3,20,'0','meet.google.com/la-wog-mqw',18,'Administrador','R');
-- Ejecutada esta línea el disparador debe crear un registro en la tabla GE_PERSONA_EVENTO con: ID_EVENTO = 14, ID_PERSONA = 18, ASISTENCIA = 'R'

INSERT INTO GE_EVENTO (ID_EVENTO, NOMBRE, TEMA, OBJETIVO, FECHA_HORA_INICIO, FECHA_HORA_FIN, UBIGEO, LATITUD, LONGITUD, DIRECCION, ID_TIPO_EVENTO, ID_SECTOR, AFORO, VIRTUAL, ENLACE, ID_RESPONSABLE, CARGO_RESPONSABLE, ESTADO) VALUES(15,'Encuentro Nacional para Conservación de la Puya Raimondii', 'Encuentro Científico', 'Proponer metodologías nuevas de preservación de flora para la Puya Raimondii', TO_DATE('2021-06-20 10:00', 'YYYY-MM-DD HH24:MI'),NULL, '020302',' -96.53046','-17.52898','-',3,3,90,'0','meet.google.com/la-wog-mqw',24,'Gerente','R');
-- Ejecutada esta línea el disparador debe crear un registro en la tabla GE_PERSONA_EVENTO con: ID_EVENTO = 15, ID_PERSONA = 24, ASISTENCIA = 'A'

---------------
---- Pregunta 4
---------------

-- Ejecutando línea por línea podrá ver cómo se modifican los valores de PUNTAJE en la tabla GE_EVENTO para los eventos con ID_EVENTO del 11 al 13.

-- En inserción
INSERT INTO GE_PERSONA_EVENTO VALUES(11, 8, 'R'); -- Puntajes: Evento 11 = 3, E12 = 0 , E13 = 0
INSERT INTO GE_PERSONA_EVENTO VALUES(12, 8, 'A'); -- Puntajes: E11 = 3, E12 = 8 , E13 = 0
INSERT INTO GE_PERSONA_EVENTO VALUES(13, 8, 'A'); -- Puntajes: E11 = 3, E12 = 8 , E13 = 8
INSERT INTO GE_PERSONA_EVENTO VALUES(13, 13, 'R'); -- Puntajes: E11 = 3, E12 = 8 , E13 = 11
INSERT INTO GE_PERSONA_EVENTO VALUES(13, 18, 'N'); -- Puntajes: E11 = 3, E12 = 8 , E13 = 11
INSERT INTO GE_PERSONA_EVENTO VALUES(13, 1, 'A'); -- Puntajes: E11 = 3, E12 = 8 , E13 = 19
INSERT INTO GE_PERSONA_EVENTO VALUES(11, 14, 'R'); -- Puntajes: E11 = 6, E12 = 8 , E13 = 19

-- En modificación
UPDATE GE_PERSONA_EVENTO SET ASISTENCIA = 'A' WHERE ID_EVENTO = 11 AND ID_PERSONA = 8; -- Puntaje E11 cambia de 6 a 11
UPDATE GE_PERSONA_EVENTO SET ASISTENCIA = 'N' WHERE ID_EVENTO = 13 AND ID_PERSONA = 1; -- Puntaje E13 cambia de 19 a 11
-- Con cambio de evento
UPDATE GE_PERSONA_EVENTO SET ID_EVENTO = 12, ASISTENCIA = 'A' WHERE ID_EVENTO = 11 AND ID_PERSONA = 14;
-- Arriba, E11 cambia de 11 a 8; E12 cambia de 8 a 16

-- Hasta este momento E11 = 8, E12 = 16, E13 = 11

-- En eliminación
DELETE FROM GE_PERSONA_EVENTO WHERE ID_EVENTO = 13 AND ID_PERSONA = 13; -- Puntaje E13 cambia de 11 a 8
DELETE FROM GE_PERSONA_EVENTO WHERE ID_EVENTO = 12 AND ID_PERSONA = 14; -- Puntaje E12 cambia de 16 a 8

-- Puntajes finales: E11 = 8, E12 = 8, E13 = 8