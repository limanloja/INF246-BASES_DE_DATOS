-- Solucionario LAB 4
-- Pregunta 1
create or replace PROCEDURE SP_OBTENER_PARTICIPANTES_RESPONSABLE (  
    ID_EVENTO number, 
    CANTIDAD  OUT number,
    COD_RESPONSABLE    OUT number,
    NOM_RESPONSABLE    OUT varchar2
) AS
BEGIN
    SELECT  count(1),p.id_persona, p.nombres || ' ' || p.apellidos 
    INTO CANTIDAD, COD_RESPONSABLE, NOM_RESPONSABLE
    FROM    GE_EVENTO E, GE_PERSONA_EVENTO pe, GE_PERSONA p 
    WHERE   e.ID_EVENTO = ID_EVENTO and pe.id_evento = e.id_evento
            and pe.asistencia = 'A' 
            and p.id_persona = e.id_responsable 
    GROUP BY p.nombres, p.apellidos;   
END;

-- Pregunta 2
CREATE OR REPLACE FUNCTION FN_OBTENER_SECTOR_TOP RETURN VARCHAR2 AS 
    sSectorTop varchar2(50);
    nCantidad number;
BEGIN
    SELECT  X.nombre INTO sSectorTop
    FROM (
        SELECT  count(*) cont, s.nombre_sector nombre        
        FROM    ge_evento e, ge_sector s 
        WHERE   e.estado = 'R' 
                and s.id_sector = e.id_sector   
        GROUP BY s.nombre_sector
        order by cont desc
    ) X
    WHERE rownum = 1;

    RETURN sSectorTop;
    
END;

-- PREGUNTA 3
CREATE OR REPLACE PROCEDURE SP_ACTUALIZA_EVENTO (
    sCadMes varchar2, 
    sEstado char
) AS
    nMes number;
        
BEGIN
    
    case sCadMes 
        when 'ENERO' THEN nMes := 1;
        when 'FEBRERO' THEN nMes := 2;
        when 'MARZO' THEN nMes := 3;
        when 'ABRIL' THEN nMes := 4;
        when 'MAYO' THEN nMes := 5;
        when 'JUNIO' THEN nMes := 6;
        when 'JULIO' THEN nMes := 7;
        when 'AGOSTO' THEN nMes := 8;
        when 'SETIEMBRE' THEN nMes := 9;
        when 'OCTUBRE' THEN nMes := 10;
        when 'NOVIEMBRE' THEN nMes := 11;
        when 'DICIEMBRE' THEN nMes := 12;
    END CASE;
   
    UPDATE  ge_evento 
    SET     virtual = sEstado, 
            fecha_actualizacion = sysdate
    WHERE   to_number(to_char(fecha_hora_inicio, 'MM')) = nMes;
    
END;

-- PREGUNTA 4
CREATE OR REPLACE PROCEDURE SP_INFO_EVENTO (
    nId_responsable number,
    nId_evento  number,     
    sNomEvento OUT varchar2,
    dFecha  OUT date,
    sNomSector  OUT varchar2,
    sNomCategoria OUT varchar2, 
    sNomResponsable OUT varchar2, 
    sEnlace     OUT varchar2
) AS
    
BEGIN
    SELECT  e.nombre, e.fecha_hora_inicio, s.nombre_sector, c.nombre_categoria, p.nombres || ' ' || p.apellidos, nvl(e.enlace, '---') 
    INTO    sNomEvento, dFecha, sNomSector, sNomCategoria, sNomResponsable, sEnlace
    FROM    ge_tipo_evento te, ge_evento e, ge_sector s, ge_categoria_evento c, ge_persona p 
    WHERE   e.id_evento = nId_evento 
            and e.id_tipo_evento = te.id_tipo_evento
            and s.id_sector = e.id_sector
            and c.id_categoria_evento = te.id_categoria_evento
            and p.id_persona = e.id_responsable;
    
END;

-- PREGUNTA 5
CREATE OR REPLACE FUNCTION FN_CADENA_DATOS_EVENTO(nId_evento number) RETURN varchar2 AS
    sCadenaDatos varchar2(500);
    sNomEvento varchar2(100);
    dFecha  date;
    sNomSector  varchar2(50);
    sNomCategoria varchar2(50);
    nCodResponsable number;
    sNomResponsable varchar2(80);
    sEnlace varchar2(200);
    sCadFecha varchar2(20);
    nCantidad number;
    nDia number;
    nMes number;
    nAnho number;
    sdia char(2);
    smes char (10);
    sAnho char(2);
    
BEGIN
    
    SP_OBTENER_PARTICIPANTES_RESPONSABLE(
        ID_EVENTO => nId_evento,        
        CANTIDAD => nCantidad,
        COD_RESPONSABLE => nCodResponsable,
        NOM_RESPONSABLE => sNomResponsable
    );
    
    SP_INFO_EVENTO(
        NID_RESPONSABLE => nCodResponsable,
        NID_EVENTO => nId_evento,
        SNOMEVENTO => sNomEvento,
        DFECHA => dFecha,
        SNOMSECTOR => sNomSector,
        SNOMCATEGORIA => sNomCategoria,
        SNOMRESPONSABLE => sNomResponsable,
        SENLACE => sEnlace
    );
    
    nDia := extract( day from dFecha );
    nMes := extract( month from dFecha );
    nAnho := extract( year from dFecha );

    case nMes
        when 1 then smes := 'enero';
        when 2 then smes := 'febrero';
        when 3 then smes := 'marzo';
        when 4 then smes := 'abril';
        when 5 then smes := 'mayo';
        when 6 then smes := 'junio';
        when 7 then smes := 'julio';
        when 8 then smes := 'agosto';
        when 9 then smes := 'setiembre';
        when 10 then smes := 'octubre';
        when 11 then smes := 'noviembre';
        else smes := 'diciembre';
    end case;
    
    sdia := to_char( nDia );
    sAnho := to_char( nAnho );
    sCadFecha := sdia || ' de ' || smes || ' de ' || sAnho;

    -- Armamos la cadena:
    sCadenaDatos := sNomEvento || '|' || sCadFecha || '|' || sNomSector || '|' || sNomCategoria || '|' || nCantidad;
    
    RETURN sCadenaDatos;
    
END;