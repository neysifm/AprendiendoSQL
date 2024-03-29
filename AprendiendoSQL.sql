--  -----------------------
--  |  NEYSI A. FERMIN    |
--  |  (2016-0747)        |
--  -----------------------
-- 3 CREAR TABLA

-- PUNTO 1
IF object_id ('Agenda') IS NOT NULL
DROP TABLE Agenda;

CREATE TABLE Agenda(
	Nombre    VARCHAR(20),
	Apellido  VARCHAR(30),
	Domicilio VARCHAR(30),
	Telefono  VARCHAR(11)
 );

SP_TABLES @TABLE_OWNER= 'dbo';

SP_COLUMNS  Agenda;
 DROP TABLE Agenda;

-- PUNTO 2
IF object_id ('Libros') IS NOT NULL
DROP TABLE Libros;

SP_TABLES @TABLE_OWNER ='dbo';

CREATE TABLE Libros(
    Titulo VARCHAR(20),
    Autor VARCHAR(30),
    Editorial VARCHAR(15)
);

SP_COLUMNS libros;
DROP TABLE Libros;

-- 4 INSERTAR Y RECUPERAR REGISTROS DE UNA TABLA (INSERT INTO - SELECT)

-- PUNTO 1
IF object_id ('Agenda') IS NOT NULL
DROP TABLE Agenda;

CREATE TABLE Agenda(
    Nombre VARCHAR(30),
    Apellido VARCHAR(30),
    Domicilio VARCHAR(30),
    Telefono VARCHAR(11)
);

SP_TABLES @TABLE_OWNER= 'dbo';
SP_COLUMNS Agenda;

INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Neysi','Fermin','SFM','6554626619');
INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Gaby','Espino','SAL','4875487514');
SELECT * FROM Agenda;

IF object_id ('Agenda') IS NOT NULL
DROP TABLE Agenda;

-- PUNTO 2
IF object_id ('Libros') IS NOT NULL
DROP TABLE Libros;

CREATE TABLE Libros
(
    Titulo VARCHAR(20),
    Autor VARCHAR(30),
    Editorial VARCHAR(15),
	Precio INT
);

SP_TABLES @TABLE_OWNER ='dbo';
SP_COLUMNS Libros;

INSERT INTO Libros (Titulo,Autor,Editorial,Precio)
VALUES ('Cronicas', 'Rafael Marquez', 'Santos',800);

INSERT INTO libros (Titulo,Autor,Editorial,Precio)
VALUES ('Querido Viejo', 'Pablo Castro', 'Mora',5000);

INSERT INTO libros (Titulo,Autor,Editorial,Precio)
VALUES ('C++', 'Osvaldo', 'Espana',5487);
SELECT * FROM libros;

-- 5 TIPOS DE DATOS BASICOS

-- PUNTO 1
IF object_id ('Peliculas')IS NOT NULL
DROP TABLE Peliculas;

CREATE TABLE Peliculas(
    Nombre VARCHAR(20),
    Actor VARCHAR(20),
    Duracion INT,
    Cantidad INT
);

SP_TABLES @TABLE_OWNER = 'dbo';
SP_COLUMNS Peliculas;

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Adeline', 'Michael', 130, 2);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Peter Pan', 'Zanc Jackson', 140, 4);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Los OSOS', 'Wigning', 110, 1);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('los Increibles', 'Mack Macarnoi', 105, 3);
SELECT * FROM Peliculas;

-- PUNTO 2
IF object_id ('Empleados') IS NOT NULL
DROP TABLE Empleados;

CREATE TABLE Empleados(
    Nombre VARCHAR(20),
    Documento VARCHAR(8),
    Sexo VARCHAR(1),
    Domicilio VARCHAR(30),
    SueldoBasico float
);

SP_TABLES @TABLE_OWNER ='dbo';
SP_COLUMNS Empleados;

INSERT INTO Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico)
VALUES ('Jose Mota', '8234728', 'M', 'Reyes 1', 10000);

INSERT INTO Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico)
VALUES ('Carmen Castro', '8237283', 'F', 'Sanchez 16', 50000);

INSERT INTO Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico)
VALUES ('Katy Minaya', '5875454', 'F', 'Las palmas 1', 70154);
SELECT * FROM Empleados;

-- 6 RECUPERAR ALGUNOS CAMPOS (SELECT)

-- PUNTO 1
IF object_id ('Peliculas')IS NOT NULL
DROP TABLE Peliculas;

CREATE TABLE Peliculas(
    Nombre VARCHAR(20),
    Actor VARCHAR(20),
    Duracion INT,
    Cantidad INT
);

SP_TABLES @TABLE_OWNER = 'dbo';
SP_COLUMNS Peliculas;

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Adeline', 'Michael', 130, 2);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Peter Pan', 'Zanc Jackson', 140, 4);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Los OSOS', 'Wigning', 110, 1);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('los Increibles', 'Mack Macarnoi', 105, 3);

SELECT Actor FROM peliculas;
SELECT Duracion FROM peliculas;
SELECT Cantidad FROM peliculas;

-- PUNTO 2
IF object_id ('Empleados') IS NOT NULL
DROP TABLE Empleados;

CREATE TABLE Empleados(
    Nombre VARCHAR(20),
    Documento VARCHAR(8),
    Sexo VARCHAR(1),
    Domicilio VARCHAR(30),
    SueldoBasico float
);

SP_TABLES @TABLE_OWNER ='dbo';
SP_COLUMNS Empleados;

INSERT INTO Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico)
VALUES ('Jose Mota', '8234728', 'M', 'Reyes 1', 10000);

INSERT INTO Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico)
VALUES ('Carmen Castro', '8237283', 'F', 'Sanchez 16', 50000);

INSERT INTO Empleados (Nombre,Documento,Sexo,Domicilio,SueldoBasico)
VALUES ('Katy Minaya', '5875454', 'F', 'Las palmas 1', 70154);

SELECT * FROM Empleados;
SELECT Nombre,Documento,Domicilio FROM Empleados;
SELECT Documento,Sexo,SueldoBasico FROM Empleados;

-- 7 RECUPERAR ALGUNOS REGISTROS (WHERE)

-- PUNTO 1
IF object_id ('Agenda') IS NOT NULL
DROP TABLE Agenda;

CREATE TABLE Agenda(
    Nombre VARCHAR(30),
    Apellido VARCHAR(30),
    Domicilio VARCHAR(30),
    Telefono VARCHAR(11)
);

SP_TABLES @TABLE_OWNER= 'dbo';
SP_COLUMNS Agenda;

INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Neysi','Fermin','SFM','6554626619');
INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Gaby','Espino','SAL','4875487514');

SELECT * FROM Agenda;
SELECT * FROM Agenda WHERE Nombre = 'Neysi';
SELECT Nombre,Domicilio FROM agenda WHERE Apellido = 'Espino';
SELECT Nombre FROM Agenda WHERE Telefono = '6554626619';

-- PUNTO 2
IF object_id ('Libros') IS NOT NULL
DROP TABLE Libros;

CREATE TABLE Libros
(
    Titulo VARCHAR(20),
    Autor VARCHAR(30),
    Editorial VARCHAR(15),
	Precio INT
);

SP_TABLES @TABLE_OWNER ='dbo';
SP_COLUMNS Libros;

INSERT INTO Libros (Titulo,Autor,Editorial,Precio)
VALUES ('Cronicas', 'Rafael Marquez', 'Santos',800);

INSERT INTO libros (Titulo,Autor,Editorial,Precio)
VALUES ('Querido Viejo', 'Pablo Castro', 'Mora',5000);

INSERT INTO libros (Titulo,Autor,Editorial,Precio)
VALUES ('C++', 'Osvaldo', 'Espana',5487);

SELECT * FROM Libros WHERE Autor = 'Osvaldo';
SELECT * FROM Libros WHERE Editorial = 'Santos';
SELECT * FROM Libros WHERE Titulo = 'Querido Viejo';

-- 8 OPERADORES RELACIONALES

-- PUNTO 1
IF object_id ('Articulos') IS NOT NULL
DROP TABLE Articulos;

CREATE TABLE Articulos(
    Codigo INT,
    Nombre VARCHAR(20),
    Descripcion VARCHAR(20),
    Precio FLOAT,
    Cantidad INT
);

SP_TABLES @TABLE_OWNER = 'dbo';
SP_COLUMNS articulos;

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (1, 'monitor', 'SCAN', 400.80, 20);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (2, 'impresora', 'Epson Stylus C85', 500, 30);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (3, 'mouse', 'RLIP', 800, 10);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (4, 'teclado', 'ingles Biswal', 100, 50);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (5, 'teclado', 'espa�ol Biswal', 90, 50);

SELECT * FROM Articulos WHERE Nombre = 'impresora';
SELECT * FROM Articulos WHERE Precio >= 400;
SELECT Codigo,Nombre FROM Articulos WHERE Cantidad < 30;
SELECT Nombre,Descripcion FROM Articulos WHERE Precio <> 100;

-- PUNTO 2
IF object_id ('Peliculas') IS NOT NULL
DROP TABLE Peliculas;

CREATE TABLE Peliculas(
    Nombre VARCHAR(20),
    Actor VARCHAR(20),
    Duracion INT,
    Cantidad INT
);

SP_TABLES @TABLE_OWNER = 'dbo';
SP_COLUMNS Peliculas;

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Adeline', 'Michael', 130, 2);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Peter Pan', 'Zanc Jackson', 140, 4);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Los OSOS', 'Wigning', 110, 1);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('los Increibles', 'Mack Macarnoi', 105, 3);

SELECT * FROM Peliculas WHERE Duracion <= 150;
SELECT * FROM Peliculas WHERE Actor <> 'Mack Macarnoi';
SELECT * FROM Peliculas WHERE Cantidad > 2;

-- 9 BORRAR REGISTROS (DELETE)

--P1
IF object_id ('Agenda') IS NOT NULL
DROP TABLE Agenda;

CREATE TABLE Agenda(
    Nombre VARCHAR(30),
    Apellido VARCHAR(30),
    Domicilio VARCHAR(30),
    Telefono VARCHAR(11)
);

SP_TABLES @TABLE_OWNER= 'dbo';
SP_COLUMNS Agenda;

INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Neysi','Fermin','SFM','6554626619');
INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Gaby','Espino','SAL','4875487514');

DELETE  FROM Agenda WHERE Nombre = 'Neysi';
DELETE  FROM Agenda WHERE Telefono = '4875487514';
SELECT * FROM Agenda;
DELETE   FROM Agenda;
SELECT * FROM Agenda;

-- PUNTO 2
IF object_id ('Articulos') IS NOT NULL
DROP TABLE Articulos;

CREATE TABLE Articulos(
    Codigo INT,
    Nombre VARCHAR(20),
    Descripcion VARCHAR(20),
    Precio FLOAT,
    Cantidad INT
);

SP_TABLES @TABLE_OWNER = 'dbo';
SP_COLUMNS articulos;

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (1, 'monitor', 'SCAN', 400.80, 20);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (2, 'impresora', 'Epson Stylus C85', 500, 30);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (3, 'mouse', 'RLIP', 800, 10);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (4, 'teclado', 'ingles Biswal', 100, 50);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (5, 'teclado', 'espa�ol Biswal', 90, 50);

DELETE  FROM Articulos WHERE Precio >= 500;
SELECT * FROM Articulos;
DELETE  FROM Articulos WHERE Nombre = 'impresora';
SELECT * FROM Articulos;
DELETE  FROM Articulos WHERE Codigo <> 4;
SELECT * FROM Articulos;

-- 10 ACTUALIZAR REGISTROS (UPDATE)

-- PUNTO 1
IF object_id ('Agenda') IS NOT NULL
DROP TABLE Agenda;

CREATE TABLE Agenda(
    Nombre VARCHAR(30),
    Apellido VARCHAR(30),
    Domicilio VARCHAR(30),
    Telefono VARCHAR(11)
);

SP_TABLES @TABLE_OWNER= 'dbo';
SP_COLUMNS Agenda;

INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Neysi','Fermin','SFM','6554626619');
INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Gaby','Espino','SAL','4875487514');

SELECT * FROM Agenda;
UPDATE   Agenda SET Nombre ='Neysi A.' WHERE Nombre = 'Neysi'
SELECT * FROM Agenda;
UPDATE   Agenda SET Telefono ='8094626619' WHERE Telefono ='6554626619'
SELECT * FROM Agenda;

-- PUNTOS 2
IF object_id ('Libros') IS NOT NULL
DROP TABLE Libros;

CREATE TABLE Libros
(
    Titulo VARCHAR(20),
    Autor VARCHAR(30),
    Editorial VARCHAR(15),
	Precio INT
);

SP_TABLES @TABLE_OWNER ='dbo';
SP_COLUMNS Libros;

INSERT INTO Libros (Titulo,Autor,Editorial,Precio)
VALUES ('Cronicas', 'Rafael Marquez', 'Santos',800);

INSERT INTO Libros (Titulo,Autor,Editorial,Precio)
VALUES ('Querido Viejo', 'Pablo Castro', 'Mora',5000);

INSERT INTO Libros (Titulo,Autor,Editorial,Precio)
VALUES ('C++', 'Osvaldo', 'Espana',5487);

SELECT * FROM Libros;

UPDATE Libros SET Autor = 'Adrian Paenza' WHERE Autor = 'Rafael Marquez';
SELECT * FROM Libros;
UPDATE libros SET autor = 'Luis Joyanes' WHERE Autor = 'Osvaldo';
SELECT * FROM Libros;

-- 12 VALORES NULL (IS NULL)

-- PUNTO 1
IF object_id ('Medicamentos') IS NOT NULL
DROP TABLE Medicamentos;

CREATE TABLE Medicamentos(
    Codigo INT NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Laboratorio VARCHAR(20),
    Precio FLOAT,
    Cantidad INT NOT NULL
);

SP_TABLES @TABLE_OWNER='dbo';
SP_COLUMNS Medicamentos;

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (1, 'Sertal gotas', NULL, NULL, 100);

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (2, 'Sertal compuesto', NULL, 8.90, 150);

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (3, 'Buscapina', 'Roche', NULL, 200);

SELECT * FROM Medicamentos;

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (4,'Bayaspirina','',0,150);

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (0, NULL,'Bayer',15.60,0);

SELECT * FROM Medicamentos;

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (NULL, 'Amoxidal jarabe', 'Bayer', 25, 120);

SELECT * FROM Medicamentos WHERE Laboratorio IS NULL;
SELECT * FROM Medicamentos WHERE Laboratorio = '';
SELECT * FROM Medicamentos WHERE Precio IS NULL;
SELECT * FROM Medicamentos WHERE Precio = 0;
SELECT * FROM Medicamentos WHERE Laboratorio <> '';
SELECT * FROM Medicamentos WHERE Laboratorio IS NOT NULL;
SELECT * FROM Medicamentos WHERE Precio <> 0;
SELECT * FROM Medicamentos WHERE Precio IS NOT NULL;

-- PUNTO 2
IF object_id ('Peliculas') IS NOT NULL
DROP TABLE Peliculas;

CREATE TABLE Peliculas(
    Nombre VARCHAR(20),
    Actor VARCHAR(20),
    Duracion INT,
    Cantidad INT
);

SP_TABLES @TABLE_OWNER = 'dbo';
SP_COLUMNS Peliculas;

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Adeline', 'Michael', 130, 2);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Peter Pan', 'Zanc Jackson', 140, 4);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Los OSOS', 'Wigning', 110, 1);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('los Increibles', 'Mack Macarnoi', 105, 3);
SELECT * FROM peliculas;

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES(NULL, 'Mujer bonita', 'R. Gere-J. Roberts', 190);

SELECT * FROM peliculas WHERE actor IS NULL;
UPDATE peliculas SET duracion=120 WHERE duracion IS NULL;
UPDATE peliculas SET actor='Desconocido' WHERE actor='';
SELECT * FROM peliculas;

-- 13 CLAVE PRIMARIA

-- PUNTO 1
IF object_id ('Libros') IS NOT NULL
DROP TABLE Libros;

CREATE TABLE Libros
(
    Titulo VARCHAR(20),
    Autor VARCHAR(30),
    Editorial VARCHAR(15),
	Precio INT
);

SP_TABLES @TABLE_OWNER ='dbo';
SP_COLUMNS Libros;

INSERT INTO Libros (Titulo,Autor,Editorial,Precio)
VALUES ('Cronicas', 'Rafael Marquez', 'Santos',800);

INSERT INTO Libros (Titulo,Autor,Editorial,Precio)
VALUES ('Querido Viejo', 'Pablo Castro', 'Mora',5000);

INSERT INTO Libros (Titulo,Autor,Editorial,Precio)
VALUES ('C++', 'Osvaldo', 'Espana',5487);

UPDATE libros SET Titulo = 'C++' WHERE Autor = 'Rafael Marquez';

-- PUNTO 2
IF object_id ('Agenda') IS NOT NULL
DROP TABLE Agenda;

