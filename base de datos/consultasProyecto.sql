
SELECT pNombre AS 'Primer Nombre',sNombre AS 'Segundo Nombre',pApellido AS 'Primer Apellido' ,sApellido as'Segundo Apellido',nombreVinculacion as 'Nombre Vinculación'
FROM infEst.instructores I
INNER JOIN infEst.Usuarios U ON I.fk_numeroDocumento = U.numeroDocumento
INNER JOIN infEst.vinculaciones V ON I.fk_vinculaciones = V.idVinculacion
ORDER BY pNombre,pApellido;

 -- 2-Instructores y su especialidad (Nombres, Apellidos, Tipo de especialidad) 

SELECT pNombre AS 'Primer Nombre',sNombre AS 'Segundo Nombre',pApellido AS 'Primer Apellido',sApellido as'Segundo Apellido',nombreEspecialidad as 'Nombre Especialidad'
FROM infEst.instructores I
INNER JOIN infEst.Usuarios U ON I.fk_numeroDocumento = U.numeroDocumento
INNER JOIN infEst.especialidades E ON I.fk_especialidades = E.idEspecialidad
ORDER BY pNombre,pApellido
;
 
--  4-Usuarios y rol (Nombres, Apellidos, Rol)
SELECT pNombre AS 'Primer Nombre',sNombre AS 'Segundo Nombre',pApellido AS 'Primer Apellido',sApellido as'Segundo Apellido', nombreRol as'Nombre Rol'
FROM infEst.Usuarios U
INNER JOIN infEst.Rol R  ON U.fk_idRol = R.idRol
ORDER BY pNombre,pApellido;

 -- 5-Tipo de documento, usuarios y rol (Tipo de documento, Número de identificación, Nombres, Apellidos, Rol) 
 
SELECT  pNombre AS 'Primer Nombre',sNombre AS 'Segundo Nombre',pApellido AS 'Primer Apellido',sApellido as'Segundo Apellido',nombreRol as'Nombre Rol' ,nombreTipoDocumento as'Tipo de Documento',siglas AS 'Siglas' ,numeroDocumento as'Numero de Documento'
FROM infEst.Usuarios U
INNER JOIN infEst.Rol R  ON U.fk_idRol = R.idRol
INNER JOIN infEst.tipoDocumento TD ON U.fk_idDocumento = TD.idDocumento
ORDER BY pNombre,pApellido;

 -- 6-Fichas, competencias, resultados de aprendizaje (Ficha, Competencias, Resultados de aprendizaje)
 
 
 SELECT numeroFicha AS 'Numero Ficha',nombrePrograma AS 'Programa',descripcionCompetencia AS 'Descripcion del Programa',descripcioResultAprendizaje as 'Descripcion del Resultado de Aprendizaje'
FROM infEst.resultadoAprendizaje RES
INNER JOIN infEst.Competencia COM ON RES.fk_idCompetencia = COM.idCompetencia
INNER JOIN infEst.Programa P ON COM.fk_idPrograma = P.idPrograma
INNER JOIN infEst.Ficha F ON P.idPrograma = F.fk_idPrograma
ORDER BY nombrePrograma
;

 --  7-Elegir una ficha en específico y los aprendices asociados a esa ficha (Ficha, Grupo, Nombres, Apellidos)

SELECT pNombre AS 'Primer Nombre',sNombre AS 'Segundo Nombre',pApellido AS 'Primer Apellido',sApellido as'Segundo Apellido',numeroFicha as'Numero Ficha' ,fk_idGrupo as'id grupo'
FROM infEst.aprendicesFichas AF
INNER JOIN infEst.aprendices A ON AF.fk_numeroDocumento = A.fk_numeroDocumento
INNER JOIN infEst.Ficha F ON AF.fk_numeroFicha = F.numeroFicha
INNER JOIN infEst.Usuarios U ON A.fk_numeroDocumento = U.numeroDocumento
WHERE numeroFicha LIKE'%1963872%'
ORDER BY pNombre,pApellido;
;



 --  8-Cantidad de usuarios inscritos (Número de usuarios) 
 
 SELECT count(numeroDocumento) as 'Cantidad de usuarios registrados'  FROM infEst.Usuarios;
  
  -- 9-Fichas y jornada (Ficha, Jornada) 
  
SELECT numeroFicha as 'Numero de ficha',nombrejornada as 'Nombre de jornada' 
 FROM infEst.Ficha F
INNER JOIN infEst.Jornada J ON F.fk_idJornada = J.idJornada
ORDER BY numeroFicha
;
 
-- 10-Fichas, trimestres, jornada (Ficha, Trimestres, Jornada)

SELECT numeroFicha as 'Numero de ficha',nombrejornada as 'Nombre de jornada',numeTrimestre as 'trimestre numero'
 FROM infEst.Ficha F
INNER JOIN infEst.Jornada J ON F.fk_idJornada = J.idJornada
INNER JOIN infEst.Trimestre T ON F.fk_idTrimestre = T.idTrimestre
ORDER BY numeroFicha;

-- 11-Aprendices con tipo de documento 'T.I.' (Tipo de documento, Nombres, Apellidos) 

SELECT pNombre AS 'Primer Nombre',sNombre AS 'Segundo Nombre',pApellido AS 'Primer Apellido',sApellido as'Segundo Apellido',nombreTipoDocumento as'Nombre del Documento'
 FROM infEst.Usuarios U
INNER JOIN infEst.aprendices A ON U.numeroDocumento = A.fk_numeroDocumento
INNER JOIN infEst.tipoDocumento TD ON U.fk_idDocumento = TD.idDocumento
WHERE nombreTipoDocumento LIKE'%Tarjeta de identidad%'
ORDER BY pNombre,pApellido;


-- 12 Fichas con jornada fines de semana (Ficha, Jornada, Siglas de jornada) 

SELECT numeroFicha as 'Numero de ficha',nombrejornada as 'Nombre de jornada',siglas as 'SIGLAS'
FROM infEst.Ficha F
INNER JOIN infEst.Jornada J ON F.fk_idJornada = J.idJornada
WHERE nombrejornada LIKE'%Fin de semana%'
ORDER BY numeroFicha;
;