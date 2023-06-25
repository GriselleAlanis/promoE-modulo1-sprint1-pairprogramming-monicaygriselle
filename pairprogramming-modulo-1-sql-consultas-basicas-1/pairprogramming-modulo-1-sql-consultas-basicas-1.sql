/*PAIRPROGRAMMING CONSULTAS BASICAS 1*/

USE `northwind`;

/*Conociendo a las empleadas*/

/*Consulta para obtener una lista con los datos de las empleadas y empleados de la 
empresa Northwind. */

SELECT `employee_id`,`last_name`,`first_name`
FROM `employees`;

/*Conociendo los productos más baratos*/

/*Productos (tabla products) cuyos precios por unidad se encuentren entre los 0 y 5 
dólares, es decir, los productos más baratos.*/

SELECT *
FROM `products`
WHERE `unit_price` <= 5;

/*Conociendo los productos de los que queremos maximizar ventas*/

/*Productos que tengan exactamente un precio de 18, 19 o 20 dólares*/

SELECT *
FROM `products`
WHERE `unit_price` = 18
OR `unit_price` = 19
OR `unit_price` = 20;

/*Conociendo los productos que dan más beneficios.*/

/*Productos que puede dar más beneficios a la empresa podría ser el de aquellos con un 
precio mayor o igual a 15 dólares, pero menor o igual que 50 dólares.*/

SELECT *
FROM `products`
WHERE `unit_price` >= 15
AND `unit_price` <= 50;

/*Conociendo los productos que no tienen precio*/

/*Seleccionar aquellos productos que no tengan precio, porque lo hayan dejado vacio al 
introducir los datos*/

SELECT *
FROM `products`
WHERE `unit_price` IS NULL;

/*Comparando productos*/

/*Ahora obtén los datos de aquellos productos con un precio menor a 15 dólares, pero 
sólo aquellos que tienen un ID menor que 10 */

SELECT *
FROM `products`
WHERE `unit_price` < 15
AND `product_id` < 10;

/*Cambiando de operadores*/

/*Queremos saber aquellos que tengan un precio superior a 15 dólares y un ID superior a 10.*/

SELECT *
FROM `products`
WHERE `unit_price` > 15
AND `product_id` > 10;

/*Conociendo los paises a los que vendemos*/

/*Conocer los datos de los países que hacen pedidos (orders) para focalizar el negocio 
en esas regiones.*/

SELECT `ship_country`
FROM `orders`;