CREATE TABLE Agenda(
    Nombre VARCHAR(30),
    Apellido VARCHAR(30),
    Domicilio VARCHAR(30),
    Telefono VARCHAR(11)
);

SP_TABLES @TABLE_OWNER= 'dbo';
SP_COLUMNS Agenda;

INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Neysi','Fermin','SFM','6554626619');
INSERT INTO Agenda(Nombre,Apellido,Domicilio,Telefono) VALUES ('Gaby','Espino','SAL','4875487514');

-- 14 CAMPO CON ATRIBUTO IDENTITY

-- PUNTO 1
IF object_id ('Medicamentos') IS NOT NULL
DROP TABLE Medicamentos;

CREATE TABLE Medicamentos(
    Codigo INT NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Laboratorio VARCHAR(20),
    Precio FLOAT,
    Cantidad INT NOT NULL
);

SP_TABLES @TABLE_OWNER='dbo';
SP_COLUMNS Medicamentos;

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (1, 'Sertal gotas', NULL, NULL, 100);

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (2, 'Sertal compuesto', NULL, 8.90, 150);

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (3, 'Buscapina', 'Roche', NULL, 200);

SELECT * FROM Medicamentos;

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (4,'Bayaspirina','',0,150);

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (0, NULL,'Bayer',15.60,0);

SELECT * FROM Medicamentos;

-- PUNTO 2
IF object_id ('Peliculas') IS NOT NULL
DROP TABLE Peliculas;

CREATE TABLE Peliculas(
    Nombre VARCHAR(20),
    Actor VARCHAR(20),
    Duracion INT,
    Cantidad INT
);

SP_TABLES @TABLE_OWNER = 'dbo';
SP_COLUMNS Peliculas;

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Adeline', 'Michael', 130, 2);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Peter Pan', 'Zanc Jackson', 140, 4);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Los OSOS', 'Wigning', 110, 1);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('los Increibles', 'Mack Macarnoi', 105, 3);
SELECT * FROM peliculas;

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES(NULL, 'Mujer bonita', 'R. Gere-J. Roberts', 190);

SELECT * FROM peliculas WHERE actor IS NULL;
UPDATE peliculas SET duracion=120 WHERE duracion IS NULL;
UPDATE peliculas SET actor='Desconocido' WHERE actor='';
SELECT * FROM peliculas;

-- 15 MAS ATRIBUTOS CON EL CAMPO IDENTITY

-- PUNTO 1
IF object_id ('Medicamentos') IS NOT NULL
DROP TABLE Medicamentos;

CREATE TABLE Medicamentos(
    Codigo INT NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Laboratorio VARCHAR(20),
    Precio FLOAT,
    Cantidad INT NOT NULL
);

SP_TABLES @TABLE_OWNER='dbo';
SP_COLUMNS Medicamentos;

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (1, 'Sertal gotas', NULL, NULL, 100);

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (2, 'Sertal compuesto', NULL, 8.90, 150);

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (3, 'Buscapina', 'Roche', NULL, 200);

SELECT * FROM Medicamentos;

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (4,'Bayaspirina','',0,150);

INSERT INTO Medicamentos (Codigo,Nombre,Laboratorio,Precio,Cantidad)
VALUES (0, NULL,'Bayer',15.60,0);
SELECT * FROM Medicamentos;

SELECT ident_seed('Medicamentos');
SELECT ident_incr('Medicamentos');

--P2
IF object_id ('Peliculas') IS NOT NULL
DROP TABLE Peliculas;

CREATE TABLE Peliculas(
    Nombre VARCHAR(20),
    Actor VARCHAR(20),
    Duracion INT,
    Cantidad INT
);

SP_TABLES @TABLE_OWNER = 'dbo';
SP_COLUMNS Peliculas;

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Adeline', 'Michael', 130, 2);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Peter Pan', 'Zanc Jackson', 140, 4);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('Los OSOS', 'Wigning', 110, 1);

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES('los Increibles', 'Mack Macarnoi', 105, 3);
SELECT * FROM peliculas;

INSERT INTO peliculas (nombre,actor,duracion,cantidad)
VALUES(NULL, 'Mujer bonita', 'R. Gere-J. Roberts', 190);
SELECT * FROM peliculas;

SELECT ident_seed('Peliculas');
SELECT ident_incr('Peliculas');
SET identity_insert peliculas OFF;

-- 16 TRUNCATE TABLE

-- PUNTO 1
if object_id('alumnos') IS NOT NULL
  DROP TABLE alumnos;

CREATE TABLE alumnos
(
    legajo INT IDENTITY,
    documento VARCHAR(8),
    nombre VARCHAR(30),
    domicilio VARCHAR(30)
);

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('22345345', 'Perez Mariana', 'Colon 234');

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('23545345', 'Morales Marcos', 'Avellaneda 348');

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('24356345', 'Gonzalez Analia', 'Caseros 444');

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('25666777', 'Torres Ramiro', 'Dinamarca 209');

DELETE FROM alumnos;

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('22345345', 'Perez Mariana', 'Colon 234');

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('23545345', 'Morales Marcos', 'Avellaneda 348');

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('24356345', 'Gonzalez Analia', 'Caseros 444');

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('25666777', 'Torres Ramiro', 'Dinamarca 209');

SELECT * FROM alumnos;

TRUNCATE TABLE alumnos;

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('22345345', 'Perez Mariana', 'Colon 234');

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('23545345', 'Morales Marcos', 'Avellaneda 348');

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('24356345', 'Gonzalez Analia', 'Caseros 444');

INSERT INTO alumnos (documento,nombre,domicilio)
VALUES ('25666777', 'Torres Ramiro', 'Dinamarca 209');

SELECT * FROM alumnos;

-- PUNTO 2
IF object_id ('Articulos') IS NOT NULL
DROP TABLE Articulos;

CREATE TABLE Articulos(
    Codigo INT,
    Nombre VARCHAR(20),
    Descripcion VARCHAR(20),
    Precio FLOAT,
    Cantidad INT
);

SP_TABLES @TABLE_OWNER = 'dbo';
SP_COLUMNS articulos;

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (1, 'monitor', 'SCAN', 400.80, 20);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (2, 'impresora', 'Epson Stylus C85', 500, 30);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (3, 'mouse', 'RLIP', 800, 10);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (4, 'teclado', 'ingles Biswal', 100, 50);

INSERT INTO Articulos (Codigo, Nombre, Descripcion, Precio, Cantidad)
VALUES (5, 'teclado', 'espa�ol Biswal', 90, 50);
SELECT * FROM articulos;

--18 TIPO DE DATOS (TEXTO)

-- PUNTO 1
IF object_id('autos') IS NOT NULL
DROP TABLE autos;

CREATE TABLE autos
(
    patente CHAR(6),
    marca VARCHAR(20),
    modelo CHAR(4),
    precio FLOAT,
    PRIMARY KEY (patente)
);

INSERT INTO autos
VALUES('ACD123', 'Fiat 128', '1970', 15000);

INSERT INTO autos
VALUES ('ACG234', 'Renault 11', '1990', 40000);

INSERT INTO autos
VALUES ('BCD333', 'Peugeot 505', '1990', 80000);

INSERT INTO autos
VALUES ('GCD123', 'Renault Clio', '1990', 70000);

INSERT INTO autos
VALUE ('BCC333', 'Renault Megane', '1998', 95000);

INSERT INTO autos
VALUES ('BVF543', 'Fiat 128', '1975', 20000);

SELECT * FROM autos WHERE modelo='1990';

--PUNTO 2
if object_id('clientes') IS NOT NULL
  DROP TABLE clientes;

CREATE TABLE clientes
(
    documento CHAR(8),
    apellido VARCHAR(20),
    nombre VARCHAR(20),
    domicilio VARCHAR(30),
    telefono VARCHAR (11)
);

INSERT INTO clientes
VALUES
    ('2233344', 'Perez', 'Juan', 'Sarmiento 980', '4342345');
INSERT INTO clientes
    (documento,apellido,nombre,domicilio)
VALUES
    ('2333344', 'Perez', 'Ana', 'Colon 234');
INSERT INTO clientes
VALUES
    ('2433344', 'Garcia', 'Luis', 'Avellaneda 1454', '4558877');
INSERT INTO clientes
VALUES
    ('2533344', 'Juarez', 'Ana', 'Urquiza 444', '4789900');

SELECT * FROM clientes WHERE apellido='Perez';

--19 -Tipo de dato (num�rico)

-- PUNTO 1

if object_id('cuentas') IS NOT NULL
  DROP TABLE cuentas;

CREATE TABLE cuentas
(
    numero INT NOT NULL,
    documento CHAR(8),
    nombre VARCHAR(30),
    saldo MONEY,
    PRIMARY KEY (numero)
);

INSERT INTO cuentas
    (numero,documento,nombre,saldo)
VALUES
    ('1234', '25666777', 'Pedro Perez', 500000.60);
INSERT INTO cuentas
    (numero,documento,nombre,saldo)
VALUES
    ('2234', '27888999', 'Juan Lopez', -250000);
INSERT INTO cuentas
    (numero,documento,nombre,saldo)
VALUES
    ('3344', '27888999', 'Juan Lopez', 4000.50);
INSERT INTO cuentas
    (numero,documento,nombre,saldo)
VALUES
    ('3346', '32111222', 'Susana Molina', 1000);

SELECT * FROM cuentas WHERE saldo<4000;

SELECT numero, saldo FROM cuentas WHERE nombre='Juan Lopez';

SELECT * FROM cuentas WHERE saldo<0;

SELECT * FROM cuentas WHERE numero>=3000;

--P2

if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;

CREATE TABLE empleados
(
    nombre VARCHAR(30),
    documento CHAR(8),
    sexo CHAR(1),
    domicilio VARCHAR(30),
    sueldobasico DECIMAL(7,2),
    cantidadhijos TINYINT
);

