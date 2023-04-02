-- PREGUNTA 1

SELECT spce.nombre, COUNT(*) AS cantidad_postulantes_varones
FROM sp_centro_estudios spce, sp_postulante sppo, sp_postulante_centro sppc, sp_usuario spus
WHERE spce.id_centro = sppc.id_centro
AND sppo.id_postulante = sppc.id_postulante
AND sppo.id_usuario = spus.id_usuario
AND spus.sexo = 'M'
GROUP BY spce.nombre;

-- PREGUNTA 2

SELECT spcu.banco, COUNT(*) AS cantidad_pagos, SUM(sppa.monto)
FROM sp_cuenta spcu, sp_pago sppa
WHERE spcu.id_cuenta = sppa.id_cuenta
GROUP BY spcu.banco
HAVING COUNT (*) > 3;

-- PREGUNTA 3

SELECT spdoc.nombre, COUNT(*) as cantidad_postulantes
FROM sp_documento spdoc, sp_postulante sppo, sp_documento_postulante spdp
WHERE spdoc.id_documento = spdp.id_documento
AND sppo.id_postulante = spdp.id_postulante
AND MOD(EXTRACT(year from sppo.fecha_nacimiento), 2) = 0 
GROUP BY spdoc.nombre
ORDER BY 2 DESC;

-- PREGUNTA 4

SELECT (spus.ap_paterno || ' ' || spus.ap_materno || ' ' || spus.nombre) as postulante, spco.nombre
FROM sp_postulante sppo, sp_usuario spus, sp_convocatoria spco, sp_convocatoria_postulante spcp
WHERE sppo.id_postulante = spcp.id_postulante
AND spco.id_convocatoria = spcp.id_convocatoria
AND spus.id_usuario = sppo.id_usuario
AND spco.id_convocatoria IN (   
    SELECT spco.id_convocatoria
    FROM sp_postulante sppo, sp_usuario spus, sp_convocatoria spco, sp_convocatoria_postulante spcp
    WHERE sppo.id_postulante = spcp.id_postulante
    AND spco.id_convocatoria = spcp.id_convocatoria
    AND spus.id_usuario = sppo.id_usuario
    AND (spus.ap_paterno || ' ' || spus.ap_materno || ' ' || spus.nombre) = 'Talledo Ingaroca Jorge' 
);

-- PREGUNTA 5

SELECT spus.ap_paterno, spus.ap_materno, spus.nombre, sppo.fecha_nacimiento, spap.nombre_completo AS apoderado
FROM sp_postulante sppo, sp_usuario spus, sp_apoderado spap
WHERE spus.id_usuario = sppo.id_usuario
AND sppo.id_postulante = spap.id_postulante
AND sppo.fecha_nacimiento = (
    SELECT MIN(fecha_nacimiento) 
    FROM sp_postulante
);

-- PREGUNTA 6

SELECT spus.ap_paterno, spus.ap_materno, spus.nombre, sppa.monto, spcu.banco
FROM sp_postulante sppo, sp_usuario spus, sp_pago sppa, sp_cuenta spcu
WHERE spus.id_usuario = sppo.id_usuario
AND sppo.id_postulante = sppa.id_postulante
AND sppa.id_cuenta = spcu.id_cuenta
AND sppa.monto <= (
    SELECT AVG(monto) 
    FROM sp_pago
);