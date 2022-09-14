CREATE DATABASE RegistroAcademico

CREATE TABLE alumnos(
  id_alumno INTEGER NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  apellido1 VARCHAR(50) NOT NULL,
  apellido2 VARCHAR(50),
  CONSTRAINT PK_alumnos PRIMARY KEY (id_alumno)
)

CREATE TABLE materias(
  id_materia INTEGER NOT NULL,
  descripcion VARCHAR(100),
  CONSTRAINT PK_materias PRIMARY KEY (id_materia)
)

CREATE TABLE movimientos(
  id_movimiento INTEGER NOT NULL,
  descripcion VARCHAR(100),
  CONSTRAINT PK_movimiento PRIMARY KEY (id_movimiento)
)

CREATE TABLE registro(
  id_materia INTEGER NOT NULL,
  id_alumno INTEGER NOT NULL,
  fecha DATE NOT NULL,
  id_movimiento INTEGER NOT NULL,
  CONSTRAINT PK_registro PRIMARY KEY (id_materia, id_alumno),
  CONSTRAINT FK_matreg FOREIGN KEY (id_materia) REFERENCES materias,
  CONSTRAINT FK_alureg FOREIGN KEY (id_alumno) REFERENCES alumnos,
  CONSTRAINT FK_movreg FOREIGN KEY (id_movimiento) REFERENCES movimientos
)

INSERT INTO alumnos VALUES ("22","Sofhia", "Martinez", "Baez"), ("11","Ricardo", "Perez","Garcia"),("24", "Ximena", "Tinajero", "Martinez") ;
INSERT INTO materias VALUES ("01","Critografia"),("02", "Arquitectura"),("03","Redes");
INSERT INTO movimientos VALUES ("10","Inscripcion"),("20","Reinscripcion");
INSERT INTO registro VALUES ("01", "22", "12-09-22", "10"),("02", "11", "12-09-22", "20"),("03", "24", "12-09-22", "20");