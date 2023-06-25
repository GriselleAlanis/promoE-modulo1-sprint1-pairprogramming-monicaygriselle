/* PAIRPROGRAMMING INSERCCION DE DATOS*/

USE `tienda_zapatillas`;

/*Lo primero que vamos a hacer es insertar datos en nuestra BBDD con los 
siguientes datos:*/

/*Tabla zapatillas*/

INSERT INTO `Zapatillas` (`modelo`,`color`,`marca`,`talla`)
	VALUES('XQYUN', 'Negro','Nike',42),
		('UOPMN', 'Rosas','Nike',39),
		('OPNYT', 'Verdes','Adidas',35);

/*Tabla empleados*/

INSERT INTO `Empleados` 
	VALUES(1, 'Laura','Alcobendas',25987,'2010-09-03'),
		(2,'María', 'Sevilla',NULL,'2001-04-11'),
		(3,'Ester', 'Oviedo',30165.98,'2000-11-29');

/*Tabla clientes*/

INSERT INTO `Clientes` 
	VALUES(1, 'Monica',1234567289,'monica@email.com','Calle Felicidad','Móstoles','Madrid',28176),
		(2,'Lorena', 289345678,'lorena@email.com','Calle Alegría','Barcelona','Barcelona',12346),
		(3,'Carmen', 298463759,'carmen@email.com','Calle del Color','Vigo','Pontevedra',23456);

/*Tabla facturas*/

INSERT INTO `Facturas` 
	VALUES(1, '123','2001-12-11',1,2,1,54.98),
		(2,'1234', '2005-05-23',1,1,3,89.91),
		(3,'12345', '2005-09-18',2,3,3,76.23);

/*De nuevo nos hemos dado cuenta que hay algunos errores en la inserción de datos.*/

/*En nuestra tienda no vendemos zapatillas Rosas... ¿Cómo es posible que tengamos 
zapatillas de color rosa? En realidad esas zapatillas son amarillas.*/

UPDATE `Zapatillas`
	SET `color` = 'Amarillas'
    WHERE `id_zapatilla` =2;

/*Tabla empleados
Laura se ha cambiado de ciudad y ya no vive en Alcobendas, se fue cerquita del mar,
ahora vive en A Coruña.*/

UPDATE `Empleados`
	SET `tienda` = 'A Coruña'
    WHERE `nombre` = 'Laura';  

/*Tabla clientes
El Numero de telefono de Monica esta mal!!! Metimos un digito de más. 
En realidad su número es: 123456728*/

UPDATE `Clientes`
	SET `numero_telefono` = 123456728
    WHERE `nombre` = 'Monica';
    
/*Tabla facturas
El total de la factura de la zapatilla cuyo id es 2 es incorrecto. 
En realidad es: 89,91.*/

UPDATE `Facturas`
	SET `total` = 89.91
    WHERE `id_factura` =2;