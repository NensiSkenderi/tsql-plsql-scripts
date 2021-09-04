use NORTHWND
go

--Write a query to list the number of jobs available in the employees table
select * from Employees

--Display product which never been sold in 1998 
--fillim gjejm ato qe jan shit
select ProductID,ProductName from Products where ProductID not in
(
	select p.ProductID from Products p
	join [Order Details] od on p.ProductID = od.ProductID
	join Orders o on od.OrderID = o.OrderID
	where year(o.OrderDate) = 1998
	group by p.ProductID
)

select * from Products

--display employee name which never sold anything to Portugalselect e.FirstName from Employees e join Orders o on e.EmployeeID = o.EmployeeIDwhere o.ShipCountry not in ('Portugal')group by e.FirstName