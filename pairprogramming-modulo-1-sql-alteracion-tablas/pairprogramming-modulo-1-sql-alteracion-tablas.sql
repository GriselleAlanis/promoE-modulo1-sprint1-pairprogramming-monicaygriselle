/* PAIRPROGRAMMING ALTERACION TABLAS*/

/*Tabla Zapatillas: Se nos ha olvidado introducir la marca y la talla de las 
zapatillas que tenemos en nuestra BBDD.*/

ALTER TABLE `Zapatillas`
ADD COLUMN `marca` VARCHAR(45) NOT NULL,
ADD COLUMN `talla` INT NOT NULL;

/*Tabla Empleados: Se nos ha olvidado introducir el salario de los empleados
que tenemos en nuestra BBDD.*/

ALTER TABLE `Empleados`
MODIFY COLUMN `salario` FLOAT;

/*Tabla Clientes: Se nos ha olvidado introducir el pais y el codigo postal
 de los clientes que tenemos en nuestra BBDD.*/

ALTER TABLE `Clientes`
DROP COLUMN `pais`,
MODIFY COLUMN `codigo_postal` INT(5);

/*Tabla Facturas: Se nos ha olvidado introducir  el total de factura*/

ALTER TABLE `Facturas`
ADD COLUMN `total` FLOAT;