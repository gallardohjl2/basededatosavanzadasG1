

-- Sellecionar todas las ordenes que fueron emitidas por los
-- empleados Nancy Davolio, Anne Dodsworth y Andrew Fuller

select * from Orders
where EmployeeID = 1 
or EmployeeID = 9 
or EmployeeID = 2;

select * from Orders
where EmployeeID in(1,9,2);

-- Seleccionar todas las ordenes, dividiendo la fecha de orden en, año, mes y dia 
select orderDate as 'Fecha de orden', 
year(OrderDate) as 'Año', 
month (OrderDate) as 'Mes', 
day(OrderDate) as 'Día' 
from Orders;

-- Seleccionar todos los nombres de los empleados
select concat(FirstName,' ' ,LastName) as 'Nombre Completo' 
from Employees;

-- Seleccionar todos los productos donde la existencia sea mayor o igual a 40
-- y el precio sea menor a 19
select ProductName as 'Nombre del prodcuto', 
UnitPrice as 'Precio', 
UnitsInStock as 'Existencia' 
from Products
where UnitsInStock >= 40
and  UnitPrice < 19;

-- Seleccionar todas las ordenes realizadas de abril a Agosto de 1996

select OrderID, CustomerID, EmployeeID, OrderDate 
from Orders
where OrderDate>= '1996-04-01' and OrderDate<='1996-08-31';

select OrderID, CustomerID, EmployeeID, OrderDate 
from Orders
where OrderDate between '1996-04-01' and '1996-08-31';

-- Seleccionar todas las ordenes entre 1996 y 1998
select * from Orders
where year(OrderDate) BETWEEN '1996' and '1998';

-- Seleccionar todas las ordenes de 1996 y 1999

select * from 
orders
where year(OrderDate) in ('1996', '1999')


-- Seleccionar todos los productos que comiencen con c

select * 
from 
Products
where ProductName like 'c%';

select * 
from 
Products
where ProductName like 'ca%';

-- Sellecionar todos los productos que terminen con s
select * 
from 
Products
where ProductName like '%s';

-- Seleccionar todos los productos que el nombre del produto contenga la palabra no
Select * 
from Products
where ProductName like '%no%';

-- Seleccionar todos los productos que contengan las letras a o n

select * from 
Products 
where ProductName like '%[AN]%'

select * from 
Products 
where ProductName like '%A%'
or ProductName like '%N%'

-- Seleccionar todos los productos que comiencen entre la letra A y N
select * from 
Products 
where ProductName like '[A-N]%'

-- Sellecionar todas las ordenes que fueron emitidas por los
-- empleados Nancy Davolio, Anne Dodsworth y Andrew Fuller (inner join)

select o.OrderID as 'Numero de Orden',
o.OrderDate as 'Fecha de Orden', 
concat(FirstName, ' ', LastName) as 'Nombre'
FROM 
Employees as e
INNER JOIN 
orders as o
on e.EmployeeID = o.EmployeeID
where e.FirstName in ('Nancy', 'Anne', 'Andrew')
and e.LastName in ('Davolio', 'Dodsworth', 'Fuller');


-- Ejercicio 1: Obtener el nombre del cliente y el nombre del empleado 
-- del representante de ventas de cada pedido.
--Ejercicio 2: Mostrar el nombre del producto, el nombre del proveedor y el precio unitario de cada producto.
--Ejercicio 3: Listar el nombre del cliente, el ID del pedido y la fecha del pedido para cada pedido.
--Ejercicio 4: Obtener el nombre del empleado, el título del cargo y el departamento del empleado para cada empleado.
--Ejercicio 5: Mostrar el nombre del proveedor, el nombre del contacto y el teléfono del contacto para cada proveedor.
--Ejercicio 6: Listar el nombre del producto, la categoría del producto y el nombre del proveedor para cada producto.
--Ejercicio 7: Obtener el nombre del cliente, el ID del pedido, el nombre del producto y la cantidad del producto para cada detalle del pedido.
--Ejercicio 8: Obtener el nombre del empleado, el nombre del territorio y la región del territorio para cada empleado que tiene asignado un territorio.
--Ejercicio 9: Mostrar el nombre del cliente, el nombre del transportista y el nombre del país del transportista para cada pedido enviado por un transportista.
--Ejercicio 10: Obtener el nombre del producto, el nombre de la categoría y la descripción de la categoría para cada producto que pertenece a una categoría.