INSERT INTO empleados
    (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
VALUES
    ('Juan Perez', '22333444', 'm', 'Sarmiento 123', 500, 2);
INSERT INTO empleados
    (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
VALUES
    ('Ana Acosta', '24555666', 'f', 'Colon 134', 850, 0);
INSERT INTO empleados
    (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
VALUES
    ('Bartolome Barrios', '27888999', 'm', 'Urquiza 479', 10000.80, 4);

INSERT INTO empleados
    (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
VALUES
    ('Susana Molina', '29000555', 'f', 'Salta 876', 800.888, 3);

INSERT INTO empleados
    (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
VALUES
    ('Marta Juarez', '32444555', 'f', 'Sucre 1086', 5000000, 2);

SELECT * FROM empleados WHERE sueldobasico>=900;

SELECT * FROM empleados WHERE cantidadhijos>0;

--20 -Tipo de dato (fecha y hora)

--P1

if object_id('alumnos') IS NOT NULL
  DROP TABLE alumnos;

CREATE TABLE alumnos
(
    apellido VARCHAR(30),
    nombre VARCHAR(30),
    documento CHAR(8),
    domicilio VARCHAR(30),
    fechaingreso DATETIME,
    fechanacimiento DATETIME
);

SET DATETIME 'dmy';

INSERT INTO alumnos
VALUES
    ('Gonzalez', 'Ana', '22222222', 'Colon 123', '10-08-1990', '15/02/1972');

INSERT INTO alumnos
VALUES
    ('Juarez', 'Bernardo', '25555555', 'Sucre 456', '03-03-1991', '15/02/1972');

INSERT INTO alumnos
VALUES
    ('Perez', 'Laura', '26666666', 'Bulnes 345', '03-03-91', null);

INSERT INTO alumnos
VALUES
    ('Lopez', 'Carlos', '27777777', 'Sarmiento 1254', '03-15-1990', null);

SELECT * FROM alumnos WHERE fechaingreso<'1-1-91';

SELECT * FROM alumnos WHERE fechanacimiento IS NULL;

INSERT INTO alumnos
VALUES
    ('Rosas', 'Romina', '28888888', 'Avellaneda 487', '03151990', null);

SET DATEFORMAT 'mdy';

INSERT INTO alumnos
VALUES
    ('Lopez', 'Carlos', '27777777', 'Sarmiento 1254', '03-15-1990', null);

--21 -Ingresar algunos campos (INSERT INTO)

--P1


if object_id('cuentas') IS NOT NULL
  DROP TABLE cuentas;

CREATE TABLE cuentas
(
    numero INT IDENTITY,
    documento CHAR(8) NOT NULL,
    nombre VARCHAR(30),
    saldo MONEY
);

INSERT INTO cuentas
VALUES
    (1, '25666777', 'Juan Perez', 2500.50);

INSERT INTO cuentas
VALUES
    ('25666777', 'Juan Perez', 2500.50);

INSERT INTO cuentas
    (documento,saldo)
VALUES
    ('28999777', -5500);

INSERT INTO cuentas
    (numero,documento,nombre,saldo)
VALUES
    (5, '28999777', 'Luis Lopez', 34000);

INSERT INTO cuentas
    (numero,documento,nombre)
VALUES
    (3344, '28999777', 'Luis Lopez', 34000);

INSERT INTO cuentas
    (nombre, saldo)
VALUES
    ('Luis Lopez', 34000);

SELECT * FROM libros;

-- 22 -Valores por defecto (default)

--P1

if object_id('visitantes') IS NOT NULL
  DROP TABLE visitantes;

CREATE TABLE visitantes
(
    nombre VARCHAR(30),
    edad TINYINT,
    sexo CHAR(1) default 'f',
    domicilio VARCHAR(30),
    ciudad VARCHAR(20) default 'Cordoba',
    telefono VARCHAR(11),
    mail VARCHAR(30) default 'no tiene',
    montocompra DECIMAL(6,2)
);
SP_TABLES @TABLE_OWNER = 'dbo'
SP_COLUMNS visitantes;

INSERT INTO visitantes
    (nombre, domicilio, montocompra)
VALUES
    ('Susana Molina', 'Colon 123', 59.80);
INSERT INTO visitantes
    (nombre, edad, ciudad, mail)
VALUES
    ('Marcos Torres', 29, 'Carlos Paz', 'marcostorres@hotmail.com');
SELECT * FROM visitantes;

INSERT INTO visitantes
VALUES
    ('Marcelo Morales', 38, default, default, default, '4255232', 'marcelomorales@hotmail.com', default);

INSERT INTO visitantes default VALUES;

SELECT * FROM visitantes;

--P2

if object_id('prestamos') IS NOT NULL
  DROP TABLE prestamos;

CREATE TABLE prestamos
(
    titulo VARCHAR(40) NOT NULL,
    documento CHAR(8) NOT NULL,
    fechaprestamo DATETIME NOT NULL,
    fechadevolucion DATETIME,
    devuelto CHAR(1) default 'n'
);

INSERT INTO prestamos
    (titulo,documento,fechaprestamo,fechadevolucion)
VALUES
    ('Manual de 1 grado', '23456789', '2006-12-15', '2006-12-18');
INSERT INTO prestamos
    (titulo,documento,fechaprestamo)
VALUES
    ('Alicia en el pais de las maravillas', '23456789', '2006-12-16');
INSERT INTO prestamos
    (titulo,documento,fechaprestamo,fechadevolucion)
VALUES
    ('El aleph', '22543987', '2006-12-16', '2006-08-19');
INSERT INTO prestamos
    (titulo,documento,fechaprestamo,devuelto)
VALUES
    ('Manual de geografia 5 grado', '25555666', '2006-12-18', 's');

SELECT * FROM prestamos;

INSERT INTO prestamos
VALUES
    ('Manual de historia', '32555666', '2006-10-25', default, default);
SELECT * FROM prestamos;

INSERT INTO prestamos default VALUES;

--23 -Columnas calculadas (operadores aritm�ticos y de concatenaci�n)

--P1

if object_id ('articulos') IS NOT NULL
  DROP TABLE articulos;

CREATE TABLE articulos
(
    codigo INT identity,
    nombre VARCHAR(20),
    descripcion VARCHAR(30),
    precio SMALLMONEY,
    cantidad TINYINT default 0,
    PRIMARY KEY (codigo)
);

INSERT INTO articulos
    (nombre, descripcion, precio,cantidad)
VALUES
    ('impresora', 'Epson Stylus C45', 400.80, 20);
INSERT INTO articulos
    (nombre, descripcion, precio)
VALUES
    ('impresora', 'Epson Stylus C85', 500);
INSERT INTO articulos
    (nombre, descripcion, precio)
VALUES
    ('monitor', 'Samsung 14', 800);
INSERT INTO articulos
    (nombre, descripcion, precio,cantidad)
VALUES
    ('teclado', 'ingles Biswal', 100, 50);

UPDATE articulos SET precio=precio+(precio*0.15);

SELECT * FROM articulos;

SELECT nombre+','+descripcion FROM articulos;

UPDATE articulos SET cantidad=cantidad-5 WHERE nombre='teclado';

SELECT * FROM articulos;

--24 -Alias

--P1

if object_id ('libros') IS NOT NULL
  DROP TABLE libros;

CREATE TABLE libros
(
    codigo INT identity,
    titulo VARCHAR(40) NOT NULL,
    autor VARCHAR(20) default 'Desconocido',
    editorial VARCHAR(20),
    precio DECIMAL(6,2),
    cantidad TINYINT default 0,
    PRIMARY KEY (codigo)
);

INSERT INTO libros
    (titulo,autor,editorial,precio)
VALUES
    ('El aleph', 'Borges', 'Emece', 25);
INSERT INTO libros
VALUES
    ('Java en 10 minutos', 'Mario Molina', 'Siglo XXI', 50.40, 100);
INSERT INTO libros
    (titulo,autor,editorial,precio,cantidad)
VALUES
    ('Alicia en el pais de las maravillas', 'Lewis Carroll', 'Emece', 15, 50);

SELECT titulo, autor, editorial, precio, cantidad,
    precio*cantidad as 'monto total'
FROM libros;

SELECT titulo, autor, precio,
    precio*0.1 as descuento,
    precio-(precio*0.1) as 'precio final'
FROM libros WHERE editorial='Emece';

SELECT titulo+'-'+autor as "T�tulo y autor" FROM libros;

--27 -Funciones para el uso de fechas y horas

--P1


if object_id ('empleados') IS NOT NULL
  DROP TABLE empleados;

CREATE TABLE empleados
(
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    documento CHAR(8),
    fechanacimiento DATETIME,
    fechaingreso DATETIME,
    sueldo DECIMAL(6,2),
    PRIMARY KEY(documento)
);

INSERT INTO empleados
VALUES
    ('Ana', 'Acosta', '22222222', '1970/10/10', '1995/05/05', 228.50);
INSERT INTO empleados
VALUES
    ('Carlos', 'Caseres', '25555555', '1978/02/06', '1998/05/05', 309);
INSERT INTO empleados
VALUES
    ('Francisco', 'Garcia', '26666666', '1978/10/15', '1998/10/02', 250.68);
INSERT INTO empleados
VALUES
    ('Gabriela', 'Garcia', '30000000', '1985/10/25', '2000/12/22', 300.25);
INSERT INTO empleados
VALUES
    ('Luis', 'Lopez', '31111111', '1987/02/10', '2000/08/21', 350.98);

SELECT nombre+space(1)+upper(apellido) as nombre,
    stuff(documento,1,0,'DNI N� ') as documento,
    stuff(sueldo,1,0,'$ ') as sueldo
FROM empleados;

SELECT documento, stuff(ceiling(sueldo),1,0,'$ ') FROM empleados;

SELECT nombre, apellido FROM empleados WHERE datename(month,fechanacimiento)='october';

SELECT nombre, apellido FROM empleados WHERE datepart(year,fechaingreso)=2000;

--28 -Ordenar registros (ORDER BY)

--P1

if object_id('visitas') IS NOT NULL
  DROP TABLE visitas;

CREATE TABLE visitas
(
    numero INT identity,
    nombre VARCHAR(30) default 'Anonimo',
    mail VARCHAR(50),
    pais VARCHAR(20),
    fecha DATETIME,
    PRIMARY KEY(numero)
);

INSERT INTO visitas
    (nombre,mail,pais,fecha)
VALUES
    ('Ana Maria Lopez', 'AnaMaria@hotmail.com', 'Argentina', '2006-10-10 10:10');
INSERT INTO visitas
    (nombre,mail,pais,fecha)
VALUES
    ('Gustavo Gonzalez', 'GustavoGGonzalez@hotmail.com', 'Chile', '2006-10-10 21:30');
INSERT INTO visitas
    (nombre,mail,pais,fecha)
VALUES
    ('Juancito', 'JuanJosePerez@hotmail.com', 'Argentina', '2006-10-11 15:45');
INSERT INTO visitas
    (nombre,mail,pais,fecha)
VALUES
    ('Fabiola Martinez', 'MartinezFabiola@hotmail.com', 'Mexico', '2006-10-12 08:15');
INSERT INTO visitas
    (nombre,mail,pais,fecha)
VALUES
    ('Fabiola Martinez', 'MartinezFabiola@hotmail.com', 'Mexico', '2006-09-12 20:45');
INSERT INTO visitas
    (nombre,mail,pais,fecha)
VALUES
    ('Juancito', 'JuanJosePerez@hotmail.com', 'Argentina', '2006-09-12 16:20');
INSERT INTO visitas
    (nombre,mail,pais,fecha)
VALUES
    ('Juancito', 'JuanJosePerez@hotmail.com', 'Argentina', '2006-09-15 16:25');

SELECT * FROM visitas ORDER BY fecha DESC;

SELECT nombre, pais, datename(month,fecha)
FROM visitas ORDER BY pais,datename(month,fecha) DESC;

SELECT nombre, mail,
    datename(month,fecha) mes,
    datename(day,fecha) dia,
    datename(hour,fecha) hora
FROM visitas ORDER BY 3,4,5;

SELECT mail, pais
FROM visitas WHERE datename(month,fecha)='October' ORDER BY 2;

--29 -Operadores l�gicos (AND - or - not)

--P1

if object_id('medicamentos') IS NOT NULL
  DROP TABLE medicamentos;

CREATE TABLE medicamentos
(
    codigo INT identity,
    nombre VARCHAR(20),
    laboratorio VARCHAR(20),
    precio DECIMAL(5,2),
    cantidad TINYINT,
    PRIMARY KEY(codigo)
);

INSERT INTO medicamentos
VALUES
    ('Sertal', 'Roche', 5.2, 100);
INSERT INTO medicamentos
VALUES
    ('Buscapina', 'Roche', 4.10, 200);
INSERT INTO medicamentos
VALUES
    ('Amoxidal 500', 'Bayer', 15.60, 100);
INSERT INTO medicamentos
VALUES
    ('Paracetamol 500', 'Bago', 1.90, 200);
INSERT INTO medicamentos
VALUES
    ('Bayaspirina', 'Bayer', 2.10, 150);
INSERT INTO medicamentos
VALUES
    ('Amoxidal jarabe', 'Bayer', 5.10, 250);

SELECT codigo, nombre FROM medicamentos WHERE laboratorio='Roche' AND precio<5;

SELECT * FROM medicamentos WHERE laboratorio='Roche' OR precio<5;

SELECT * FROM medicamentos WHERE NOT laboratorio='Bayer' AND cantidad=100;

SELECT * FROM medicamentos WHERE laboratorio='Bayer' AND NOT cantidad=100;

DELETE FROM medicamentos WHERE laboratorio='Bayer' AND precio>10;

UPDATE medicamentos SET cantidad=200
  WHERE laboratorio='Roche' AND precio>5;

DELETE FROM medicamentos WHERE laboratorio='Bayer' OR precio<3;

--P2


if object_id('peliculas') IS NOT NULL
  DROP TABLE peliculas;

CREATE TABLE peliculas
(
    codigo INT identity,
    titulo VARCHAR(40) NOT NULL,
    actor VARCHAR(20),
    duracion tinyINT,
    PRIMARY KEY (codigo)
);

INSERT INTO peliculas
VALUES
    ('Mision imposible', 'Tom Cruise', 120);
INSERT INTO peliculas
VALUES
    ('Harry Potter y la piedra filosofal', 'Daniel R.', 180);
INSERT INTO peliculas
VALUES
    ('Harry Potter y la camara secreta', 'Daniel R.', 190);
INSERT INTO peliculas
VALUES
    ('Mision imposible 2', 'Tom Cruise', 120);
INSERT INTO peliculas
VALUES
    ('Mujer bonita', 'RiCHARd Gere', 120);
INSERT INTO peliculas
VALUES
    ('Tootsie', 'D. Hoffman', 90);
INSERT INTO peliculas
VALUES
    ('Un oso rojo', 'Julio Chavez', 100);
INSERT INTO peliculas
VALUES
    ('Elsa y Fred', 'China Zorrilla', 110);

SELECT * FROM peliculas WHERE actor='Tom Cruise' OR
    actor='RiCHARd Gere';

SELECT * FROM peliculas
WHERE actor='Tom Cruise' AND duracion<100;

UPDATE peliculas SET duracion=200 WHERE actor='Daniel R.' AND duracion=180;

DELETE FROM peliculas WHERE not actor='Tom Cruise' AND duracion<=100;

--30 -Otros operadores relacionales (is null)

--P1


if object_id('peliculas') IS NOT NULL
  DROP TABLE peliculas;

CREATE TABLE peliculas
(
    codigo INT identity,
    titulo VARCHAR(40) NOT NULL,
    actor VARCHAR(20),
    duracion tinyINT,
    PRIMARY KEY (codigo)
);

INSERT INTO peliculas
VALUES
    ('Mision imposible', 'Tom Cruise', 120);
INSERT INTO peliculas
VALUES
    ('Harry Potter y la piedra filosofal', 'Daniel R.', null);
INSERT INTO peliculas
VALUES
    ('Harry Potter y la camara secreta', 'Daniel R.', 190);
INSERT INTO peliculas
VALUES
    ('Mision imposible 2', 'Tom Cruise', 120);
INSERT INTO peliculas
VALUES
    ('Mujer bonita', null, 120);
INSERT INTO peliculas
VALUES
    ('Tootsie', 'D. Hoffman', 90);
INSERT INTO peliculas
    (titulo)
VALUES('Un oso rojo');

SELECT * FROM peliculas WHERE actor is null;

UPDATE peliculas SET duracion=0 WHERE duracion is null;

DELETE FROM peliculas WHERE actor is null AND duracion=0;

SELECT * FROM peliculas;

--31 -Otros operadores relacionales (between)

--P1

if object_id('visitas') IS NOT NULL
  DROP TABLE visitas;

CREATE TABLE visitas
(
    numero INT identity,
    nombre VARCHAR(30) default 'Anonimo',
    mail VARCHAR(50),
    pais VARCHAR (20),
    fechayhora DATETIME,
    PRIMARY KEY(numero)
);

INSERT INTO visitas
    (nombre,mail,pais,fechayhora)
VALUES
    ('Ana Maria Lopez', 'AnaMaria@hotmail.com', 'Argentina', '2006-10-10 10:10');
INSERT INTO visitas
    (nombre,mail,pais,fechayhora)
VALUES
    ('Gustavo Gonzalez', 'GustavoGGonzalez@gotmail.com', 'Chile', '2006-10-10 21:30');
INSERT INTO visitas
    (nombre,mail,pais,fechayhora)
VALUES
    ('Juancito', 'JuanJosePerez@hotmail.com', 'Argentina', '2006-10-11 15:45');
INSERT INTO visitas
    (nombre,mail,pais,fechayhora)
VALUES
    ('Fabiola Martinez', 'MartinezFabiola@hotmail.com', 'Mexico', '2006-10-12 08:15');
INSERT INTO visitas
    (nombre,mail,pais,fechayhora)
VALUES('Fabiola Martinez', 'MartinezFabiola@hotmail.com', 'Mexico', '2006-09-12 20:45');
INSERT INTO visitas
    (nombre,mail,pais,fechayhora)
VALUES
    ('Juancito', 'JuanJosePerez@gmail.com', 'Argentina', '2006-09-12 16:20');
INSERT INTO visitas
    (nombre,mail,pais,fechayhora)
VALUES
    ('Juancito', 'JuanJosePerez@hotmail.com', 'Argentina', '2006-09-15 16:25');
INSERT INTO visitas
    (nombre,mail,pais)
VALUES
    ('Federico1', 'federicogarcia@xaxamail.com', 'Argentina');

SELECT * FROM visitas WHERE fechayhora between '2006-09-12' AND '2006-10-11';

SELECT * FROM visitas WHERE numero between 2 AND 5;
--P2


if object_id('autos') IS NOT NULL
  DROP TABLE autos;

CREATE TABLE autos
(
    patente CHAR(6),
    marca VARCHAR(20),
    modelo VARCHAR(4),
    precio DECIMAL(8,2),
    PRIMARY KEY(patente)
);

INSERT INTO autos
VALUES
    ('ACD123', 'Fiat 128', '1970', 15000);
INSERT INTO autos
VALUES
    ('ACG234', 'Renault 11', '1980', 40000);
INSERT INTO autos
VALUES
    ('BCD333', 'Peugeot 505', '1990', 80000);
INSERT INTO autos
VALUES
    ('GCD123', 'Renault Clio', '1995', 70000);
INSERT INTO autos
VALUES
    ('BCC333', 'Renault Megane', '1998', 95000);
INSERT INTO autos
VALUES
    ('BVF543', 'Fiat 128', '1975', 20000);

SELECT * FROM autos WHERE modelo between '1970' AND '1990' ORDER BY modelo;

SELECT * FROM autos WHERE precio between 50000 AND 100000; 

--32 -Otros operadores relacionales (in)

--P1

if object_id('medicamentos') IS NOT NULL
  DROP TABLE medicamentos;

CREATE TABLE medicamentos
(
    codigo INT identity,
    nombre VARCHAR(20),
    laboratorio VARCHAR(20),
    precio DECIMAL(6,2),
    cantidad tinyINT,
    fechavencimiento DATETIME NOT NULL,
    PRIMARY KEY(codigo)
);

INSERT INTO medicamentos
VALUES
    ('Sertal', 'Roche', 5.2, 1, '2005-02-01');
INSERT INTO medicamentos
VALUES
    ('Buscapina', 'Roche', 4.10, 3, '2006-03-01');
INSERT INTO medicamentos
VALUES
    ('Amoxidal 500', 'Bayer', 15.60, 100, '2007-05-01');
INSERT INTO medicamentos
VALUES
    ('Paracetamol 500', 'Bago', 1.90, 20, '2008-02-01');
INSERT INTO medicamentos
VALUES
    ('Bayaspirina', 'Bayer', 2.10, 150, '2009-12-01');
INSERT INTO medicamentos
VALUES
    ('Amoxidal jarabe', 'Bayer', 5.10, 250, '2010-10-01');

SELECT nombre, precio FROM medicamentos WHERE laboratorio in ('Bayer','Bago');

SELECT * FROM medicamentos WHERE cantidad between 1 AND 5;

SELECT * FROM medicamentos WHERE cantidad in (1,2,3,4,5);

--33 -B�squeda de patrones (LIKE - NOT LIKE)

--P1
if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;

CREATE TABLE empleados
(
    nombre VARCHAR(30),
    documento CHAR(8),
    domicilio VARCHAR(30),
    fechaingreso DATETIME,
    seccion VARCHAR(20),
    sueldo DECIMAL(6,2),
    PRIMARY KEY(documento)
);

INSERT INTO empleados
VALUES
    ('Juan Perez', '22333444', 'Colon 123', '1990-10-08', 'Gerencia', 900.50);
INSERT INTO empleados
VALUES
    ('Ana Acosta', '23444555', 'Caseros 987', '1995-12-18', 'Secretaria', 590.30);
INSERT INTO empleados
VALUES
    ('Lucas Duarte', '25666777', 'Sucre 235', '2005-05-15', 'Sistemas', 790);
INSERT INTO empleados
VALUES
    ('Pamela Gonzalez', '26777888', 'Sarmiento 873', '1999-02-12', 'Secretaria', 550);
INSERT INTO empleados
VALUES
    ('Marcos Juarez', '30000111', 'Rivadavia 801', '2002-09-22', 'Contaduria', 630.70);
INSERT INTO empleados
VALUES
    ('YolANDa Perez', '35111222', 'Colon 180', '1990-10-08', 'Administracion', 400);
INSERT INTO empleados
VALUES
    ('Rodolfo Perez', '35555888', 'Coronel Olmedo 588', '1990-05-28', 'Sistemas', 800);

SELECT * FROM empleados WHERE nombre LIKE '%Perez%';

SELECT * FROM empleados WHERE domicilio LIKE 'Co%8%';

SELECT * FROM empleados WHERE documento LIKE '%[02468]';

SELECT * FROM empleados WHERE documento LIKE '[^13]%' AND  nombre LIKE '%ez';

SELECT nombre FROM empleados WHERE nombre LIKE '%[yj]%';

SELECT nombre, seccion FROM empleados WHERE seccion LIKE '[SG]_______';

SELECT nombre, seccion FROM empleados WHERE seccion NOT LIKE '[SG]%';

SELECT nombre, sueldo FROM empleados WHERE sueldo NOT LIKE '%.00';

SELECT * FROM empleados WHERE fechaingreso LIKE '%1990%';

--34 -Contar registros (count)

--P1


if object_id('medicamentos') IS NOT NULL
  DROP TABLE medicamentos;

CREATE TABLE medicamentos
(
    codigo INT identity,
    nombre VARCHAR(20),
    laboratorio VARCHAR(20),
    precio decimal(6,2),
    cantidad tinyINT,
    fechavencimiento DATETIME NOT NULL,
    numerolote INT default null,
    PRIMARY KEY(codigo)
);

INSERT INTO medicamentos
VALUES
    ('Sertal', 'Roche', 5.2, 1, '2005-02-01', null);
INSERT INTO medicamentos
VALUES
    ('Buscapina', 'Roche', 4.10, 3, '2006-03-01', null);
INSERT INTO medicamentos
VALUES
    ('Amoxidal 500', 'Bayer', 15.60, 100, '2007-05-01', null);
INSERT INTO medicamentos
VALUES
    ('Paracetamol 500', 'Bago', 1.90, 20, '2008-02-01', null);
INSERT INTO medicamentos
VALUES
    ('Bayaspirina', null, 2.10, null, '2009-12-01', null);
INSERT INTO medicamentos
VALUES
    ('Amoxidal jarabe', 'Bayer', null, 250, '2009-12-15', null);

SELECT COUNT(*) FROM medicamentos;

SELECT COUNT(laboratorio) FROM medicamentos;

SELECT COUNT(precio) as 'Con precio', count(cantidad) as 'Con cantidad' FROM medicamentos;

SELECT COUNT(precio) FROM medicamentos WHERE laboratorio LIKE 'B%';

SELECT COUNT(numerolote) FROM medicamentos;

--35 -Funciones de agrupamiento (count - sum - min - max - avg)

--P1

if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;

CREATE TABLE empleados
(
    nombre VARCHAR(30),
    documento CHAR(8),
    domicilio VARCHAR(30),
    seccion VARCHAR(20),
    sueldo decimal(6,2),
    cantidadhijos tinyINT,
    PRIMARY KEY(documento)
);

INSERT INTO empleados
VALUES
    ('Juan Perez', '22333444', 'Colon 123', 'Gerencia', 5000, 2);
INSERT INTO empleados
VALUES
    ('Ana Acosta', '23444555', 'Caseros 987', 'Secretaria', 2000, 0);
INSERT INTO empleados
VALUES
    ('Lucas Duarte', '25666777', 'Sucre 235', 'Sistemas', 4000, 1);
INSERT INTO empleados
VALUES
    ('Pamela Gonzalez', '26777888', 'Sarmiento 873', 'Secretaria', 2200, 3);
INSERT INTO empleados
VALUES
    ('Marcos Juarez', '30000111', 'Rivadavia 801', 'Contaduria', 3000, 0);
INSERT INTO empleados
VALUES
    ('YolANDa Perez', '35111222', 'Colon 180', 'Administracion', 3200, 1);
INSERT INTO empleados
VALUES
    ('Rodolfo Perez', '35555888', 'Coronel Olmedo 588', 'Sistemas', 4000, 3);
INSERT INTO empleados
VALUES
    ('Martina Rodriguez', '30141414', 'Sarmiento 1234', 'Administracion', 3800, 4);
INSERT INTO empleados
VALUES
    ('ANDres Costa', '28444555', default, 'Secretaria', null, null);

SELECT count(*) FROM empleados;

SELECT count(sueldo) FROM empleados WHERE seccion='Secretaria';

SELECT max(sueldo) as 'Mayor sueldo', min(sueldo) as 'Menor sueldo' FROM empleados;

SELECT max(cantidadhijos) FROM empleados WHERE nombre LIKE '%Perez%';

SELECT avg(sueldo) FROM empleados;

SELECT avg(sueldo) FROM empleados WHERE seccion='Secretaria';

SELECT avg(cantidadhijos) FROM empleados WHERE seccion='Sistemas';

--36 -Agrupar registros (GROUP BY)

--P1


if object_id('visitantes') IS NOT NULL
  DROP TABLE visitantes;

CREATE TABLE visitantes
(
    nombre VARCHAR(30),
    edad tinyINT,
    sexo CHAR(1) default 'f',
    domicilio VARCHAR(30),
    ciudad VARCHAR(20) default 'Cordoba',
    telefono VARCHAR(11),
    mail VARCHAR(30) default 'no tiene',
    montocompra DECIMAL(6,2)
);

INSERT INTO visitantes
VALUES
    ('Susana Molina', 35, default, 'Colon 123', default, null, null, 59.80);
INSERT INTO visitantes
VALUES
    ('Marcos Torres', 29, 'm', default, 'Carlos Paz', default, 'marcostorres@hotmail.com', 150.50);
INSERT INTO visitantes
VALUES
    ('Mariana Juarez', 45, default, default, 'Carlos Paz', null, default, 23.90);
INSERT INTO visitantes
    (nombre, edad,sexo,telefono, mail)
VALUES
    ('Fabian Perez', 36, 'm', '4556677', 'fabianperez@xaxamail.com');
INSERT INTO visitantes
    (nombre, ciudad, montocompra)
VALUES
    ('AlejANDra Gonzalez', 'La Falda', 280.50);
INSERT INTO visitantes
    (nombre, edad,sexo, ciudad, mail,montocompra)
VALUES
    ('Gaston Perez', 29, 'm', 'Carlos Paz', 'gastonperez1@gmail.com', 95.40);
INSERT INTO visitantes
VALUES
    ('Liliana Torres', 40, default, 'Sarmiento 876', default, default, default, 85);
INSERT INTO visitantes
VALUES
    ('Gabriela Duarte', 21, null, null, 'Rio Tercero', default, 'gabrielaltorres@hotmail.com', 321.50);

SELECT ciudad, count(*) FROM visitantes GROUP BY ciudad;

SELECT ciudad, count(telefono) FROM visitantes GROUP BY ciudad;

SELECT sexo, sum(montocompra) FROM visitantes GROUP BY sexo;

SELECT sexo, ciudad,
    max(montocompra) as mayor,
    min(montocompra) as menor
FROM visitantes GROUP BY sexo,ciudad;

SELECT ciudad,
    avg(montocompra) as 'promedio de compras'
FROM visitantes GROUP BY ciudad;

SELECT ciudad,
    count(*) as 'cantidad con mail'
FROM visitantes
WHERE mail IS NOT NULL AND mail<>'no tiene' GROUP BY ciudad;

SELECT ciudad,
    count(*) as 'cantidad con mail'
FROM visitantes
WHERE mail IS NOT NULL AND mail<>'no tiene' GROUP BY all ciudad;

--P2


if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;

CREATE TABLE empleados
(
    nombre VARCHAR(30),
    documento CHAR(8),
    domicilio VARCHAR(30),
    seccion VARCHAR(20),
    sueldo decimal(6,2),
    cantidadhijos tinyINT,
    fechaingreso DATETIME,
    PRIMARY KEY(documento)
);

INSERT INTO empleados
VALUES
    ('Juan Perez', '22333444', 'Colon 123', 'Gerencia', 5000, 2, '1980-05-10');
INSERT INTO empleados
VALUES
    ('Ana Acosta', '23444555', 'Caseros 987', 'Secretaria', 2000, 0, '1980-10-12');
INSERT INTO empleados
VALUES
    ('Lucas Duarte', '25666777', 'Sucre 235', 'Sistemas', 4000, 1, '1985-05-25');
INSERT INTO empleados
VALUES
    ('Pamela Gonzalez', '26777888', 'Sarmiento 873', 'Secretaria', 2200, 3, '1990-06-25');
INSERT INTO empleados
VALUES
    ('Marcos Juarez', '30000111', 'Rivadavia 801', 'Contaduria', 3000, 0, '1996-05-01');
INSERT INTO empleados
VALUES
    ('YolANDa Perez', '35111222', 'Colon 180', 'Administracion', 3200, 1, '1996-05-01');
INSERT INTO empleados
VALUES
    ('Rodolfo Perez', '35555888', 'Coronel Olmedo 588', 'Sistemas', 4000, 3, '1996-05-01');
INSERT INTO empleados
VALUES
    ('Martina Rodriguez', '30141414', 'Sarmiento 1234', 'Administracion', 3800, 4, '2000-09-01');
INSERT INTO empleados
VALUES
    ('ANDres Costa', '28444555', default, 'Secretaria', null, null, null);

SELECT seccion, count(*) FROM empleados GROUP BY seccion;

SELECT seccion, avg(cantidadhijos) as 'promedio de hijos' FROM empleados
GROUP BY seccion;

SELECT datepart(year,fechaingreso), count(*) FROM empleados
GROUP BY datepart(year,fechaingreso);

SELECT seccion, avg(sueldo) as 'promedio de sueldo'
FROM empleados
WHERE cantidadhijos>0 AND cantidadhijos IS NOT NULL GROUP BY seccion;

SELECT seccion, avg(sueldo) as 'promedio de sueldo'
FROM empleados
WHERE cantidadhijos>0 AND cantidadhijos IS NOT NULL GROUP BY all seccion;

--37 -Seleccionar grupos (HAVING)

--P1

if object_id('clientes') IS NOT NULL
  DROP TABLE clientes;

CREATE TABLE clientes
(
    codigo INT identity,
    nombre VARCHAR(30) NOT NULL,
    domicilio VARCHAR(30),
    ciudad VARCHAR(20),
    provincia VARCHAR (20),
    telefono VARCHAR(11),
    PRIMARY KEY(codigo)
);

INSERT INTO clientes
VALUES
    ('Lopez Marcos', 'Colon 111', 'Cordoba', 'Cordoba', 'null');
INSERT INTO clientes
VALUES
    ('Perez Ana', 'San Martin 222', 'Cruz del Eje', 'Cordoba', '4578585');
INSERT INTO clientes
VALUES
    ('Garcia Juan', 'Rivadavia 333', 'Villa del Rosario', 'Cordoba', '4578445');
INSERT INTO clientes
VALUES
    ('Perez Luis', 'Sarmiento 444', 'Rosario', 'Santa Fe', null);
INSERT INTO clientes
VALUES
    ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje', 'Cordoba', '4253685');
INSERT INTO clientes
VALUES
    ('Gomez Ines', 'San Martin 666', 'Santa Fe', 'Santa Fe', '0345252525');
INSERT INTO clientes
VALUES
    ('Torres Fabiola', 'Alem 777', 'Villa del Rosario', 'Cordoba', '4554455');
INSERT INTO clientes
VALUES
    ('Lopez Carlos', null, 'Cruz del Eje', 'Cordoba', null);
INSERT INTO clientes
VALUES
    ('Ramos Betina', 'San Martin 999', 'Cordoba', 'Cordoba', '4223366');
INSERT INTO clientes
VALUES
    ('Lopez Lucas', 'San Martin 1010', 'Posadas', 'Misiones', '0457858745');

SELECT ciudad, provincia,
    count(*) as cantidad FROM clientes GROUP BY ciudad,provincia;

SELECT ciudad, provincia,
    count(*) as cantidad
FROM clientes GROUP BY ciudad,provincia HAVING count(*)>1;

SELECT ciudad, count(*) FROM clientes
WHERE domicilio LIKE '%San Martin%'
GROUP BY all ciudad HAVING count(*)<2 AND ciudad <> 'Cordoba';

--P2


if object_id('visitantes') IS NOT NULL
  DROP TABLE visitantes;

CREATE TABLE visitantes
(
    nombre VARCHAR(30),
    edad tinyINT,
    sexo CHAR(1),
    domicilio VARCHAR(30),
    ciudad VARCHAR(20),
    telefono VARCHAR(11),
    montocompra decimal(6,2) NOT NULL
);

INSERT INTO visitantes
VALUES
    ('Susana Molina', 28, 'f', null, 'Cordoba', null, 45.50);
INSERT INTO visitantes
VALUES
    ('Marcela Mercado', 36, 'f', 'Avellaneda 345', 'Cordoba', '4545454', 22.40);
INSERT INTO visitantes
VALUES
    ('Alberto Garcia', 35, 'm', 'Gral. Paz 123', 'Alta Gracia', '03547123456', 25);
INSERT INTO visitantes
VALUES
    ('Teresa Garcia', 33, 'f', default, 'Alta Gracia', '03547123456', 120);
INSERT INTO visitantes
VALUES
    ('Roberto Perez', 45, 'm', 'Urquiza 335', 'Cordoba', '4123456', 33.20);
INSERT INTO visitantes
VALUES
    ('Marina Torres', 22, 'f', 'Colon 222', 'Villa Dolores', '03544112233', 95);
INSERT INTO visitantes
VALUES
    ('Julieta Gomez', 24, 'f', 'San Martin 333', 'Alta Gracia', null, 53.50);
INSERT INTO visitantes
VALUES
    ('Roxana Lopez', 20, 'f', 'null', 'Alta Gracia', null, 240);
INSERT INTO visitantes
VALUES
    ('Liliana Garcia', 50, 'f', 'Paso 999', 'Cordoba', '4588778', 48);
INSERT INTO visitantes
VALUES
    ('Juan Torres', 43, 'm', 'Sarmiento 876', 'Cordoba', null, 15.30);

SELECT ciudad, sexo, sum(montocompra) as Total
FROM visitantes GROUP BY ciudad,sexo HAVING sum(montocompra)>50;

SELECT ciudad, sexo, sum(montocompra) as 'total'
FROM visitantes WHERE montocompra>50 AND
    telefono IS NOT NULL
GROUP BY all ciudad,sexo HAVING ciudad<>'Cordoba' ORDER BY ciudad;

SELECT ciudad, max(montocompra) as maximo FROM visitantes
WHERE domicilio IS NOT NULL AND sexo='f'
GROUP BY all ciudad HAVING max(montocompra)>50;

SELECT ciudad, sexo, count(*) as cantidad, sum(montocompra) as total,
avg(montocompra) as promedio FROM visitantes
GROUP BY ciudad,sexo HAVING avg(montocompra)>30 ORDER BY total;

--38 Registros duplicados (DISTINCT)
--P1
if object_id('clientes') IS NOT NULL
  DROP TABLE clientes;
CREATE TABLE clientes
(
    codigo INT identity,
    nombre VARCHAR(30) NOT NULL,
    domicilio VARCHAR(30),
    ciudad VARCHAR(20),
    provincia VARCHAR (20),
    PRIMARY KEY(codigo)
);
INSERT INTO clientes
VALUES
    ('Lopez Marcos', 'Colon 111', 'Cordoba', 'Cordoba');
INSERT INTO clientes
VALUES
    ('Perez Ana', 'San Martin 222', 'Cruz del Eje', 'Cordoba');
INSERT INTO clientes
VALUES
    ('Garcia Juan', 'Rivadavia 333', 'Villa del Rosario', 'Cordoba');
INSERT INTO clientes
VALUES
    ('Perez Luis', 'Sarmiento 444', 'Rosario', 'Santa Fe');
INSERT INTO clientes
VALUES
    ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje', 'Cordoba');
INSERT INTO clientes
VALUES
    ('Gomez Ines', 'San Martin 666', 'Santa Fe', 'Santa Fe');
INSERT INTO clientes
VALUES
    ('Torres Fabiola', 'Alem 777', 'Villa del Rosario', 'Cordoba');
INSERT INTO clientes
VALUES
    ('Lopez Carlos', null, 'Cruz del Eje', 'Cordoba');
INSERT INTO clientes
VALUES
    ('Ramos Betina', 'San Martin 999', 'Cordoba', 'Cordoba');
INSERT INTO clientes
VALUES
    ('Lopez Lucas', 'San Martin 1010', 'Posadas', 'Misiones');

SELECT DISTINCT provincia FROM clientes;

SELECT count(DISTINCT provincia) as cantidad FROM clientes;

SELECT DISTINCT ciudad FROM clientes;

SELECT count(DISTINCT ciudad) FROM clientes;

SELECT DISTINCT ciudad FROM clientes WHERE provincia='Cordoba';

SELECT provincia, count(DISTINCT ciudad) FROM clientes GROUP BY provincia;

--P2

if object_id('inmuebles') IS NOT NULL
  DROP TABLE inmuebles;

CREATE TABLE inmuebles
(
    documento VARCHAR(8) NOT NULL,
    apellido VARCHAR(30),
    nombre VARCHAR(30),
    domicilio VARCHAR(20),
    barrio VARCHAR(20),
    ciudad VARCHAR(20),
    tipo CHAR(1),--b=baldio, e: edificado
    superficie DECIMAL(8,2)
);

INSERT INTO inmuebles
VALUES
    ('11000000', 'Perez', 'Alberto', 'San Martin 800', 'Centro', 'Cordoba', 'e', 100);
INSERT INTO inmuebles
VALUES
    ('11000000', 'Perez', 'Alberto', 'Sarmiento 245', 'Gral. Paz', 'Cordoba', 'e', 200);
INSERT INTO inmuebles
VALUES
    ('12222222', 'Lopez', 'Maria', 'San Martin 202', 'Centro', 'Cordoba', 'e', 250);
INSERT INTO inmuebles
VALUES
    ('13333333', 'Garcia', 'Carlos', 'Paso 1234', 'Alberdi', 'Cordoba', 'b', 200);
INSERT INTO inmuebles
VALUES
    ('13333333', 'Garcia', 'Carlos', 'Guemes 876', 'Alberdi', 'Cordoba', 'b', 300);
INSERT INTO inmuebles
VALUES
    ('14444444', 'Perez', 'Mariana', 'Caseros 456', 'Flores', 'Cordoba', 'b', 200);
INSERT INTO inmuebles
VALUES
    ('15555555', 'Lopez', 'Luis', 'San Martin 321', 'Centro', 'Carlos Paz', 'e', 500);
INSERT INTO inmuebles
VALUES
    ('15555555', 'Lopez', 'Luis', 'Lopez y Planes 853', 'Flores', 'Carlos Paz', 'e', 350);
INSERT INTO inmuebles
VALUES
    ('16666666', 'Perez', 'Alberto', 'Sucre 1877', 'Flores', 'Cordoba', 'e', 150);

SELECT DISTINCT apellido FROM inmuebles;

SELECT DISTINCT documento FROM inmuebles;

SELECT count(DISTINCT documento) FROM inmuebles WHERE ciudad='Cordoba';

SELECT count(ciudad) FROM inmuebles WHERE domicilio LIKE 'San Martin %';

SELECT DISTINCT apellido, nombre FROM inmuebles;

SELECT documento, count(DISTINCT barrio) as 'cantidad' FROM inmuebles GROUP BY documento;

--39  Clausula TOP
--P1
if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;

CREATE TABLE empleados
(
    documento VARCHAR(8) NOT NULL,
    nombre VARCHAR(30),
    estadocivil CHAR(1),--c=casado, s=soltero,v=viudo
    seccion VARCHAR(20)
);

INSERT INTO empleados
VALUES
    ('22222222', 'Alberto Lopez', 'c', 'Sistemas');
INSERT INTO empleados
VALUES
    ('23333333', 'Beatriz Garcia', 'c', 'Administracion');
INSERT INTO empleados
VALUES
    ('24444444', 'Carlos Fuentes', 's', 'Administracion');
INSERT INTO empleados
VALUES
    ('25555555', 'Daniel Garcia', 's', 'Sistemas');
INSERT INTO empleados
VALUES
    ('26666666', 'Ester Juarez', 'c', 'Sistemas');
INSERT INTO empleados
VALUES
    ('27777777', 'Fabian Torres', 's', 'Sistemas');
INSERT INTO empleados
VALUES
    ('28888888', 'Gabriela Lopez', null, 'Sistemas');
INSERT INTO empleados
VALUES
    ('29999999', 'Hector Garcia', null, 'Administracion');

SELECT TOP 5 * FROM empleados;

SELECT TOP 4
    nombre, seccion FROM empleados ORDER BY seccion;

SELECT TOP 4 WITH ties
    nombre, seccion FROM empleados ORDER BY seccion;

SELECT TOP 4
    nombre, estadocivil, seccion FROM empleados ORDER BY estadocivil,seccion;

SELECT TOP 4 WITH ties
    nombre, estadocivil, seccion FROM empleados ORDER BY estadocivil,seccion;

--40 Eliminar restricciones (ALTER TABLE - drop)
--P1
if object_id('vehiculos') IS NOT NULL
  DROP TABLE vehiculos;
CREATE TABLE vehiculos
(
    patente CHAR(6) NOT NULL,
    tipo CHAR(1),--'a'=auto, 'm'=moto
    horallegada DATETIME NOT NULL,
    horasalida DATETIME
);
ALTER TABLE vehiculos
 add CONSTRAINT CK_vehiculos_tipo CHECK (tipo IN ('a','m'));
ALTER TABLE vehiculos
  add CONSTRAINT DF_vehiculos_tipo default 'a' for tipo;
ALTER TABLE vehiculos
  add CONSTRAINT CK_vehiculos_patente_patron
  check (patente LIKE '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');
ALTER TABLE vehiculos
  add CONSTRAINT PK_vehiculos_patentellegada
  PRIMARY KEY(patente,horallegada);
INSERT INTO vehiculos
VALUES('SDR456', 'a', '2005/10/10 10:10', null);
INSERT INTO vehiculos
VALUES('SDR456', 'm', '2005/10/10 10:10', null);
INSERT INTO vehiculos
VALUES('SDR456', 'm', '2005/10/10 12:10', null);
INSERT INTO vehiculos
VALUES('SDR111', 'm', '2005/10/10 10:10', null);
sp_helpCONSTRAINT vehiculos;
ALTER TABLE vehiculos drop DF_vehiculos_tipo;
sp_helpCONSTRAINT vehiculos;
ALTER TABLE vehiculos drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;
sp_helpCONSTRAINT vehiculos;
--42 Combinaci�n INTerna (inner join)
--P1
if object_id('clientes') IS NOT NULL    
    DROP TABLE clientes;
if object_id('provincias') IS NOT NULL
    DROP TABLE provincias;

CREATE TABLE clientes(
    codigo INT IDENTITY,
    nombre VARCHAR(30),
    domicilio VARCHAR(30),
    cuidad VARCHAR(20),
    codigoprovincia TINYINT NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE provincias(
    codigo TINYINT IDENTITY,
    nombre VARCHAR(20),
    PRIMARY KEY(codigo)
);


INSERT INTO provincias (nombre) VALUES('Cordoba');
INSERT INTO provincias (nombre) VALUES('Santa Fe');
INSERT INTO provincias (nombre) VALUES('Corrientes');

INSERT INTO clientes
VALUES
    ('Lopez Marcos', 'Colon 111', 'C�rdoba', 1);
INSERT INTO clientes
VALUES
    ('Perez Ana', 'San Martin 222', 'Cruz del Eje', 1);
INSERT INTO clientes
VALUES
    ('Garcia Juan', 'Rivadavia 333', 'Villa Maria', 1);
INSERT INTO clientes
VALUES
    ('Perez Luis', 'Sarmiento 444', 'Rosario', 2);
INSERT INTO clientes
VALUES
    ('Pereyra Lucas', 'San Martin 555', 'Cruz del Eje', 1);
INSERT INTO clientes
VALUES
    ('Gomez Ines', 'San Martin 666', 'Santa Fe', 2);
INSERT INTO clientes
VALUES
    ('Torres Fabiola', 'Alem 777', 'Ibera', 3);

SELECT c.nombre, domicilio, ciudad, p.nombre
FROM clientes AS c JOIN provincias AS p ON c.codigoprovincia=p.codigo;

SELECT c.nombre, domicilio, ciudad, p.nombre FROM clientes AS c
    JOIN provincias AS p ON c.codigoprovincia=p.codigo
ORDER BY p.nombre;

SELECT c.nombre, domicilio, ciudad FROM clientes AS c
    JOIN provincias AS p
ON c.codigoprovincia=p.codigo WHERE p.nombre='Santa Fe';
--P2
if object_id('inscriptos') IS NOT NULL
  DROP TABLE inscriptos;
if object_id('inasistencias') IS NOT NULL
  DROP TABLE inasistencias;

CREATE TABLE inscriptos
(
    nombre VARCHAR(30),
    documento CHAR(8),
    deporte VARCHAR(15),
    matricula CHAR(1),--'s'=paga 'n'=impaga
    PRIMARY KEY(documento,deporte)
);
CREATE TABLE inasistencias
(
    documento CHAR(8),
    deporte VARCHAR(15),
    fecha DATETIME
);
INSERT INTO inscriptos
VALUES
    ('Juan Perez', '22222222', 'tenis', 's');
INSERT INTO inscriptos
VALUES
    ('Maria Lopez', '23333333', 'tenis', 's');
INSERT INTO inscriptos
VALUES
    ('Agustin Juarez', '24444444', 'tenis', 'n');
INSERT INTO inscriptos
VALUES
    ('Marta Garcia', '25555555', 'natacion', 's');
INSERT INTO inscriptos
VALUES
    ('Juan Perez', '22222222', 'natacion', 's');
INSERT INTO inscriptos
VALUES
    ('Maria Lopez', '23333333', 'natacion', 'n');

INSERT INTO inasistencias
VALUES
    ('22222222', 'tenis', '2006-12-01');
INSERT INTO inasistencias
VALUES
    ('22222222', 'tenis', '2006-12-08');
INSERT INTO inasistencias
VALUES
    ('23333333', 'tenis', '2006-12-01');
INSERT INTO inasistencias
VALUES
    ('24444444', 'tenis', '2006-12-08');
INSERT INTO inasistencias
VALUES
    ('22222222', 'natacion', '2006-12-02');
INSERT INTO inasistencias
VALUES
    ('23333333', 'natacion', '2006-12-02');

SELECT nombre, insc.deporte, ina.fecha
FROM inscriptos as insc
    JOIN inasistencias as ina
    ON insc.documento=ina.documento AND
        insc.deporte=ina.deporte
ORDER BY nombre, insc.deporte;

SELECT nombre, insc.deporte, ina.fecha
FROM inscriptos as insc
    JOIN inasistencias as ina
    ON insc.documento=ina.documento AND
        insc.deporte=ina.deporte
WHERE insc.documento='22222222';

SELECT nombre, insc.deporte, ina.fecha
FROM inscriptos as insc
    JOIN inasistencias as ina
    ON insc.documento=ina.documento AND
        insc.deporte=ina.deporte
WHERE insc.matricula='s';

-- 43 Combinaci�n externa izquierda (left join)
--P1
if (object_id('clientes')) IS NOT NULL
   DROP TABLE clientes;
if (object_id('provincias')) IS NOT NULL
   DROP TABLE provincias;

CREATE TABLE clientes
(
    codigo INT identity,
    nombre VARCHAR(30),
    domicilio VARCHAR(30),
    ciudad VARCHAR(20),
    codigoprovincia TINYINT NOT NULL,
    PRIMARY KEY(codigo)
);
CREATE TABLE provincias
(
    codigo TINYINT IDENTITY,
    nombre VARCHAR(20),
    PRIMARY KEY (codigo)
);

INSERT INTO provincias
    (nombre)
VALUES('Cordoba');
INSERT INTO provincias
    (nombre)
VALUES
    ('Santa Fe');
INSERT INTO provincias
    (nombre)
VALUES
    ('Corrientes');
INSERT INTO clientes
VALUES
    ('Lopez Marcos', 'Colon 111', 'C�rdoba', 1);
INSERT INTO clientes
VALUES
    ('Perez Ana', 'San Martin 222', 'Cruz del Eje', 1);
INSERT INTO clientes
VALUES
    ('Garcia Juan', 'Rivadavia 333', 'Villa Maria', 1);
INSERT INTO clientes
VALUES
    ('Perez Luis', 'Sarmiento 444', 'Rosario', 2);
INSERT INTO clientes
VALUES
    ('Gomez Ines', 'San Martin 666', 'Santa Fe', 2);
INSERT INTO clientes
VALUES
    ('Torres Fabiola', 'Alem 777', 'La Plata', 4);
INSERT INTO clientes
VALUES
    ('Garcia Luis', 'Sucre 475', 'Santa Rosa', 5);

SELECT c.nombre, domicilio, ciudad, p.nombre FROM clientes as c
    LEFT JOIN provincias as p
    ON codigoprovincia = p.codigo;

SELECT c.nombre, domicilio, ciudad, p.nombre FROM provincias as p
    LEFT JOIN clientes as c
    ON codigoprovincia = p.codigo;

SELECT c.nombre, domicilio, ciudad, p.nombre FROM clientes as c
    LEFT JOIN provincias as p
    ON codigoprovincia = p.codigo
WHERE p.codigo IS NOT NULL;

SELECT c.nombre, domicilio, ciudad, p.nombre FROM clientes as c
    LEFT JOIN provincias as p
    ON codigoprovincia = p.codigo
WHERE p.codigo IS NULL
ORDER BY c.nombre;

SELECT c.nombre, domicilio, ciudad, p.nombre FROM clientes as c
    LEFT JOIN provincias as p
    ON codigoprovincia = p.codigo
WHERE p.nombre='Cordoba';

--44 -Combinaci�n externa derecha (right join)

--P1
if (object_id('clientes')) IS NOT NULL
   DROP TABLE clientes;
if (object_id('provincias')) IS NOT NULL
   DROP TABLE provincias;

CREATE TABLE clientes
(
    codigo INT identity,
    nombre VARCHAR(30),
    domicilio VARCHAR(30),
    ciudad VARCHAR(20),
    codigoprovincia tinyINT NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE provincias
(
    codigo tinyINT identity,
    nombre VARCHAR(20),
    PRIMARY KEY (codigo)
);

INSERT INTO provincias
    (nombre)
VALUES
    ('Cordoba');
INSERT INTO provincias
    (nombre)
VALUES
    ('Santa Fe');
INSERT INTO provincias
    (nombre)
VALUES
    ('Corrientes');

INSERT INTO clientes
VALUES
    ('Lopez Marcos', 'Colon 111', 'C�rdoba', 1);
INSERT INTO clientes
VALUES
    ('Perez Ana', 'San Martin 222', 'Cruz del Eje', 1);
INSERT INTO clientes
VALUES
    ('Garcia Juan', 'Rivadavia 333', 'Villa Maria', 1);
INSERT INTO clientes
VALUES
    ('Perez Luis', 'Sarmiento 444', 'Rosario', 2);
INSERT INTO clientes
VALUES
    ('Gomez Ines', 'San Martin 666', 'Santa Fe', 2);
INSERT INTO clientes
VALUES
    ('Torres Fabiola', 'Alem 777', 'La Plata', 4);
INSERT INTO clientes
VALUES
    ('Garcia Luis', 'Sucre 475', 'Santa Rosa', 5);

SELECT c.nombre, domicilio, ciudad, p.nombre
FROM provincias as p
    right join clientes as c
    on codigoprovincia = p.codigo;

SELECT c.nombre, domicilio, ciudad, p.nombre
FROM clientes as c
    left join provincias as p
    on codigoprovincia = p.codigo;

SELECT c.nombre, domicilio, ciudad, p.nombre
FROM provincias as p
    right join clientes as c
    on codigoprovincia = p.codigo
WHERE p.codigo IS NOT NULL;

SELECT c.nombre, domicilio, ciudad, p.nombre
FROM provincias as p
    right join clientes as c
    on codigoprovincia = p.codigo
WHERE p.codigo is null
order by ciudad;

--45- Combinaci�n externa completa (full join)

--P1

if (object_id('deportes')) IS NOT NULL
  DROP TABLE deportes;
if (object_id('inscriptos')) IS NOT NULL
  DROP TABLE inscriptos;
CREATE TABLE deportes
(
    codigo tinyINT identity,
    nombre VARCHAR(30),
    profesor VARCHAR(30),
    PRIMARY KEY (codigo)
);
CREATE TABLE inscriptos
(
    documento CHAR(8),
    codigodeporte tinyINT NOT NULL,
    matricula CHAR(1)
);
INSERT INTO deportes
VALUES
    ('tenis', 'Marcelo Roca');
INSERT INTO deportes
VALUES
    ('natacion', 'Marta Torres');
INSERT INTO deportes
VALUES
    ('basquet', 'Luis Garcia');
INSERT INTO deportes
VALUES
    ('futbol', 'Marcelo Roca');

INSERT INTO inscriptos
VALUES
    ('22222222', 3, 's');
INSERT INTO inscriptos
VALUES
    ('23333333', 3, 's');
INSERT INTO inscriptos
VALUES
    ('24444444', 3, 'n');
INSERT INTO inscriptos
VALUES
    ('22222222', 2, 's');
INSERT INTO inscriptos
VALUES
    ('23333333', 2, 's');
INSERT INTO inscriptos
VALUES
    ('22222222', 4, 'n');
INSERT INTO inscriptos
VALUES
    ('22222222', 5, 'n');

SELECT documento, d.nombre, matricula
FROM inscriptos as i
    join deportes as d
    on codigodeporte=codigo;

SELECT documento, d.nombre, matricula
FROM inscriptos as i
    left join deportes as d
    on codigodeporte=codigo;

SELECT documento, d.nombre, matricula
FROM deportes as d
    right join inscriptos as i
    on codigodeporte=codigo;

SELECT nombre
FROM deportes as d
    left join inscriptos as i
    on codigodeporte=codigo
WHERE codigodeporte is null;

SELECT documento
FROM inscriptos as i
    left join deportes as d
    on codigodeporte=codigo
WHERE codigo is null;

SELECT documento, nombre, profesor, matricula
FROM inscriptos as i
    full join deportes as d
    on codigodeporte=codigo; 

--46 -Combinaciones cruzadas (cross join)

--P1
if object_id('mujeres') IS NOT NULL
  DROP TABLE mujeres;
 if object_id('varones') IS NOT NULL
  DROP TABLE varones;
 CREATE TABLE mujeres(
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  edad INT
 );
 CREATE TABLE varones(
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  edad INT
 );

 INSERT INTO mujeres VALUES('Maria Lopez','Colon 123',45);
 INSERT INTO mujeres VALUES('Liliana Garcia','Sucre 456',35);
 INSERT INTO mujeres VALUES('Susana Lopez','Avellaneda 98',41);

 INSERT INTO varones VALUES('Juan Torres','Sarmiento 755',44);
 INSERT INTO varones VALUES('Marcelo Oliva','San Martin 874',56);
 INSERT INTO varones VALUES('Federico Pereyra','Colon 234',38);
 INSERT INTO varones VALUES('Juan Garcia','Peru 333',50);

 SELECT m.nombre,m.edad,v.nombre,v.edad
  FROM mujeres as m
  cross join varones as v;

 SELECT m.nombre,m.edad,v.nombre,v.edad
  FROM mujeres as m
  cross join varones as v
  WHERE m.edad>40 and
  v.edad>40;

 SELECT m.nombre,m.edad,v.nombre,v.edad
  FROM mujeres as m
  cross join varones as v
  WHERE m.edad-v.edad between -10 and 10;

--P2
  
if object_id('guardias') IS NOT NULL
  DROP TABLE guardias;
if object_id('tareas') IS NOT NULL
  DROP TABLE tareas;

CREATE TABLE guardias
(
    documento CHAR(8),
    nombre VARCHAR(30),
    sexo CHAR(1),/* 'f' o 'm' */
    domicilio VARCHAR(30),
    PRIMARY KEY (documento)
);

CREATE TABLE tareas
(
    codigo tinyINT identity,
    domicilio VARCHAR(30),
    descripcion VARCHAR(30),
    horario CHAR(2),/* 'AM' o 'PM'*/
    PRIMARY KEY (codigo)
);

INSERT INTO guardias
VALUES
    ('22333444', 'Juan Perez', 'm', 'Colon 123');
INSERT INTO guardias
VALUES
    ('24333444', 'Alberto Torres', 'm', 'San Martin 567');
INSERT INTO guardias
VALUES
    ('25333444', 'Luis Ferreyra', 'm', 'Chacabuco 235');
INSERT INTO guardias
VALUES
    ('23333444', 'Lorena Viale', 'f', 'Sarmiento 988');
INSERT INTO guardias
VALUES
    ('26333444', 'Irma Gonzalez', 'f', 'Mariano Moreno 111');

INSERT INTO tareas
VALUES
    ('Colon 1111', 'vigilancia exterior', 'AM');
INSERT INTO tareas
VALUES
    ('Urquiza 234', 'vigilancia exterior', 'PM');
INSERT INTO tareas
VALUES
    ('Peru 345', 'vigilancia INTerior', 'AM');
INSERT INTO tareas
VALUES
    ('Avellaneda 890', 'vigilancia INTerior', 'PM');

SELECT nombre, t.domicilio, descripcion
FROM guardias
  cross join tareas as t;

SELECT nombre, t.domicilio, descripcion
FROM guardias as g
  cross join tareas as t
WHERE (g.sexo='f' and t.descripcion='vigilancia INTerior') or
    (g.sexo='m' and t.descripcion='vigilancia exterior');

--47 -Combinaci�n de m�s de dos tablas

--P1

 if object_id('socios') IS NOT NULL
  DROP TABLE socios;
 if object_id('deportes') IS NOT NULL
  DROP TABLE deportes;
 if object_id('inscriptos') IS NOT NULL
  DROP TABLE inscriptos;

 CREATE TABLE socios(
  documento CHAR(8) NOT NULL, 
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  PRIMARY KEY(documento)
 );
 CREATE TABLE deportes(
  codigo tinyINT identity,
  nombre VARCHAR(20),
  profesor VARCHAR(15),
  PRIMARY KEY(codigo)
 );
 CREATE TABLE inscriptos(
  documento CHAR(8) NOT NULL, 
  codigodeporte tinyINT NOT NULL,
  anio CHAR(4),
  matricula CHAR(1),--'s'=paga, 'n'=impaga
  PRIMARY KEY(documento,codigodeporte,anio)
 );

 INSERT INTO socios VALUES('22222222','Ana Acosta','Avellaneda 111');
 INSERT INTO socios VALUES('23333333','Betina Bustos','Bulnes 222');
 INSERT INTO socios VALUES('24444444','Carlos Castro','Caseros 333');
 INSERT INTO socios VALUES('25555555','Daniel Duarte','Dinamarca 44');

 INSERT INTO deportes VALUES('basquet','Juan Juarez');
 INSERT INTO deportes VALUES('futbol','Pedro Perez');
 INSERT INTO deportes VALUES('natacion','Marina Morales');
 INSERT INTO deportes VALUES('tenis','Marina Morales');

 INSERT INTO inscriptos VALUES ('22222222',3,'2006','s');
 INSERT INTO inscriptos VALUES ('23333333',3,'2006','s');
 INSERT INTO inscriptos VALUES ('24444444',3,'2006','n');

 INSERT INTO inscriptos VALUES ('22222222',3,'2005','s');
 INSERT INTO inscriptos VALUES ('22222222',3,'2007','n');

 INSERT INTO inscriptos VALUES ('24444444',1,'2006','s');
 INSERT INTO inscriptos VALUES ('24444444',2,'2006','s');

 INSERT INTO inscriptos VALUES ('26666666',0,'2006','s');

 SELECT s.nombre,d.nombre,anio
  FROM deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

 SELECT s.nombre,d.nombre,anio,matricula
  FROM deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

 SELECT s.nombre,d.nombre,anio,matricula
  FROM deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  WHERE s.documento='22222222';

  --50 -Union

  --P1
  if object_id('clientes') IS NOT NULL
  DROP TABLE clientes;
 if object_id('proveedores') IS NOT NULL
  DROP TABLE proveedores;
 if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;

 CREATE TABLE proveedores(
  codigo INT identity,
  nombre VARCHAR (30),
  domicilio VARCHAR(30),
  PRIMARY KEY(codigo)
 );
 CREATE TABLE clientes(
  codigo INT identity,
  nombre VARCHAR (30),
  domicilio VARCHAR(30),
  PRIMARY KEY(codigo)
 );
 CREATE TABLE empleados(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(20),
  apellido VARCHAR(20),
  domicilio VARCHAR(30),
  PRIMARY KEY(documento)
 );

 INSERT INTO proveedores VALUES('Bebida cola','Colon 123');
 INSERT INTO proveedores VALUES('Carnes Unica','Caseros 222');
 INSERT INTO proveedores VALUES('Lacteos Blanca','San Martin 987');
 INSERT INTO clientes VALUES('Supermercado Lopez','Avellaneda 34');
 INSERT INTO clientes VALUES('Almacen Anita','Colon 987');
 INSERT INTO clientes VALUES('Garcia Juan','Sucre 345');
 INSERT INTO empleados VALUES('23333333','Federico','Lopez','Colon 987');
 INSERT INTO empleados VALUES('28888888','Ana','Marquez','Sucre 333');
 INSERT INTO empleados VALUES('30111111','Luis','Perez','Caseros 956');

 SELECT nombre, domicilio FROM proveedores
  union
  SELECT nombre, domicilio FROM clientes
   union
   SELECT (apellido+' '+nombre), domicilio FROM empleados;

 SELECT nombre, domicilio, 'proveedor' as categoria FROM proveedores
  union
  SELECT nombre, domicilio, 'cliente' FROM clientes
   union
   SELECT (apellido+' '+nombre), domicilio , 'empleado' FROM empleados
  order by categoria;

  -- 51 Agregar y eliminar campos ( alter table - add - drop)

  --P1
   if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;

 CREATE TABLE empleados(
  apellido VARCHAR(20),
  nombre VARCHAR(20),
  domicilio VARCHAR(30),
  fechaingreso DATETIME
 );
 INSERT INTO empleados(apellido,nombre) VALUES ('Rodriguez','Pablo');

 alter table empleados
  add sueldo decimal(5,2);

 sp_columns empleados;

 alter table empleados
  add codigo INT identity;

 alter table empleados
  add documento CHAR(8) NOT NULL;

 alter table empleados
  add documento CHAR(8) NOT NULL default '00000000';

 sp_columns empleados;

 alter table empleados
  drop column sueldo;

 sp_columns empleados;

 alter table empleados
  drop column documento;

 alter table empleados
  drop column codigo,fechaingreso;

 sp_columns empleados;

 --52 -Alterar campos (alter table - alter)

 --P1
  if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;

 CREATE TABLE empleados(
  legajo INT NOT NULL,
  documento CHAR(7) NOT NULL,
  nombre VARCHAR(10),
  domicilio VARCHAR(30),
  ciudad VARCHAR(20) default 'Buenos Aires',
  sueldo decimal(6,2),
  cantidadhijos tinyINT default 0,
  PRIMARY KEY(legajo)
 );

 alter table empleados
  alter column nombre VARCHAR(30);

 sp_columns empleados;

 alter table empleados
  alter column sueldo decimal(6,2) NOT NULL;

 alter table empleados
  alter column documento CHAR(8) NOT NULL;

 alter table empleados
  alter column legajo tinyINT NOT NULL;

 INSERT INTO empleados VALUES(1,'22222222','Juan Perez','Colon 123','Cordoba',500,3);
 INSERT INTO empleados VALUES(2,'30000000',null,'Sucre 456','Cordoba',600,2);

 alter table empleados
  alter column nombre VARCHAR(30) NOT NULL;

 DELETE FROM empleados WHERE nombre is null;
 alter table empleados
  alter column nombre VARCHAR(30) NOT NULL;

 alter table empleados
  alter column ciudad VARCHAR(10);

 INSERT INTO empleados VALUES(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column ciudad VARCHAR(15);

 INSERT INTO empleados VALUES(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);

 alter table empleados
  alter column legajo INT identity;

  --53 -Campos calculados

  --P1 
if object_id('articulos') IS NOT NULL
  DROP TABLE articulos;

 CREATE TABLE articulos(
  codigo INT identity,
  descripcion VARCHAR(30),
  precio decimal(5,2) NOT NULL,
  cantidad smallINT NOT NULL default 0,
  montototal as precio *cantidad
 );

 INSERT INTO articulos VALUES('birome',1.5,100,150);

 INSERT INTO articulos VALUES('birome',1.5,100);
 INSERT INTO articulos VALUES('cuaderno 12 hojas',4.8,150);
 INSERT INTO articulos VALUES('lapices x 12',5,200);

 SELECT *FROM articulos;

 UPDATE articulos set precio=2 WHERE descripcion='birome';
 SELECT *FROM articulos;

 UPDATE articulos set cantidad=200 WHERE descripcion='birome';
 SELECT *FROM articulos;

 UPDATE articulos set montototal=300 WHERE descripcion='birome';

--55 - Subconsultas como expresi�n
--P1 
 if object_id('alumnos') IS NOT NULL
  DROP TABLE alumnos;
 CREATE TABLE alumnos(
  documento CHAR(8),
  nombre VARCHAR(30),
  nota decimal(4,2),
  PRIMARY KEY(documento),
  CONSTRAINT CK_alumnos_nota_valores check (nota>=0 and nota <=10),
 );
 INSERT INTO alumnos VALUES('30111111','Ana Algarbe',5.1);
 INSERT INTO alumnos VALUES('30222222','Bernardo Bustamante',3.2);
 INSERT INTO alumnos VALUES('30333333','Carolina Conte',4.5);
 INSERT INTO alumnos VALUES('30444444','Diana Dominguez',9.7);
 INSERT INTO alumnos VALUES('30555555','Fabian Fuentes',8.5);
 INSERT INTO alumnos VALUES('30666666','Gaston Gonzalez',9.70);

 SELECT alumnos.*
  FROM alumnos
  WHERE nota=
   (SELECT max(nota) FROM alumnos);

 SELECT titulo,autor, precio
  FROM libros
  WHERE precio=
   (SELECT titulo, max(precio) FROM libros);

 SELECT alumnos.*,
 (SELECT avg(nota) FROM alumnos)-nota as diferencia
  FROM alumnos
  WHERE nota<
   (SELECT avg(nota) FROM alumnos);

 UPDATE alumnos set nota=4
  WHERE nota=
   (SELECT min(nota) FROM alumnos);

 DELETE FROM alumnos
 WHERE nota<
   (SELECT avg(nota) FROM alumnos);

--56 - Subconsultas con in
--P1
  if (object_id('ciudades')) IS NOT NULL
   DROP TABLE ciudades;
  if (object_id('clientes')) IS NOT NULL
   DROP TABLE clientes;

 CREATE TABLE ciudades(
  codigo tinyINT identity,
  nombre VARCHAR(20),
  PRIMARY KEY (codigo)
 );

 CREATE TABLE clientes (
  codigo INT identity,
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  codigociudad tinyINT NOT NULL,
  PRIMARY KEY(codigo),
  CONSTRAINT FK_clientes_ciudad
   foreign key (codigociudad)
   references ciudades(codigo)
   on UPDATE cascade,
 );

 INSERT INTO ciudades (nombre) VALUES('Cordoba');
 INSERT INTO ciudades (nombre) VALUES('Cruz del Eje');
 INSERT INTO ciudades (nombre) VALUES('Carlos Paz');
 INSERT INTO ciudades (nombre) VALUES('La Falda');
 INSERT INTO ciudades (nombre) VALUES('Villa Maria');

 INSERT INTO clientes VALUES ('Lopez Marcos','Colon 111',1);
 INSERT INTO clientes VALUES ('Lopez Hector','San Martin 222',1);
 INSERT INTO clientes VALUES ('Perez Ana','San Martin 333',2);
 INSERT INTO clientes VALUES ('Garcia Juan','Rivadavia 444',3);
 INSERT INTO clientes VALUES ('Perez Luis','Sarmiento 555',3);
 INSERT INTO clientes VALUES ('Gomez Ines','San Martin 666',4);
 INSERT INTO clientes VALUES ('Torres Fabiola','Alem 777',5);
 INSERT INTO clientes VALUES ('Garcia Luis','Sucre 888',5);

 SELECT nombre
  FROM ciudades
  WHERE codigo in
   (SELECT codigociudad
     FROM clientes
     WHERE domicilio like 'San Martin %');

 SELECT distinct ci.nombre
  FROM ciudades as ci
  join clientes as cl
  on codigociudad=ci.codigo
  WHERE domicilio like 'San Martin%';

 SELECT nombre
  FROM ciudades
  WHERE codigo not in
   (SELECT codigociudad
     FROM clientes
     WHERE nombre like 'G%');

 SELECT codigociudad
  FROM clientes
  WHERE nombre like 'G%';

  --57 -Subconsultas any - some - all
  
  --P1
   if object_id('inscriptos') IS NOT NULL
  DROP TABLE inscriptos;
 if object_id('socios') IS NOT NULL
  DROP TABLE socios;

 CREATE TABLE socios(
  numero INT identity,
  documento CHAR(8),
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  PRIMARY KEY (numero)
 );
 
 CREATE TABLE inscriptos (
  numerosocio INT NOT NULL,
  deporte VARCHAR(20) NOT NULL,
  cuotas tinyINT
  CONSTRAINT CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  CONSTRAINT DF_inscriptos_cuotas default 0,
  PRIMARY KEY(numerosocio,deporte),
  CONSTRAINT FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on UPDATE cascade
   on DELETE cascade,
 );

 INSERT INTO socios VALUES('23333333','Alberto Paredes','Colon 111');
 INSERT INTO socios VALUES('24444444','Carlos Conte','Sarmiento 755');
 INSERT INTO socios VALUES('25555555','Fabian Fuentes','Caseros 987');
 INSERT INTO socios VALUES('26666666','Hector Lopez','Sucre 344');
 INSERT INTO inscriptos VALUES(1,'tenis',1);
 INSERT INTO inscriptos VALUES(1,'basquet',2);
 INSERT INTO inscriptos VALUES(1,'natacion',1);
 INSERT INTO inscriptos VALUES(2,'tenis',9);
 INSERT INTO inscriptos VALUES(2,'natacion',1);
 INSERT INTO inscriptos VALUES(2,'basquet',default);
 INSERT INTO inscriptos VALUES(2,'futbol',2);
 INSERT INTO inscriptos VALUES(3,'tenis',8);
 INSERT INTO inscriptos VALUES(3,'basquet',9);
 INSERT INTO inscriptos VALUES(3,'natacion',0);
 INSERT INTO inscriptos VALUES(4,'basquet',10);
 SELECT numero,nombre,deporte
  FROM socios as s
  join inscriptos as i
  on numerosocio=numero;
 SELECT nombre
  FROM socios
  join inscriptos as i
  on numero=numerosocio
  WHERE deporte='natacion' and 
  numero= any
  (SELECT numerosocio
    FROM inscriptos as i
    WHERE deporte='tenis');
 SELECT deporte
  FROM inscriptos as i
  WHERE numerosocio=1 and
  deporte= any
   (SELECT deporte
    FROM inscriptos as i
    WHERE numerosocio=2);
 SELECT i1.deporte
  FROM inscriptos as i1
  join inscriptos as i2
  on i1.deporte=i2.deporte
  WHERE i1.numerosocio=1 and
  i2.numerosocio=2;
 SELECT deporte
  FROM inscriptos as i
  WHERE numerosocio=2 and
  cuotas>any
   (SELECT cuotas
    FROM inscriptos
    WHERE numerosocio=1);

 SELECT deporte
  FROM inscriptos as i
  WHERE numerosocio=2 and
  cuotas>all
   (SELECT cuotas
    FROM inscriptos
    WHERE numerosocio=1);

 DELETE FROM inscriptos
  WHERE numerosocio=any
   (SELECT numerosocio 
    FROM inscriptos
    WHERE cuotas=0);
--58 - Subconsultas correlacionadas
--P1
 if object_id('inscriptos') IS NOT NULL
  DROP TABLE inscriptos;
 if object_id('socios') IS NOT NULL
  DROP TABLE socios;
 CREATE TABLE socios(
  numero INT identity,
  documento CHAR(8),
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  PRIMARY KEY (numero)
 );
 CREATE TABLE inscriptos (
  numerosocio INT NOT NULL,
  deporte VARCHAR(20) NOT NULL,
  cuotas tinyINT
  CONSTRAINT CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  CONSTRAINT DF_inscriptos_cuotas default 0,
  PRIMARY KEY(numerosocio,deporte),
  CONSTRAINT FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on UPDATE cascade
   on DELETE cascade,
 );
 INSERT INTO socios VALUES('23333333','Alberto Paredes','Colon 111');
 INSERT INTO socios VALUES('24444444','Carlos Conte','Sarmiento 755');
 INSERT INTO socios VALUES('25555555','Fabian Fuentes','Caseros 987');
 INSERT INTO socios VALUES('26666666','Hector Lopez','Sucre 344');
 INSERT INTO inscriptos VALUES(1,'tenis',1);
 INSERT INTO inscriptos VALUES(1,'basquet',2);
 INSERT INTO inscriptos VALUES(1,'natacion',1);
 INSERT INTO inscriptos VALUES(2,'tenis',9);
 INSERT INTO inscriptos VALUES(2,'natacion',1);
 INSERT INTO inscriptos VALUES(2,'basquet',default);
 INSERT INTO inscriptos VALUES(2,'futbol',2);
 INSERT INTO inscriptos VALUES(3,'tenis',8);
 INSERT INTO inscriptos VALUES(3,'basquet',9);
 INSERT INTO inscriptos VALUES(3,'natacion',0);
 INSERT INTO inscriptos VALUES(4,'basquet',10);
 SELECT nombre,domicilio,
  (SELECT count(*)
    FROM inscriptos as i
    WHERE s.numero=i.numerosocio) as 'deportes'
 FROM socios as s;
 SELECT nombre,
  (SELECT (count(*)*10)
    FROM inscriptos as i
    WHERE s.numero=i.numerosocio) as total,
  (SELECT sum(i.cuotas)
    FROM inscriptos as i
    WHERE s.numero=i.numerosocio) as pagas
 FROM socios as s;
 SELECT nombre,
  count(i.deporte)*10 as total,
  sum(i.cuotas) as pagas
  FROM socios as s
  join inscriptos as i
  on numero=numerosocio
  group by nombre;

--59 -Exists y No Exists
--P1
 if object_id('inscriptos') IS NOT NULL
  DROP TABLE inscriptos;
 if object_id('socios') IS NOT NULL
  DROP TABLE socios;

 CREATE TABLE socios(
  numero INT identity,
  documento CHAR(8),
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  PRIMARY KEY (numero)
 );
 CREATE TABLE inscriptos (
  numerosocio INT NOT NULL,
  deporte VARCHAR(20) NOT NULL,
  cuotas tinyINT
  CONSTRAINT CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  CONSTRAINT DF_inscriptos_cuotas default 0,
  PRIMARY KEY(numerosocio,deporte),
  CONSTRAINT FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on UPDATE cascade
   on DELETE cascade,
 );
 INSERT INTO socios VALUES('23333333','Alberto Paredes','Colon 111');
 INSERT INTO socios VALUES('24444444','Carlos Conte','Sarmiento 755');
 INSERT INTO socios VALUES('25555555','Fabian Fuentes','Caseros 987');
 INSERT INTO socios VALUES('26666666','Hector Lopez','Sucre 344');
 INSERT INTO inscriptos VALUES(1,'tenis',1);
 INSERT INTO inscriptos VALUES(1,'basquet',2);
 INSERT INTO inscriptos VALUES(1,'natacion',1);
 INSERT INTO inscriptos VALUES(2,'tenis',9);
 INSERT INTO inscriptos VALUES(2,'natacion',1);
 INSERT INTO inscriptos VALUES(2,'basquet',default);
 INSERT INTO inscriptos VALUES(2,'futbol',2);
 INSERT INTO inscriptos VALUES(3,'tenis',8);
 INSERT INTO inscriptos VALUES(3,'basquet',9);
 INSERT INTO inscriptos VALUES(3,'natacion',0);
 INSERT INTO inscriptos VALUES(4,'basquet',10);
 SELECT nombre
  FROM socios as s
  WHERE exists
   (SELECT *FROM inscriptos as i
     WHERE s.numero=i.numerosocio
     and i.deporte='natacion');
 SELECT nombre
  FROM socios as s
  WHERE not exists
   (SELECT *FROM inscriptos as i
     WHERE s.numero=i.numerosocio
     and i.deporte='natacion');
 SELECT s.*
  FROM socios as s
  WHERE exists
   (SELECT *FROM inscriptos as i
     WHERE s.numero=i.numerosocio
     and i.cuotas=10);
--60 -Subconsulta en lugar de una tabla
--P1
 if object_id('inscriptos') IS NOT NULL
  DROP TABLE inscriptos;
 if object_id('socios') IS NOT NULL
  DROP TABLE socios;
 if object_id('deportes') IS NOT NULL
  DROP TABLE deportes;
 CREATE TABLE socios(
  documento CHAR(8) NOT NULL, 
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  PRIMARY KEY(documento)
 );
 CREATE TABLE deportes(
  codigo tinyINT identity,
  nombre VARCHAR(20),
  profesor VARCHAR(15),
  PRIMARY KEY(codigo)
 );
 CREATE TABLE inscriptos(
  documento CHAR(8) NOT NULL, 
  codigodeporte tinyINT NOT NULL,
  a�o CHAR(4),
  matricula CHAR(1),--'s'=paga, 'n'=impaga
  PRIMARY KEY(documento,codigodeporte,a�o),
  CONSTRAINT FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on UPDATE cascade
   on DELETE cascade
 );
 INSERT INTO socios VALUES('22222222','Ana Acosta','Avellaneda 111');
 INSERT INTO socios VALUES('23333333','Betina Bustos','Bulnes 222');
 INSERT INTO socios VALUES('24444444','Carlos Castro','Caseros 333');
 INSERT INTO socios VALUES('25555555','Daniel Duarte','Dinamarca 44');
 INSERT INTO deportes VALUES('basquet','Juan Juarez');
 INSERT INTO deportes VALUES('futbol','Pedro Perez');
 INSERT INTO deportes VALUES('natacion','Marina Morales');
 INSERT INTO deportes VALUES('tenis','Marina Morales');
 INSERT INTO inscriptos VALUES ('22222222',3,'2006','s');
 INSERT INTO inscriptos VALUES ('23333333',3,'2006','s');
 INSERT INTO inscriptos VALUES ('24444444',3,'2006','n');
 INSERT INTO inscriptos VALUES ('22222222',3,'2005','s');
 INSERT INTO inscriptos VALUES ('22222222',3,'2007','n');
 INSERT INTO inscriptos VALUES ('24444444',1,'2006','s');
 INSERT INTO inscriptos VALUES ('24444444',2,'2006','s');
 SELECT i.documento,i.codigodeporte,d.nombre as deporte, a�o, matricula, d.profesor
 FROM deportes as d
 join inscriptos as i
 on d.codigo=i.codigodeporte;
 SELECT s.nombre,td.deporte,td.profesor,td.a�o,td.matricula
  FROM socios as s
  join (SELECT i.documento,i.codigodeporte,d.nombre as deporte, a�o, matricula, d.profesor
	FROM deportes as d
	join inscriptos as i
	on d.codigo=i.codigodeporte) as td
  on td.documento=s.documento;

--61 -Subconsulta (UPDATE - DELETE)
--P1
 if object_id('inscriptos') IS NOT NULL
  DROP TABLE inscriptos;
 if object_id('socios') IS NOT NULL
  DROP TABLE socios;
 CREATE TABLE socios(
  numero INT identity,
  documento CHAR(8),
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  PRIMARY KEY (numero)
 );
 CREATE TABLE inscriptos (
  numerosocio INT NOT NULL,
  deporte VARCHAR(20) NOT NULL,
  matricula CHAR(1),
  PRIMARY KEY(numerosocio,deporte),
  CONSTRAINT FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
 );
 INSERT INTO socios VALUES('23333333','Alberto Paredes','Colon 111');
 INSERT INTO socios VALUES('24444444','Carlos Conte','Sarmiento 755');
 INSERT INTO socios VALUES('25555555','Fabian Fuentes','Caseros 987');
 INSERT INTO socios VALUES('26666666','Hector Lopez','Sucre 344');
 INSERT INTO inscriptos VALUES(1,'tenis','s');
 INSERT INTO inscriptos VALUES(1,'basquet','s');
 INSERT INTO inscriptos VALUES(1,'natacion','s');
 INSERT INTO inscriptos VALUES(2,'tenis','s');
 INSERT INTO inscriptos VALUES(2,'natacion','s');
 INSERT INTO inscriptos VALUES(2,'basquet','n');
 INSERT INTO inscriptos VALUES(2,'futbol','n');
 INSERT INTO inscriptos VALUES(3,'tenis','s');
 INSERT INTO inscriptos VALUES(3,'basquet','s');
 INSERT INTO inscriptos VALUES(3,'natacion','n');
 INSERT INTO inscriptos VALUES(4,'basquet','n');
 UPDATE inscriptos set matricula='s'
  WHERE numerosocio=
   (SELECT numero
     FROM socios
     WHERE documento='25555555');
 DELETE FROM inscriptos
  WHERE numerosocio in
   (SELECT numero
    FROM socios as s
    join inscriptos
    on numerosocio=numero
    WHERE matricula='n');
--62 subconsulta (insert)
--P1
 if object_id('facturas') IS NOT NULL
  DROP TABLE facturas;
 if object_id('clientes') IS NOT NULL
  DROP TABLE clientes;
 CREATE TABLE clientes(
  codigo INT identity,
  nombre VARCHAR(30),
  domicilio VARCHAR(30),
  PRIMARY KEY(codigo)
 );
 CREATE TABLE facturas(
  numero INT NOT NULL,
  fecha DATETIME,
  codigocliente INT NOT NULL,
  total decimal(6,2),
  PRIMARY KEY(numero),
  CONSTRAINT FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   on UPDATE cascade
 );
 INSERT INTO clientes VALUES('Juan Lopez','Colon 123');
 INSERT INTO clientes VALUES('Luis Torres','Sucre 987');
 INSERT INTO clientes VALUES('Ana Garcia','Sarmiento 576');
 INSERT INTO clientes VALUES('Susana Molina','San Martin 555');
 INSERT INTO facturas VALUES(1200,'2007-01-15',1,300);
 INSERT INTO facturas VALUES(1201,'2007-01-15',2,550);
 INSERT INTO facturas VALUES(1202,'2007-01-15',3,150);
 INSERT INTO facturas VALUES(1300,'2007-01-20',1,350);
 INSERT INTO facturas VALUES(1310,'2007-01-22',3,100);
 if object_id ('clientespref') IS NOT NULL
  DROP TABLE clientespref;
 CREATE TABLE clientespref(
  nombre VARCHAR(30),
  domicilio VARCHAR(30)
 );
 INSERT INTO clientespref
  SELECT nombre,domicilio
   FROM clientes 
   WHERE codigo in 
    (SELECT codigocliente
     FROM clientes as c
     join facturas as f
     on codigocliente=codigo
     group by codigocliente
     having sum(total)>500);
 SELECT *FROM clientespref;
 --63 -Crear tabla a partir de otra (SELECT - INTo)
 --P1
  if object_id('empleados')IS NOT NULL
  DROP TABLE empleados;
 if object_id('sucursales')IS NOT NULL
  DROP TABLE sucursales;
 CREATE TABLE sucursales( 
  codigo INT identity,
  ciudad VARCHAR(30) NOT NULL,
  PRIMARY KEY(codigo)
 ); 
 CREATE TABLE empleados( 
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  domicilio VARCHAR(30),
  seccion VARCHAR(20),
  sueldo decimal(6,2),
  codigosucursal INT,
  PRIMARY KEY(documento),
  CONSTRAINT FK_empleados_sucursal
   foreign key (codigosucursal)
   references sucursales(codigo)
   on UPDATE cascade
 ); 
 INSERT INTO sucursales VALUES('Cordoba');
 INSERT INTO sucursales VALUES('Villa Maria');
 INSERT INTO sucursales VALUES('Carlos Paz');
 INSERT INTO sucursales VALUES('Cruz del Eje');
 INSERT INTO empleados VALUES('22222222','Ana Acosta','Avellaneda 111','Secretaria',500,1);
 INSERT INTO empleados VALUES('23333333','Carlos Caseros','Colon 222','Sistemas',800,1);
 INSERT INTO empleados VALUES('24444444','Diana Dominguez','Dinamarca 333','Secretaria',550,2);
 INSERT INTO empleados VALUES('25555555','Fabiola Fuentes','Francia 444','Sistemas',750,2);
 INSERT INTO empleados VALUES('26666666','Gabriela Gonzalez','Guemes 555','Secretaria',580,3);
 INSERT INTO empleados VALUES('27777777','Juan Juarez','Jujuy 777','Secretaria',500,4);
 INSERT INTO empleados VALUES('28888888','Luis Lopez','Lules 888','Sistemas',780,4);
 INSERT INTO empleados VALUES('29999999','Maria Morales','Marina 999','Contaduria',670,4);
 SELECT documento,nombre,domicilio,seccion,sueldo,ciudad
  FROM empleados
  join sucursales on codigosucursal=codigo;
 if object_id('secciones') IS NOT NULL
  DROP TABLE secciones;
 SELECT distinct seccion as nombre
  INTo secciones
  FROM empleados;
 SELECT *FROM secciones;
 if object_id('sueldosxseccion') IS NOT NULL
  DROP TABLE sueldosxseccion;
 SELECT seccion, sum(sueldo) as total
  INTo sueldosxseccion
  FROM empleados
  group by seccion;
 SELECT *FROM sueldosxseccion;
 if object_id('maximossueldos') IS NOT NULL
  DROP TABLE maximossueldos;
 SELECT top 3 *
  INTo maximossueldos
  FROM empleados
  order by sueldo;
 SELECT *FROM maximossueldos;
 if object_id('sucursalCordoba') IS NOT NULL
  DROP TABLE sucursalCordoba;
 SELECT nombre,ciudad
  INTo sucursalCordoba
  FROM empleados
  join sucursales
  on codigosucursal=codigo
  WHERE ciudad='Cordoba';
 SELECT *FROM sucursalCordoba;
 --65  Vistas
 --P1
  if object_id('inscriptos') IS NOT NULL  
  DROP TABLE inscriptos;
 if object_id('socios') IS NOT NULL  
  DROP TABLE socios;
 if object_id('profesores') IS NOT NULL  
  DROP TABLE profesores; 
 if object_id('cursos') IS NOT NULL  
  DROP TABLE cursos;
 CREATE TABLE socios(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(40),
  domicilio VARCHAR(30),
  CONSTRAINT PK_socios_documento
   PRIMARY KEY (documento)
 );
 CREATE TABLE profesores(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(40),
  domicilio VARCHAR(30),
  CONSTRAINT PK_profesores_documento
   PRIMARY KEY (documento)
 );
 CREATE TABLE cursos(
  numero tinyINT identity,
  deporte VARCHAR(20),
  dia VARCHAR(15),
   CONSTRAINT CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  documentoprofesor CHAR(8),
  CONSTRAINT PK_cursos_numero
   PRIMARY KEY (numero),
 );
 CREATE TABLE inscriptos(
  documentosocio CHAR(8) NOT NULL,
  numero tinyINT NOT NULL,
  matricula CHAR(1),
  CONSTRAINT CK_inscriptos_matricula check (matricula in('s','n')),
  CONSTRAINT PK_inscriptos_documento_numero
   PRIMARY KEY (documentosocio,numero)
 );
 INSERT INTO socios VALUES('30000000','Fabian Fuentes','Caseros 987');
 INSERT INTO socios VALUES('31111111','Gaston Garcia','Guemes 65');
 INSERT INTO socios VALUES('32222222','Hector Huerta','Sucre 534');
 INSERT INTO socios VALUES('33333333','Ines Irala','Bulnes 345');
 INSERT INTO profesores VALUES('22222222','Ana Acosta','Avellaneda 231');
 INSERT INTO profesores VALUES('23333333','Carlos Caseres','Colon 245');
 INSERT INTO profesores VALUES('24444444','Daniel Duarte','Sarmiento 987');
 INSERT INTO profesores VALUES('25555555','Esteban Lopez','Sucre 1204');
 INSERT INTO cursos VALUES('tenis','lunes','22222222');
 INSERT INTO cursos VALUES('tenis','martes','22222222');
 INSERT INTO cursos VALUES('natacion','miercoles','22222222');
 INSERT INTO cursos VALUES('natacion','jueves','23333333');
 INSERT INTO cursos VALUES('natacion','viernes','23333333');
 INSERT INTO cursos VALUES('futbol','sabado','24444444');
 INSERT INTO cursos VALUES('futbol','lunes','24444444');
 INSERT INTO cursos VALUES('basquet','martes','24444444');
 INSERT INTO inscriptos VALUES('30000000',1,'s');
 INSERT INTO inscriptos VALUES('30000000',3,'n');
 INSERT INTO inscriptos VALUES('30000000',6,null);
 INSERT INTO inscriptos VALUES('31111111',1,'s');
 INSERT INTO inscriptos VALUES('31111111',4,'s');
 INSERT INTO inscriptos VALUES('32222222',8,'s');
 if object_id('vista_club') IS NOT NULL drop view vista_club;
 create view vista_club as
  SELECT s.nombre as socio,s.documento as docsocio,s.domicilio as domsocio,c.deporte,dia,
   p.nombre as profesor, matricula
   FROM socios as s
   full join inscriptos as i
   on s.documento=i.documentosocio
   full join cursos as c
   on i.numero=c.numero
   full join profesores as p
   on c.documentoprofesor=p.documento;
 SELECT *FROM vista_club;
 SELECT deporte,dia,count(socio) as cantidad
  FROM vista_club
  WHERE deporte IS NOT NULL
  group by deporte,dia
  order by cantidad;
 SELECT deporte,dia FROM vista_club
  WHERE socio is null and deporte IS NOT NULL;
 SELECT socio FROM vista_club
  WHERE deporte is null and socio IS NOT NULL;
 SELECT profesor FROM vista_club WHERE deporte is null and profesor IS NOT NULL;
 SELECT socio, docsocio FROM vista_club WHERE deporte IS NOT NULL and matricula <> 's';
 SELECT distinct profesor,dia
  FROM vista_club WHERE profesor IS NOT NULL;
 SELECT distinct profesor,dia
  FROM vista_club WHERE profesor IS NOT NULL
  order by dia;
 SELECT socio FROM vista_club
  WHERE deporte='tenis' and dia='lunes';
 if object_id('vista_inscriptos') IS NOT NULL
  drop view vista_inscriptos;
 CREATE VIEW vista_inscriptos as
  SELECT deporte,dia,
   (SELECT count(*) FROM inscriptos as i
    WHERE i.numero=c.numero) as cantidad
  FROM cursos as c;
 SELECT *FROM vista_inscriptos;
--67 - Lenguaje de control de flujo (case)
--P1
if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;
 CREATE TABLE empleados(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  sexo CHAR(1),
  fechanacimiento DATETIME,
  fechaingreso DATETIME,
  cantidadhijos tinyINT,
  sueldo decimal(5,2),
  PRIMARY KEY(documento)
);
 INSERT INTO empleados VALUES ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
 INSERT INTO empleados VALUES ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
 INSERT INTO empleados VALUES ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
 INSERT INTO empleados VALUES ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
 INSERT INTO empleados VALUES ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
 INSERT INTO empleados VALUES ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
 INSERT INTO empleados VALUES ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
 INSERT INTO empleados VALUES ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
 INSERT INTO empleados VALUES ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);
 SELECT sexo, count(*) as cantidad, obsequio=
  case 
   when sexo='f' then 'rosas'
   else 'corbata'
  end
  FROM empleados
  WHERE datepart(month,fechanacimiento)=5
  group by sexo;
 SELECT nombre,datepart(year,fechaingreso) as a�oingreso,
  datepart(year,getdate())-datepart(year,fechaingreso) as A�osdeServicio, placa=
   case (datepart(year,getdate())-datepart(year,fechaingreso)) %10
     when 0 then 'Si'  --si la cantidad de a�os es divisible por 10
     else 'No'
   end
  FROM empleados
  WHERE datepart(month,fechaingreso)=4;
 SELECT nombre,sueldo,cantidadhijos,porhijo=
  case 
   when sueldo<=500 then 200
   else 100
  end,
 salariofamilar=
  case
   when sueldo<=500 then 200*cantidadhijos
   else 100*cantidadhijos
  end,
 sueldototal=
  case
   when sueldo<=500 then sueldo+(200*cantidadhijos)
   else sueldo+(100*cantidadhijos)
  end
  FROM empleados
  order by sueldototal;
  --68 -Lenguaje de control de flujo (if)
  --P1
 if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;

 CREATE TABLE empleados(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  sexo CHAR(1),
  fechanacimiento DATETIME,
  sueldo decimal(5,2),
  PRIMARY KEY(documento)
);
 INSERT INTO empleados VALUES ('22333111','Juan Perez','m','1970-05-10',550);
 INSERT INTO empleados VALUES ('25444444','Susana Morales','f','1975-11-06',650);
 INSERT INTO empleados VALUES ('20111222','Hector Pereyra','m','1965-03-25',510);
 INSERT INTO empleados VALUES ('30000222','Luis LUque','m','1980-03-29',700);
 INSERT INTO empleados VALUES ('20555444','Laura Torres','f','1965-12-22',400);
 INSERT INTO empleados VALUES ('30000234','Alberto Soto','m','1989-10-10',420);
 INSERT INTO empleados VALUES ('20125478','Ana Gomez','f','1976-09-21',350);
 INSERT INTO empleados VALUES ('24154269','Ofelia Garcia','f','1974-05-12',390);
 INSERT INTO empleados VALUES ('30415426','Oscar Torres','m','1978-05-02',400);
 if exists(SELECT *FROM empleados
	   WHERE datepart(month,fechanacimiento)=5)--si hay empleados que cumplan en mayo
  (SELECT sexo,count(*) as cantidad 
   FROM empleados
   WHERE datepart(month,fechanacimiento)=5
   group by sexo)
 else SELECT 'no hay empleados que cumplan en mayo';
 --P2
 if object_id('entradas') IS NOT NULL
  DROP TABLE entradas;
 CREATE TABLE entradas(
  sala tinyINT,
  fechahora DATETIME,
  capacidad smallINT,
  entradasvendidas smallINT,
  PRIMARY KEY(sala,fechahora)
 );
 INSERT INTO entradas VALUES(1,'2006-05-10 20:00',300,50);
 INSERT INTO entradas VALUES(1,'2006-05-10 23:00',300,250);
 INSERT INTO entradas VALUES(2,'2006-05-10 20:00',400,350);
 INSERT INTO entradas VALUES(2,'2006-05-11 20:00',400,380);
 INSERT INTO entradas VALUES(2,'2006-05-11 23:00',400,400);
 INSERT INTO entradas VALUES(3,'2006-05-12 20:00',350,350);
 INSERT INTO entradas VALUES(3,'2006-05-12 22:30',350,100);
 INSERT INTO entradas VALUES(4,'2006-05-12 20:00',250,0);
 if exists
  (SELECT *FROM entradas WHERE capacidad>entradasvendidas)
  SELECT sala,fechahora,capacidad-entradasvendidas as disponibles
   FROM entradas
   WHERE capacidad>entradasvendidas
 else SELECT 'Todas las entradas estan agotadas';
 --70 -Procedimientos almacenados (crear - ejecutar)
 --P1
  if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;
 CREATE TABLE empleados(
  documento CHAR(8),
  nombre VARCHAR(20),
  apellido VARCHAR(20),
  sueldo decimal(6,2),
  cantidadhijos tinyINT,
  seccion VARCHAR(20),
  PRIMARY KEY(documento)
 );
 INSERT INTO empleados VALUES('22222222','Juan','Perez',300,2,'Contaduria');
 INSERT INTO empleados VALUES('22333333','Luis','Lopez',300,0,'Contaduria');
 INSERT INTO empleados VALUES ('22444444','Marta','Perez',500,1,'Sistemas');
 INSERT INTO empleados VALUES('22555555','Susana','Garcia',400,2,'Secretaria');
 INSERT INTO empleados VALUES('22666666','Jose Maria','Morales',400,3,'Secretaria');
 if object_id('pa_empleados_sueldo') IS NOT NULL
  drop procedure pa_empleados_sueldo;
 create procedure pa_empleados_sueldo
 as
  SELECT nombre,apellido,sueldo
   FROM empleados;

 exec pa_empleados_sueldo;

 if object_id('pa_empleados_hijos') IS NOT NULL
  drop procedure pa_empleados_hijos;

 create procedure pa_empleados_hijos
 as
  SELECT nombre,apellido,cantidadhijos
   FROM empleados
   WHERE cantidadhijos>0;
 exec pa_empleados_hijos;
 UPDATE empleados set cantidadhijos=1 WHERE documento='22333333';
 exec pa_empleados_hijos;
 --73 -Funciones escalares (crear y llamar)
--P1
if object_id('consultas') IS NOT NULL
  DROP TABLE consultas;
if object_id('medicos') IS NOT NULL
  DROP TABLE medicos;
CREATE TABLE medicos
(
    documento CHAR(8) NOT NULL,
    nombre VARCHAR(30),
    CONSTRAINT PK_medicos 
   PRIMARY KEY clustered (documento)
);

CREATE TABLE consultas
(
    fecha DATETIME,
    medico CHAR(8) NOT NULL,
    paciente VARCHAR(30),
    CONSTRAINT PK_consultas
   PRIMARY KEY (fecha,medico),
    CONSTRAINT FK_consultas_medico
   foreign key (medico)
   references medicos(documento)
   on UPDATE cascade
   on DELETE cascade
);
INSERT INTO medicos
VALUES('22222222', 'Alfredo Acosta');
INSERT INTO medicos
VALUES('23333333', 'Pedro Perez');
INSERT INTO medicos
VALUES('24444444', 'Marcela Morales');
INSERT INTO consultas
VALUES('2007/03/26 8:00', '22222222', 'Juan Juarez');
INSERT INTO consultas
VALUES('2007/03/26 8:00', '23333333', 'Gaston Gomez');
INSERT INTO consultas
VALUES('2007/03/26 8:30', '22222222', 'Nora Norte');
INSERT INTO consultas
VALUES('2007/03/28 9:00', '22222222', 'Juan Juarez');
INSERT INTO consultas
VALUES('2007/03/29 8:00', '24444444', 'Nora Norte');
INSERT INTO consultas
VALUES('2007/03/24 8:30', '22222222', 'Hector Huerta');
INSERT INTO consultas
VALUES('2007/03/24 9:30', '23333333', 'Hector Huerta');
if object_id('f_nombreDia') IS NOT NULL
  drop function f_nombreDia;
create function f_nombreDia
 (@fecha VARCHAR(30))
  returns VARCHAR(10)
  as
  begin
    declare @nombre VARCHAR(10)
    set @nombre='Fecha inv�lida'
    if (isdate(@fecha)=1)
    begin
        set @fecha=cast(@fecha as DATETIME)
        set @nombre=
      case datename(weekday,@fecha)
       when 'Monday' then 'lunes'
       when 'Tuesday' then 'martes'
       when 'Wednesday' then 'mi�rcoles'
       when 'Thursday' then 'jueves'
       when 'Friday' then 'viernes'
       when 'Saturday' then 's�bado'
       when 'Sunday' then 'domingo'
      end--case
    end--si es una fecha v�lida
    return @nombre
end;
if object_id('f_horario') IS NOT NULL
  drop function f_horario;
create function f_horario
 (@fecha VARCHAR(30))
  returns VARCHAR(5)
  as
  begin
    declare @nombre VARCHAR(5)
    set @nombre='Fecha inv�lida'
    if (isdate(@fecha)=1)
    begin
        set @fecha=cast(@fecha as DATETIME)
        set @nombre=rtrim(cast(datepart(hour,@fecha) as CHAR(2)))+':'
        set @nombre=@nombre+rtrim(cast(datepart(minute,@fecha) as CHAR(2)))
    end--si es una fecha v�lida
    return @nombre
end;
if object_id('f_fecha') IS NOT NULL
  drop function f_fecha;
create function f_fecha
 (@fecha VARCHAR(30))
  returns VARCHAR(12)
  as
  begin
    declare @nombre VARCHAR(12)
    set @nombre='Fecha inv�lida'
    if (isdate(@fecha)=1)
    begin
        set @fecha=cast(@fecha as DATETIME)
        set @nombre=rtrim(cast(datepart(day,@fecha) as CHAR(2)))+'/'
        set @nombre=@nombre+rtrim(cast(datepart(month,@fecha) as CHAR(2)))+'/'
        set @nombre=@nombre+rtrim(cast(datepart(year,@fecha) as CHAR(4)))
    end--si es una fecha v�lida
    return @nombre
end;
SELECT dbo.f_nombredia(fecha) as dia,
    dbo.f_fecha(fecha) as fecha,
    dbo.f_horario(fecha) as horario,
    paciente
FROM consultas as c
    join medicos as m
    on m.documento=c.medico
WHERE m.nombre='Alfredo Acosta';

SELECT fecha, m.nombre
FROM consultas as c
    join medicos as m
    on m.documento=c.medico
WHERE dbo.f_nombredia(fecha)='s�bado';
declare @valor CHAR(30)
set @valor='2007/04/09'
SELECT dbo.f_nombreDia(@valor);

--P2
if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;
 CREATE TABLE empleados(
  documento CHAR(8) NOT NULL,
  nombre VARCHAR(30),
  fechanacimiento DATETIME,
  fechaingreso DATETIME,
  telefono CHAR(12),
  mail VARCHAR(50)
 );
  INSERT INTO empleados VALUES('22222222', 'Ana Acosta', '1970/10/02', '1995/10/10', '4556677', 'anitaacosta@hotmail.com');
  INSERT INTO empleados VALUES('25555555', 'Bernardo Bustos', '1973/01/15', '1999/02/15', '4789012', null);
  INSERT INTO empleados VALUES('30000000', 'Carlos Caseros', '1980/5/25', '2001/05/05', null, null);
  INSERT INTO empleados VALUES('32222222', 'Estela Esper', '1985/02/20', '2006/12/12', null, 'estelaesper@gmail.com');

 if object_id('f_edad') IS NOT NULL
  drop function f_edad;

 create function f_edad
 (@fechaactual DATETIME,
  @fecha DATETIME='2007/01/01'
  )
  returns tinyINT
  as
  begin
    declare @edad tinyINT
    set @edad=null
    if (@fechaactual>=@fecha)
    begin
      set @edad=datepart(year,@fechaactual)-datepart(year,@fecha)
      if (datepart(month,@fecha)>datepart(month,@fechaactual))
       set @edad=@edad-1
      else 
        if (datepart(month,@fecha)=datepart(month,@fechaactual)) and 
	   (datepart(day,@fecha)>datepart(day,@fechaactual))
          set @edad=@edad-1
     end--es mayor la actual
    return @edad
  end;
 SELECT nombre, dbo.f_edad(getdate(),fechanacimiento) as edad
  FROM empleados;
 SELECT nombre, dbo.f_edad(fechaingreso,fechanacimiento) as 'edad al ingresar',
   dbo.f_edad(getdate(),fechaingreso) as 'a�os de servicio'
  FROM empleados;
 SELECT dbo.f_edad(getdate(),'1971/05/25');
 SELECT dbo.f_edad();
 SELECT dbo.f_edad(getdate(),default);
  if object_id('f_valorNulo') IS NOT NULL
   drop function f_valorNulo;
 create function f_valorNulo
 (@valor VARCHAR(50))
 returns VARCHAR(50)
 begin
  if @valor is null
   set @valor='No tiene'
  return @valor
 end;
 SELECT documento,nombre,fechanacimiento,
  dbo.f_valorNulo(telefono) as telefono,
  dbo.f_valorNulo(mail) as mail
  FROM empleados;

--74 -Funciones de tabla de varias instrucciones
--P1
 if object_id('empleados') IS NOT NULL
  DROP TABLE empleados;
 CREATE TABLE empleados(
  documento CHAR(8) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  domicilio VARCHAR(30),
  ciudad VARCHAR(30),
  fechanacimiento DATETIME,
  CONSTRAINT PK_empleados
   PRIMARY KEY(documento)
 );
 INSERT INTO empleados VALUES('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10');
 INSERT INTO empleados VALUES('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15');
 INSERT INTO empleados VALUES('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25');
 INSERT INTO empleados VALUES('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');

 if object_id('f_empleados') IS NOT NULL
  drop function f_empleados;
 create function f_empleados
 (@opcion VARCHAR(10)
 )
 returns @listado table
 (documento CHAR(8),
 nombre VARCHAR(60),
 domicilio VARCHAR(60),
 nacimiento VARCHAR(12))
 as 
 begin
  if @opcion not in ('total','parcial')
    set @opcion='parcial'
  if @opcion='total'
   insert @listado 
    SELECT documento,
    (apellido+' '+nombre),
    (domicilio+' ('+ciudad+')'), 
    cast(fechanacimiento as VARCHAR(12))
     FROM empleados
  else
   insert @listado
   SELECT documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as CHAR(4))
   FROM empleados
  return
end;
 SELECT *FROM dbo.f_empleados('total');
 SELECT *FROM dbo.f_empleados();
 SELECT *FROM dbo.f_empleados('');
 SELECT *FROM dbo.f_empleados('parcial')
  WHERE domicilio='SFM';