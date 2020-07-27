drop database infEst;
create database infEst;
use infEst;

create table infEst.tipoDocumento (
idDocumento varchar(4) not null primary key,
siglas varchar(5) not null,
nombreTipoDocumento varchar(30) not null
);

create table infEst.Rol (
idRol varchar(4) not null,
nombreRol varchar(25) not null,
primary key (idRol)
);

create table infEst.Jornada (
idJornada int not null,
nombrejornada varchar(20) not null,
siglas varchar (04),
primary key (idJornada)
);

 create table infEst.Trimestre (
idTrimestre tinyint not null,
numeTrimestre tinyint not null,
primary key (idTrimestre)
);
 

create table infEst.vinculaciones (
idVinculacion tinyint not null primary key,
nombreVinculacion varchar(35) not null
);

create table infEst.especialidades (
idEspecialidad int not null primary key,
nombreEspecialidad varchar(25) not null
);

create table infEst.Programa (
idPrograma varchar(20) not null,
nombrePrograma varchar(100) not null,
siglasPrograma varchar(9),
DescripcionPrograma text not null,
fk_idEspecialidad int not null
);

alter table infEst.Programa add constraint fk_idEspecialidabd foreign key (fk_idEspecialidad) references infEst.especialidades(idEspecialidad) on update cascade;
alter table infEst.Programa add primary key (idPrograma);

create table infEst.Grupos (
idGrupo tinyint not null primary key,
numeroGrupo varchar(10) not null
);

create table infEst.Competencia (
idCompetencia int not null,
descripcionCompetencia text not null,
fk_idPrograma varchar(20) not null,
fk_idEspecialidades int not null
);

alter table infEst.Competencia add constraint fk_idProgrma foreign key (fk_idPrograma) references infEst.Programa(idPrograma) on update cascade;
alter table infEst.Competencia add primary key (idCompetencia);

create table infEst.resultadoAprendizaje (
idResultAprendizaje int not null,
descripcioResultAprendizaje text not null,
fk_idCompetencia int not null,
fk_idProgramas varchar(20) not null);

alter table infEst.resultadoAprendizaje add constraint fk_idCompetncia foreign key (fk_idCompetencia) references infEst.Competencia(idCompetencia) on update cascade;
alter table infEst.resultadoAprendizaje add primary key (idResultAprendizaje);

CREATE TABLE infEst.Ficha (
    numeroFicha VARCHAR(15) NOT NULL PRIMARY KEY,
    fk_idPrograma VARCHAR(30) NOT NULL,
    fk_idTrimestre tinyint NOT NULL,
    fk_idJornada INT NOT NULL,
    fk_idGrupo tinyint NOT NULL
);

alter table infEst.Ficha add constraint fk_idProgram foreign key(fk_idPrograma) references infEst.Programa (idPrograma) on update cascade;
alter table infEst.Ficha add constraint fk_idPeriod foreign key(fk_idTrimestre) references infEst.Trimestre(idTrimestre) on update cascade;
alter table infEst.Ficha add constraint fk_idJornad foreign key(fk_idJornada) references infEst.Jornada(idJornada) on update cascade;
alter table infEst.Ficha add constraint fk_idGrupos foreign key(fk_idGrupo) references infEst.Grupos(idGrupo) on update cascade;

create table infEst.Usuarios(
numeroDocumento bigint not null,
pNombre varchar(25) not null,
sNombre varchar(25),
pApellido varchar(25) not null,
sApellido varchar(25),
email varchar(100) not null,
contraseña varchar(50) not null,
fk_idDocumento varchar(4) not null,
fk_idFicha varchar(15) not null,
fk_idRol varchar(4) not null,
imagen blob
);


alter table infEst.Usuarios add constraint fk_idDocumeto foreign key (fk_idDocumento) references infEst.tipoDocumento(idDocumento) on update cascade;
alter table infEst.Usuarios add constraint fk_idRol foreign key (fk_idRol) references infEst.Rol(idRol) on update cascade;
alter table infEst.Usuarios add primary key (numeroDocumento,fk_idDocumento);

create table infEst.administrador(
fk_numeroDocumento bigint not null,
fk_idDocumento varchar(4) not null 
);

alter table infEst.administrador add constraint fk_numeroDocument foreign key (fk_numeroDocumento,fk_idDocumento) references infEst.Usuarios (numeroDocumento,fk_idDocumento) on update cascade;
alter table infEst.administrador add primary key (fk_numeroDocumento,fk_idDocumento);

create table infEst.instructores(
fk_numeroDocumento bigint not null,
fk_idDocumento varchar(4) not null,
fk_vinculaciones tinyint not null,
fk_especialidades int not null 
);

alter table infEst.instructores add constraint fk_numeroDocmento foreign key (fk_numeroDocumento,fk_idDocumento) references infEst.Usuarios(numeroDocumento,fk_idDocumento) on update cascade;
alter table infEst.instructores add constraint fk_vinculaciones foreign key (fk_vinculaciones) references infEst.vinculaciones(idVinculacion) on update cascade;
alter table infEst.instructores add constraint fk_especialidades foreign key (fk_especialidades) references infEst.especialidades(idEspecialidad) on update cascade;
alter table infEst.instructores add primary key (fk_numeroDocumento,fk_idDocumento);

create table infEst.aprendices(
fk_numeroDocumento bigint not null,
fk_idDocumento varchar(4) not null  
);
alter table infEst.aprendices add constraint fk_numeroDocumnto foreign key (fk_numeroDocumento,fk_idDocumento) references infEst.Usuarios(numeroDocumento,fk_idDocumento) on update cascade;
alter table infEst.aprendices add primary key (fk_numeroDocumento,fk_idDocumento);

create table infEst.aprendicesFichas(
fk_numeroDocumento bigint not null , 
fk_idDocumento varchar(4) not null,
fk_numeroFicha varchar(15) not null
);

alter table infEst.aprendicesFichas add constraint fk_numerDocumento foreign key (fk_numeroDocumento,fk_idDocumento) references infEst.aprendices(fk_numeroDocumento,fk_idDocumento) on update cascade;
alter table infEst.aprendicesFichas add constraint fk_idFich foreign key (fk_numeroFicha) references infEst.Ficha(numeroFicha) on update cascade;
alter table infEst.aprendicesFichas add primary key (fk_numeroDocumento,fk_idDocumento,fk_numeroFicha);

create table infEst.instructoresFichas(
fk_numeroDocumento bigint not null , 
fk_idDocumento varchar(4) not null,
fk_numeroFicha varchar(15) not null
);

alter table infEst.instructoresFichas add constraint fk_numeDocumento foreign key (fk_numeroDocumento,fk_idDocumento) references infEst.instructores(fk_numeroDocumento,fk_idDocumento) on update cascade;
alter table infEst.instructoresFichas add constraint fk_idFichas foreign key (fk_numeroFicha) references infEst.Ficha(numeroFicha) on update cascade;
alter table infEst.instructoresFichas add primary key (fk_numeroDocumento,fk_idDocumento,fk_numeroFicha);
