CREATE DATABASE LabTI2;
USE LabTI2;

/* CATALOGOS DATABASE */
CREATE TABLE Tesis_estado(
    Id INT AUTO_INCREMENT, 
    Estado varchar(255) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Proyecto_estado (
    Id INT AUTO_INCREMENT,
    Estado VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Cuerpo_acad_estado (
    Id INT AUTO_INCREMENT, 
    Estado VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Form_acad_grado(
    Id INT AUTO_INCREMENT, 
    Grado VARCHAR(255) NOT NULL,
    Abreviarura varchar(255) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Semestre(
    Id INT AUTO_INCREMENT,
    Semestre VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Lista_ues(
    Id INT AUTO_INCREMENT, 
    Universidad VARCHAR(255) NOT NULL, 
    Hipervinculo varchar(255) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Lista_carrera(
    Id INT AUTO_INCREMENT,
    Nombre_carrera VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Lista_emp_ues(
    Id INT AUTO_INCREMENT,
    Nombre_emp_ins VARCHAR(255) NOT NULL,
    Hipervinculo VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
);

/* TABLAS LabTI */

CREATE TABLE Usuario(
    Id INT AUTO_INCREMENT,
    Nombre_usuario VARCHAR(255) NOT NULL,
    Contrasena VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Administrador(
    Id_usuario INT,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
);

CREATE TABLE Multimedia (
    Id INT AUTO_INCREMENT, 
    Titulo VARCHAR(255) NOT NULL, 
    Descripcion VARCHAR(255) NOT NULL, 
    Nombre_archivo VARCHAR(255) NOT NULL, 
    Fecha DATETIME,
    PRIMARY KEY(Id)
);


CREATE TABLE Video(
    Id_multimedia INT, 
    PRIMARY KEY(Id_multimedia),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id)
);

CREATE TABLE Imagen(
    Id_multimedia INT,
    PRIMARY KEY(Id_multimedia),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id)
);

CREATE TABLE Informacion_personal(
    Id INT AUTO_INCREMENT,    
    Nombre VARCHAR(255) NOT NULL, 
    Apellido VARCHAR(255) NOT NULL, 
    Fotografia int, 
    Telefono VARCHAR(255) NOT NULL, 
    Email VARCHAR(255) NOT NULL, 
    Id_usuario INT,
    PRIMARY KEY(Id),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
    FOREIGN key(fotografia) REFERENCES Multimedia(Id)
);

CREATE TABLE Evento_historico(
    Id INT AUTO_INCREMENT,
    Nombre_evento VARCHAR(255) NOT NULL, 
    Descripcion MEDIUMTEXT NOT NULL,
    Fecha DATE,
    PRIMARY KEY(Id)
);

CREATE TABLE Noticia(
    Id INT AUTO_INCREMENT,
    Titulo VARCHAR(255) NOT NULL,
    Fecha DATE, 
    Entrada TEXT, 
    Cuerpo MEDIUMTEXT NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Eventos(
    Id INT AUTO_INCREMENT, 
    Nombre_evento VARCHAR(255) NOT NULL,
    Descripcion MEDIUMTEXT NOT NULL, 
    Telefono VARCHAR(255) NOT NULL, 
    Email VARCHAR(255) NOT NULL, 
    Hipervinculo VARCHAR(255) NOT NULL,
    Fecha DATE,
    PRIMARY KEY(Id)
);

CREATE TABLE Conferencia_vts(
    Id_eventos INT,
    PRIMARY KEY(Id_eventos),
    FOREIGN KEY(Id_eventos) REFERENCES Eventos(Id)
);

CREATE TABLE Congreso(
    Id_eventos INT,
    PRIMARY KEY(Id_eventos),
    FOREIGN key(Id_eventos) REFERENCES Eventos(Id)
);

CREATE TABLE Evento(
    Id_eventos INT,
    PRIMARY KEY(Id_eventos),
    FOREIGN key(Id_eventos) REFERENCES Eventos(Id)
);

CREATE TABLE Multimedia_Administrador(
    Id_multimedia  INT,
    Id_administrador INT, 
    Fecha DATETIME,
    PRIMARY KEY(Id_multimedia, Id_administrador),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id),
    FOREIGN KEY(Id_administrador) REFERENCES Administrador(Id_usuario)
);

CREATE TABLE Administrador_Evento_historico(
    Id_evento_historico INT,
    Id_administrador INT,
    Fecha DATETIME,
    PRIMARY KEY(Id_evento_historico, Id_administrador),
    FOREIGN KEY(Id_evento_historico) REFERENCES Evento_historico(Id),
    FOREIGN KEY(Id_administrador) REFERENCES Administrador(Id_usuario)
);

CREATE TABLE Administrador_Noticia(
    Id_noticia INT, 
    Id_administrador INT,
    PRIMARY KEY(Id_noticia, Id_administrador),
    FOREIGN KEY(Id_noticia) REFERENCES Noticia(Id),
    FOREIGN KEY(Id_administrador) REFERENCES Administrador(Id_usuario)
);

CREATE TABLE Administrador_Eventos(
    Id_administrador INT,
    Id_eventos INT,
    PRIMARY KEY(Id_administrador, Id_eventos),
    FOREIGN KEY(Id_administrador) REFERENCES Administrador(Id_usuario),
    FOREIGN KEY(Id_eventos) REFERENCES Eventos(Id)
);

CREATE TABLE Multimedia_Evento_historico(
    Id_multimedia INT,
    Id_evento_historico INT,
    Fecha DATETIME,
    PRIMARY KEY(Id_multimedia, Id_evento_historico),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id),
    FOREIGN KEY(Id_evento_historico) REFERENCES Evento_historico(Id)
);

CREATE TABLE Multimedia_Noticia(
    Id_multimedia INT, 
    Id_noticia INT,
    Fecha DATETIME,
    PRIMARY KEY(Id_multimedia, Id_noticia),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id),
    FOREIGN KEY(Id_noticia) REFERENCES Noticia(Id)
);

CREATE TABLE Multimedia_Eventos(
    Id_multimedia INT,
    Id_eventos INT,
    Fecha DATETIME,
    PRIMARY KEY(Id_multimedia, Id_eventos),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id),
    FOREIGN KEY(Id_eventos) REFERENCES Eventos(Id)
);

CREATE TABLE Profesor_investigador(
    Id_usuario INT, 
    Grado_actual INT,  
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
    FOREIGN KEY(Grado_actual) REFERENCES Form_acad_grado(Id)
);

CREATE Table Multimedia_Profesor_investigador(
    Id_multimedia INT,
    Id_profesor_investigador INT,
    PRIMARY KEY(Id_multimedia, Id_profesor_investigador),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id),
    FOREIGN KEY(Id_profesor_investigador) REFERENCES Profesor_investigador(Id_usuario)
);


CREATE TABLE Laboratorio(
    Id INT AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,  
    Telefono varchar(255) NOT NULL, 
    Direccion varchar(255) NOT NULL, 
    Mision TEXT, 
    Vision TEXT,
    Descripcion TEXT,
    PRIMARY KEY(Id)
);


CREATE TABLE Area(
    Id INT AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL, 
    Acronimo VARCHAR(255) NOT NULL, 
    Objetivo TEXT, 
    Id_laboratorio INT, 
    Id_pi_encargado INT,
    PRIMARY KEY(Id),
    FOREIGN KEY(Id_laboratorio) REFERENCES Laboratorio(Id),
    FOREIGN KEY(Id_pi_encargado) REFERENCES Profesor_investigador(Id_usuario)
);

CREATE TABLE Profesor_investigador_area(
    Id_profesor_investigador INT,
    Id_area_laboratorio INT,
    PRIMARY KEY (Id_profesor_investigador, Id_area_laboratorio),
    FOREIGN KEY(Id_profesor_investigador) REFERENCES Profesor_investigador(Id_usuario),
    FOREIGN KEY(Id_area_laboratorio) REFERENCES Area(Id)
);

CREATE TABLE Proyecto(
    Id INT AUTO_INCREMENT, 
    Estatus INT,
    Nombre_proyecto VARCHAR(255) NOT NULL,
    Problematica MEDIUMTEXT NOT NULL, 
    Solucion_propuesta MEDIUMTEXT NOT NULL, 
    Objetivos MEDIUMTEXT NOT NULL, 
    Resultados MEDIUMTEXT NOT NULL, 
    Informe_tecnico VARCHAR(255) NOT NULL,
    Id_profesor_invg INT,
    PRIMARY KEY (Id),
    FOREIGN KEY(Id_profesor_invg) REFERENCES Profesor_investigador(Id_usuario),
    FOREIGN KEY(Estatus) REFERENCES Proyecto_estado(Id)
);

CREATE TABLE Multimedia_Proyecto(
    Id_multimedia INT,
    Id_proyecto INT,
    PRIMARY KEY (Id_multimedia, Id_proyecto),
    FOREIGN KEY (Id_multimedia) REFERENCES Multimedia(Id),
    FOREIGN KEY (Id_proyecto) REFERENCES Proyecto(Id)
);

CREATE TABLE Cuerpo_academico(
    Id INT AUTO_INCREMENT, 
    Nombre VARCHAR(255) NOT NULL,
    PRODEP VARCHAR(255) NOT NULL, 
    Estado INT, 
    PRIMARY KEY(Id),
    FOREIGN KEY(Estado) REFERENCES Cuerpo_acad_estado(Id)
);

CREATE TABLE Lineas_investigacion(
    Id INT AUTO_INCREMENT, 
    Nombre VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Profesor_invg_Cuerpo_acad(
    Id_usuario INT,
    Id_cuerpo_acad INT,
    PRIMARY KEY(Id_usuario, Id_cuerpo_acad),
    FOREIGN KEY(Id_usuario) REFERENCES Profesor_investigador(Id_usuario),
    FOREIGN KEY(Id_cuerpo_acad) REFERENCES Cuerpo_academico(Id)
);

CREATE TABLE Profesor_invg_Lineas_invg(
    Id_usuario INT,
    Id_lineas_invg INT,
    PRIMARY KEY(Id_usuario, Id_lineas_invg),
    FOREIGN KEY(Id_usuario) REFERENCES Profesor_investigador(Id_usuario)
);

CREATE TABLE Cuerpo_acad_Lineas_invg(
    Id_cuerpo_acad INT, 
    Id_lineas_invg INT,
    PRIMARY KEY(Id_cuerpo_acad, Id_lineas_invg),
    FOREIGN KEY (Id_cuerpo_acad) REFERENCES Cuerpo_academico(Id),
    FOREIGN KEY(Id_lineas_invg) REFERENCES Lineas_investigacion(Id)
);

CREATE TABLE Alumno_estancia_profesional(
    Id_usuario INT, 
    Semestre INT, 
    Carrera INT,  
    Institucion_procedencia INT, 
    Id_profesor_invg INT, 
    Id_proyecto INT,
    primary key(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
    FOREIGN KEY(Semestre) REFERENCES Semestre(Id),
    FOREIGN KEY(Carrera) REFERENCES Lista_carrera(Id),
    FOREIGN KEY(Institucion_procedencia) REFERENCES Lista_ues(Id),
    FOREIGN KEY(Id_profesor_invg) REFERENCES Profesor_investigador(Id_usuario),
    FOREIGN KEY(Id_proyecto) REFERENCES Proyecto(Id)
    
);

CREATE TABLE Alumno_servicio_social(
    Id_usuario INT, 
    Semestre INT, 
    Carrera INT,  
    Institucion_procedencia INT, 
    Id_profesor_invg INT, 
    Id_proyecto INT,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
    FOREIGN KEY(Semestre) REFERENCES Semestre(Id),
    FOREIGN KEY(Carrera) REFERENCES Lista_carrera(Id),
    FOREIGN KEY(Institucion_procedencia) REFERENCES Lista_ues(Id),
    FOREIGN KEY(Id_profesor_invg) REFERENCES Profesor_investigador(Id_usuario),
    FOREIGN KEY(Id_proyecto) REFERENCES Proyecto(Id)
);

CREATE TABLE Colaborador_externo(
    Id_usuario INT,
    Grado_actual INT,
    Institucion_procedencia INT,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
    FOREIGN KEY(Grado_actual) REFERENCES Form_acad_grado(Id),
    FOREIGN KEY(Institucion_procedencia) REFERENCES Lista_emp_ues(Id)
);

CREATE TABLE Colaborador_proyecto(
    Id_colaborador_externo INT,
    Id_proyecto INT,
    PRIMARY KEY(Id_colaborador_externo, Id_proyecto),
    FOREIGN KEY(Id_colaborador_externo) REFERENCES Colaborador_externo(Id_usuario),
    FOREIGN KEY(Id_proyecto) REFERENCES Proyecto(Id)
);

CREATE TABLE Colaborador_profesor_investigador(
    Id_colaborador_externo INT,
    Id_profesor_investigador INT,
    PRIMARY KEY(Id_colaborador_externo, Id_profesor_investigador),
    FOREIGN KEY(Id_colaborador_externo) REFERENCES Colaborador_externo(Id_usuario),
    FOREIGN KEY(Id_profesor_investigador) REFERENCES Profesor_investigador(Id_usuario)
);

CREATE TABLE Alumno_tesista(
    Id_usuario INT, 
    Carrera INT, 
    Tesis VARCHAR(255) NOT NULL, 
    Estado INT, 
    Id_profesor_invg INT,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
    FOREIGN KEY(Carrera) REFERENCES Lista_carrera(Id),
    FOREIGN KEY(Estado) REFERENCES Tesis_estado(Id),
    FOREIGN KEY(Id_profesor_invg) REFERENCES Profesor_investigador(Id_usuario)
);

CREATE TABLE Alumni(
    Id_usuario INT,
    Grado_actual INT,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES  Usuario(Id),
    FOREIGN key(Grado_actual) REFERENCES Form_acad_grado(Id)
);

CREATE TABLE Publicacion(
    Id INT AUTO_INCREMENT, 
    Nombre VARCHAR(255) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE Libro(
    Id_publicacion  INT, 
    ISBN VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id_publicacion),
    FOREIGN KEY(Id_publicacion) REFERENCES Publicacion(Id)
);

CREATE TABLE Cap_libro(
    Id_publicacion INT, 
    ISBN VARCHAR(255) NOT NULL, 
    DOI VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id_publicacion),
    FOREIGN KEY(Id_publicacion) REFERENCES Publicacion(Id)
);

CREATE TABLE Articulo(
    Id_publicacion INT, 
    ISNN VARCHAR(255) NOT NULL, 
    No_pag INT,
    PRIMARY KEY(Id_publicacion),
    FOREIGN KEY(Id_publicacion) REFERENCES Publicacion(Id)
);

CREATE TABLE Coautor(
    Id INT AUTO_INCREMENT, 
    Nombre VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Publicacion_Coautor(
    Id_publicacion INT, 
    Id_coautor INT,
    PRIMARY KEY(Id_publicacion, Id_coautor),
    FOREIGN KEY(Id_publicacion) REFERENCES Publicacion(Id),
    FOREIGN KEY(Id_coautor) REFERENCES Coautor(Id)
);

CREATE TABLE Usuario_Publicacion(
    Id_usuario INT,
    Id_publicacion INT,
    PRIMARY KEY(Id_usuario, Id_publicacion),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
    FOREIGN KEY(Id_publicacion) REFERENCES Publicacion(Id)
);

CREATE TABLE Posision_trabajo(
    Id INT AUTO_INCREMENT,
    Puesto VARCHAR(255) NOT NULL, 
    Institucion VARCHAR(255) NOT NULL, 
    Id_usuario INT,
    PRIMARY KEY(Id),
    FOREIGN KEY(Id_usuario) REFERENCES  Usuario(Id)
);

CREATE TABLE Experiencia_laboral(
    Id INT AUTO_INCREMENT, 
    Puesto VARCHAR(255) NOT NULL,
    Institucion VARCHAR(255) NOT NULL, 
    Fecha_inicio DATE NOT NULL, 
    Fecha_fin DATE NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Experiencia_lab_Usuario(
    Id_experiencia_laboral INT , 
    Id_usuario INT,
    PRIMARY KEY(Id_experiencia_laboral, Id_usuario),
    FOREIGN KEY(Id_experiencia_laboral) REFERENCES Experiencia_laboral(Id),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
);

CREATE TABLE Formacion_academica(
    Id INT AUTO_INCREMENT, 
    Grado VARCHAR(255) NOT NULL, 
    Area_especialidad VARCHAR(255) NOT NULL, 
    Institucion INT,
    Fecha_inicio DATE NOT NULL, 
    Fecha_fin DATE NOT NULL,
    PRIMARY KEY(Id), 
    FOREIGN KEY(Institucion) REFERENCES Lista_ues(Id)
);

CREATE TABLE Formacion_acad_Usuario(
    Id_formacion_academica INT,
    Id_usuario INT,
    PRIMARY KEY(Id_formacion_academica, Id_usuario),
    FOREIGN KEY(Id_formacion_academica) REFERENCES Formacion_academica(Id),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
);

CREATE TABLE Distincion_academica(
    Id INT AUTO_INCREMENT, 
    Distincion VARCHAR(255) NOT NULL, 
    Institucion VARCHAR(255) NOT NULL, 
    Fecha_inicio DATE, 
    Fecha_fin DATE,
    PRIMARY KEY(Id)
);

CREATE TABLE Distincion_academica_Usuario(
    Id_formacion_academica INT, 
    Id_usuario INT,
    PRIMARY KEY(Id_formacion_academica, Id_usuario),
    FOREIGN KEY(Id_formacion_academica) REFERENCES Formacion_academica(Id),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
);

CREATE TABLE Conferencia(
    Id INT AUTO_INCREMENT, 
    Titulo VARCHAR(255) NOT NULL, 
    Evento VARCHAR(255) NOT NULL, 
    Lugar VARCHAR(255) NOT NULL, 
    Fecha DATE NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE Conferencia_Usuario(
    Id_conferencia INT,
    Id_usuario INT,
    PRIMARY KEY(Id_conferencia, Id_usuario),
    FOREIGN KEY(Id_conferencia) REFERENCES Conferencia(Id),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
);
/* Termina */