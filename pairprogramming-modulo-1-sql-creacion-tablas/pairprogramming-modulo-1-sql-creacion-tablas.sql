/*PAIR PROGRAMMING CREACION DE TABLAS*/

/*Creamos la base de datos y nos ponemos en ella*/

 CREATE SCHEMA `tienda_zapatillas`;
 USE `tienda_zapatillas`;
 
 /*Creamos la tabla Zapatillas poniendo como primary key id_zapatilla*/
 
 CREATE TABLE `Zapatillas`(
`id_zapatilla` INT NOT NULL AUTO_INCREMENT,
`modelo` VARCHAR(45) NOT NULL,
`color`VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_zapatilla`));

 /*Creamos la tabla Clientes poniendo como primary key id_cliente*/

CREATE TABLE `Clientes`(
`id_cliente` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(45) NOT NULL,
`numero_telefono` INT(9) NOT NULL,
`email` VARCHAR(45) NOT NULL,
`direccion` VARCHAR(45) NOT NULL,
`ciudad` VARCHAR(45) DEFAULT NULL,
`provincia` VARCHAR(45) NOT NULL,
`pais` VARCHAR(45) NOT NULL,
`codigo_postal` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_cliente`));

 /*Creamos la tabla Empleados poniendo como primary key id_empleado*/

CREATE TABLE `Empleados`(
`id_empleado` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(45) NOT NULL,
`tienda` VARCHAR(45) NOT NULL,
`salario` INT DEFAULT NULL,
`fecha_incorporacion` DATE NOT NULL,
PRIMARY KEY (`id_empleado`));

 /*Creamos la tabla Facturas poniendo como foreign key id_zapatilla, id_empleado e id_cliente y como primary key id_factura*/

CREATE TABLE `Facturas`(
`id_factura` INT NOT NULL AUTO_INCREMENT,
`numero_factura` VARCHAR(45) NOT NULL,
`fecha` DATE NOT NULL,
`id_zapatilla` INT NOT NULL,
`id_empleado` INT NOT NULL,
`id_cliente` INT NOT NULL,
CONSTRAINT `fk_facturas_zapatillas`
	FOREIGN KEY (`id_zapatilla`)
    REFERENCES `Zapatillas`  (`id_zapatilla`),
CONSTRAINT `fk_facturas_empleados`
	FOREIGN KEY (`id_empleado`)
    REFERENCES `Empleados`  (`id_empleado`),
CONSTRAINT `fk_facturas_cliente`
	FOREIGN KEY (`id_cliente`)
    REFERENCES `Clientes`  (`id_cliente`),
PRIMARY KEY (`id_factura`));