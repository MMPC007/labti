CREATE DATABASE LabTI
USE DATABASE LabTI

/* CATALOGOS DATABASE */
CREATE TABLE Tesis_estado(
    Id INT, 
    Estado varchar(255) NOT NULL
    PRIMARY KEY (Id)
);

CREATE TABLE Proyecto_estado (
    Id INT,
    Estado VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Cuerpo_acad_estado (
    Id INT, 
    Estado VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Form_acad_grado(
    Id INT, 
    Grado VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Semestre(
    Id INT,
    Semestre VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Lista_ues(
    Id INT, 
    Universidad VARCHAR(255) NOT NULL, 
    Hipervínculo varchar(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Lista_carrera(
    Id INT,
    Nombre_carrera VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Lista_emp(
    Id INT,
    Nombre_emp_ins VARCHAR(255) NOT NULL,
    Hipervínculo VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

/* TABLAS LabTI */

CREATE TABLE Usuario(
    Id INT,
    Nombre_usuario VARCHAR(255) NOT NULL,
    Contraseña VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Información_personal(
    Id INT, 
    Nombre VARCHAR(255) NOT NULL, 
    Apellido VARCHAR(255) NOT NULL, 
    Fotografía VARCHAR(255) NOT NULL, 
    Teléfono VARCHAR(255) NOT NULL, 
    Email VARCHAR(255) NOT NULL, 
    Id_usuario INT,
    PRIMARY KEY(Id),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
)

CREATE TABLE Administrador(
    Id_usuario INT,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
)

CREATE TABLE Multimedia (
    Id INT, 
    Titulo VARCHAR(255) NOT NULL, 
    Descripción VARCHAR(255) NOT NULL, 
    Nombre_archivo VARCHAR(255) NOT NULL, 
    Fecha DATETIME,
    PRIMARY KEY(Id)
)
CREATE TABLE Video(
    Id_multimedia INT, 
    PRIMARY KEY(Id),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id)
)

CREATE TABLE Imagen(
    Id_multimedia INT,
    PRIMARY KEY(Id),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id)
)

CREATE TABLE Evento_histórico(
    Id INT,
    Nombre_evento VARCHAR(255) NOT NULL, 
    Descripción MEDIUMTEXT NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Noticia(
    Id INT,
    Titulo VARCHAR(255) NOT NULL,
    Fecha DATE, 
    Entrada TEXT, 
    Cuerpo MEDIUMTEXT NOT NULL,
    PRIMARY KEY(Id)
)
CREATE TABLE Eventos(
    Id INT, 
    Descripción MEDIUMTEXT NOT NULL, 
    Teléfono VARCHAR(255) NOT NULL, 
    Email VARCHAR(255) NOT NULL, 
    Hipervínculo VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)
CREATE TABLE Conferencia(
    Id_eventos INT,
    PRIMARY KEY(Id_eventos),
    FOREIGN KEY(Id_eventos) REFERENCES Eventos(Id)
)
CREATE TABLE Congreso(
    Id_eventos INT,
    PRIMARY KEY(Id_eventos),
    FOREIGN key(Id_eventos) REFERENCES Eventos(Id)
)

CREATE TABLE Evento(
    Id_eventos INT,
    PRIMARY KEY(Id_eventos),
    FOREIGN key(Id_eventos) REFERENCES Eventos(Id)
)

CREATE TABLE Multimedia_Administrador(
    Id_multimedia  INT,
    Id_administrador INT, 
    Fecha DATETIME
    PRIMARY KEY(Id_multimedia, Id_administrador),
    PRIMARY KEY(Id_multimedia) REFERENCES Multimedia(Id)
    FOREIGN KEY(Id_administrador) REFERENCES Administrador(Id_usuario)
)
CREATE TABLE Administrador_Evento_histórico(
    Id_evento_historico INT,
    Id_administrador INT,
    Fecha DATETIME,
    PRIMARY KEY(Id_evento_historico, Id_administrador),
    FOREIGN KEY(Id_evento_historico) REFERENCES Evento_histórico(Id),
    FOREIGN KEY(Id_administrador) REFERENCES Administrador(Id_usuario)
)
CREATE TABLE Administrador_Noticia(
    Id_noticia INT, 
    Id_administrador INT,
    PRIMARY KEY(Id_noticia, Id_administrador),
    FOREIGN KEY(Id_noticia) REFERENCES Noticia(Id),
    FOREIGN KEY(Id_administrador) REFERENCES Administrador(Id_usuario),
)

CREATE TABLE Administrador_Eventos(
    Id_administrador INT,
    Id_eventos INT,
    PRIMARY KEY(Id_administrador, Id_eventos),
    FOREIGN KEY(Id_administrador) REFERENCES Administrador(Id_usuario),
    FOREIGN KEY(Id_eventos) REFERENCES Eventos(Id)
)

CREATE TABLE Multimedia_Evento_histórico(
    Id_multimedia INT,
    Id_evento_historico INT,
    Fecha DATETIME,
    PRIMARY KEY(Id_multimedia, Id_evento_historico),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id),
    FOREIGN KEY(Id_evento_historico) REFERENCES Evento_histórico(Id)
)

CREATE TABLE Multimedia_ Noticia(
    Id_multimedia INT, 
    Id_noticia INT,
    Fecha DATETIME,
    PRIMARY KEY(Id_multimedia, Id_noticia),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id),
    FOREIGN KEY(Id_noticia) REFERENCES Noticia(Id)
)

CREATE TABLE Multimedia_ Eventos(
    Id_multimedia INT,
    Id_eventos INT,
    Fecha DATETIME,
    PRIMARY KEY(Id_multimedia, Id_eventos),
    FOREIGN KEY(Id_multimedia) REFERENCES Multimedia(Id),
    FOREIGN KEY(Id_eventos) REFERENCES Eventos(Id)
)

CREATE TABLE Laboratorio(
    Id INT,
    Nombre VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,  
    Teléfono varchar(255) NOT NULL, 
    Dirección varchar(255) NOT NULL, 
    Misión TEXT, 
    Visión TEXT, 
    PRIMARY KEY(Id)
)

CREATE TABLE Profesor_investigador(
    Id_usuario INT, 
    Grado_actual VARCHAR(255) NOT NULL,  
    Id_área_laboratorio INT,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
    FOREIGN KEY(Id_área_laboratorio) REFERENCES Laboratorio(Id)
)

CREATE TABLE Área(
    Id INT,
    Nombre VARCHAR(255) NOT NULL, 
    Acrónimo VARCHAR(255) NOT NULL, 
    Objetivo TEXT, 
    Id_laboratorio INT, 
    Id_pi_encargado INT,
    PRIMARY KEY(Id),
    FOREIGN KEY(Id_laboratorio) REFERENCES Laboratorios(Id),
    FOREIGN KEY(Id_pi_encargado) REFERENCES Profesor_investigador(Id_usuario)
)

CREATE TABLE Proyecto(
    Id INT, 
    Estatus VARCHAR(255) NOT NULL, 
    Problemática MEDIUMTEXT NOT NULL, 
    Solución_propuesta MEDIUMTEXT NOT NULL, 
    Objetivos MEDIUMTEXT NOT NULL, 
    Resultados MEDIUMTEXT NOT NULL, 
    Informe_técnico VARCHAR(255) NOT NULL,
    Id_profesor_invg INT,
    PRIMARY KEY (Id),
    FOREIGN KEY(Id_profesor_invg) REFERENCES Profesor_investigador(Id_usuario)
)

CREATE TABLE Cuerpo_académico(
    Id INT, 
    Nombre VARCHAR(255) NOT NULL,
    Estado VARCHAR(255) NOT NULL, 
    PRODEP VARCHAR(255) NOT NULL, 
    LGAC VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Lineas_investigacion(
    id INT, 
    Nombre VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Profesor_invg_Cuerpo_acad(
    Id_usuario INT,
    Id_cuerpo_acad INT,
    PRIMARY KEY(Id_usuario, Id_cuerpo_acad),
    FOREIGN KEY(Id_usuario) REFERENCES Profesor_investigador(Id_usuario)
    FOREIGN KEY(Id_cuerpo_acad) REFERENCES Cuerpo_académico(Id)
)

CREATE TABLE Profesor_invg_Lineas_invg(
    Id_usuario INT,
    Id_lineas_invg INT,
    PRIMARY KEY(Id_usuario, Id_lineas_invg),
    FOREIGN KEY(Id_usuario) REFERENCES Profesor_investigador(Id_usuario)
)

CREATE TABLE Cuerpo_acad_ Lineas_invg(
    Id_cuerpo_acad INT, 
    Id_lineas_invg INT,
    PRIMARY KEY(Id_cuerpo_acad, Id_lineas_invg)
    FOREIGN KEY (Id_cuerpo_acad) REFERENCES Cuerpo_acad(Id)
    FOREIGN KEY(Id_lineas_invg) REFERENCES Lineas_invg(Id)
)

CREATE TABLE Alumno_estancia_profesional(
    Id_usuario INT, 
    Semestre VARCHAR(255) NOT NULL, 
    Carrera VARCHAR(255) NOT NULL,  
    Institución_procedencia VARCHAR(255) NOT NULL, 
    Id_profesor_invg INT, 
    Id_proyecto INT,
    primary key(Id_usuario),
    FOREIGN KEY(Id_profesor_invg) REFERENCES Profesor_investigador(Id_usuario),
    FOREIGN KEY(Id_proyecto) REFERENCES Proyecto(Id)
)

CREATE TABLE Alumno_servicio_social(
    Id_usuario INT, 
    Semestre VARCHAR(255) NOT NULL, 
    Carrera VARCHAR(255) NOT NULL,  
    Institución_procedencia VARCHAR(255) NOT NULL , 
    Id_profesor_invg INT, 
    Id_proyecto INT,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
    FOREIGN KEY(Id_profesor_investigador) REFERENCES Profesor_investigador(Id_usuario),
    FOREIGN KEY(Id_proyecto) REFERENCES Proyecto(Id)
);

CREATE TABLE Colaborador_externo(
    Id_usuario INT,
    Grado_actual VARCHAR(255) NOT NULL,
    Institución_procedencia VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
);

CREATE TABLE Colaborador_proyecto(
    Id_colaborador_externo INT,
    Id_proyecto INT,
    PRIMARY KEY(Id_colaborador_externo, Id_proyecto),
    FOREIGN KEY(Id_colaborador_externo) REFERENCES Colaborador_externo(Id_usuario),
    FOREIGN KEY(Id_proyecto) REFERENCES Proyecto(Id)
)

CREATE TABLE Colaborador_profesor_investigador(
    Id_colaborador_externo INT,
    Id_profesor_investigador INT,
    PRIMARY KEY(Id_colaborador_externo, Id_profesor_investigador),
    FOREIGN KEY(Id_colaborador_externo) REFERENCES Colaborador_externo(Id_usuario),
    FOREIGN KEY(Id_profesor_investigador) REFERENCES Profesor_investigador(Id_usuario)
)

CREATE TABLE Alumno_tesista(
    Id_usuario INT, 
    Estado VARCHAR(255) NOT NULL, 
    Carreara VARCHAR(255) NOT NULL, 
    Tesis VARCHAR(255) NOT NULL, 
    Id_profesor_invg INT,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id),
)

CREATE TABLE Alumni(
    Id_usuario INT,
    Grado_actual VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id_usuario),
    FOREIGN KEY(Id_usuario) REFERENCES  Usuario(Id)
)

CREATE TABLE Publicación(
    Id INT, 
    Nombre VARCHAR(255) NOT NULL
)

CREATE TABLE Libro(
    Id_publicación  INT, 
    ISBN VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id_publicación),
    FOREIGN KEY(Id_publicación) REFERENCES Publicación(Id)
)

CREATE TABLE Cap_libro(
    Id_publicación INT, 
    ISBN VARCHAR(255) NOT NULL, 
    DOI VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id_publicación),
    FOREIGN KEY(Id_publicación) REFERENCES Publicación(Id)
)

CREATE TABLE Articulo(
    Id_publicación INT, 
    ISNN VARCHAR(255) NOT NULL, 
    No_pag INT,
    PRIMARY KEY(Id_publicación),
    FOREIGN KEY(Id_publicación) REFERENCES Publicación(Id)
)

CREATE TABLE Coautor(
    Id INT, 
    Nombre VARCHAR(255) NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Publicación_Coautor(
    Id_publicación INT, 
    Id_coautor INT,
    PRIMARY KEY(Id_publicación, Id_coautor),
    FOREIGN KEY(Id_publicación) REFERENCES Publicación(Id),
    FOREIGN KEY(Id_coautor) REFERENCES Coautor(Id)
) 

CREATE TABLE Usuario_Publicación(
    Id_usuario INT,
    Id_publicación INT,
    PRIMARY KEY(Id_usuario, Id_publicación),
    FOREIGN KEY (Id_usuario) REFERENCES Usuario(Id),
    FOREIGN KEY (Id_publicación) REFERENCES Publicación(Id)
)

CREATE TABLE Posisión_trabajo(
    Id INT,
    Puesto VARCHAR(255) NOT NULL, 
    Institución VARCHAR(255) NOT NULL, 
    Id_usuario INT,
    PRIMARY KEY(Id),
    FOREIGN KEY(Id_usuario) REFERENCES  Usuario(Id)
)

CREATE TABLE Experiencia_laboral(
    Id INT, 
    Puesto VARCHAR(255) NOT NULL,
    Institución VARCHAR(255) NOT NULL, 
    Fecha_inicio DATE NOT NULL, 
    Fecha_fin DATE NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Experiencia_lab_Usuario(
    Id_experiencia_laboral INT, 
    Id_usuario INT,
    PRIMARY KEY(Id_experiencia_laboral, Id_usuario)
    FOREIGN KEY(Id_experiencia_laboral) REFERENCES Experiencia_laboral(Id),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
)

CREATE TABLE Formación_académica(
    Id INT, 
    Grado VARCHAR(255) NOT NULL, 
    Área_especialidad VARCHAR(255) NOT NULL, 
    Institución VARCHAR(255) NOT NULL,
    Fecha_inicio DATE NOT NULL, 
    Fecha_fin DATE NOT NULL,
    PRIMARY KEY(Id)
)

CREATE TABLE Formación_acad_Usuario(
    Id_formación_academica INT,
    Id_usuario INT,
    PRIMARY KEY(Id_formación_academica, Id_usuario),
    FOREIGN KEY(Id_formación_academica) REFERENCES Formación_académica(Id),
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
)

CREATE TABLE Distinción_académica(
    Id INT, 
    Distinción VARCHAR(255) NOT NULL, 
    Otorgada VARCHAR(255) NOT NULL, 
    fecha_inicio DATE, 
    Fecha_fin DATE,
    PRIMARY KEY(Id),

)

CREATE TABLE Distinción_academica_Usuario(
    Id_formación_academica INT, 
    Id_usuario INT,
    PRIMARY KEY(Id_formación_academica, Id_usuario),
    FOREIGN KEY(Id_formación_academica) REFERENCES Formación_académica(Id)
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
)

CREATE TABLE Conferencia(
    Id INT, 
    Titulo VARCHAR(255) NOT NULL, 
    Evento VARCHAR(255) NOT NULL, 
    Lugar VARCHAR(255) NOT NULL, 
    Fecha DATE NOT NULL,
)

CREATE TABLE Conferencia_Usuario(
    Id_conferencia INT,
    Id_usuario INT,
    PRIMARY KEY(Id_conferencia, Id_usuario),
    FOREIGN KEY(Id_conferencia) REFERENCES Conferencia(Id)
    FOREIGN KEY(Id_usuario) REFERENCES Usuario(Id)
)
