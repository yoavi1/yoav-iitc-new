--q1
--select *
--from Orders

--q2
--select
--*
--from Employees

--q5
--select
--ProductID as ProId,
--ProductName as ProName,
--UnitPrice as untPr
--from Products

--q6
--select
--City as ct , 
--Region as reg ,
--Address as 'add'
--from Employees

--q7
--select
--CustomerID,
--Address + ' ' + City as 'full address'
--from Customers

--q8
--select 
--FirstName + ' ' + LastName as 'full name',
--BirthDate + 8 as 'Birth Date',
--ReportsTo as manager
--from Employees


--q9
--select distinct City
--from Employees

--q10
--select 
--distinct Country 
--from Employees

--q11
--select 
--distinct Title
--from Employees

--q12
--select 
--Country,
--City
--from Customers

--select distinct  Country , City
--from Customers

--q12+
--select 
--Country,
--City
--from Customers
--union 
--select distinct Country, City
--from Customers


--q13

--select
--FirstName,
--BirthDate,
--BirthDate +5 as birthdatePlus5
--from Employees

--q14
--select 
--ProductName,
--UnitPrice,
--UnitPrice + 10 as unitPlus
--from Products

--q15
--select 
--ProductID,
--ProductName,
--UnitPrice,
--UnitPrice*1.165 as unitPricePlus,
--UnitsInStock,
--UnitsOnOrder,
--abs(UnitsInStock - UnitsOnOrder)  as deltaUnits
--from Products

--q16
--select
--ProductID,
--ProductName,
--(UnitsInStock - UnitsOnOrder)  as deltaUnits
--from Products


--select productid, productname,unitprice
--from product where unitPrice in (10,20)

--order by unitprice asc
--is not null
--where productName like 'chai'
--where productName like '%c%
--where productName like 'c%

--select *
--from Orders
--where ShipCountry = 'USA'

--select 
--ProductName,
--UnitPrice + 9 as newPrice,
--CategoryID
--from Products
--where ProductName like '%c%'

--select 
--CategoryName,
--Description,
--CategoryID

--from Categories
--where CategoryID > 3

--select 
--sum(UnitPrice) as 'sum',
--min(UnitPrice) as 'MinPrice',
--max(UnitPrice)as 'AVG'
--from Products

--select 
--sum(Freight) as 'sum',
--min(Freight) as 'MinPrice',
--max(Freight)as 'AVG',
--count(OrderID)as 'count'
--from Orders

--select 
--ProductID, ProductName, UnitPrice,Description, Products.CategoryID
--from Products join Categories
--on Products.CategoryID = Categories.CategoryID

--select
--FirstName,
--LastName,
--City,
--OrderID,
--OrderDate,
--o.EmployeeID
--from  Employees as E join Orders as O
--on o.EmployeeID = e.EmployeeID
--where e.EmployeeID in(3,5,6)

--where

--q1
--select 
--FirstName,
--LastName

--from Employees
--where EmployeeID = 3

--q2
--select 
--ProductName,
--UnitPrice
--from Products
--where ProductID = 4

--q3
--select 
--ProductID,
--ProductName,
--UnitPrice
--from Products
--where UnitPrice > 20
--order by UnitPrice

--q4
--select 
--FirstName + ' ' +LastName as 'full name',
--BirthDate,
--ReportsTo
--from Employees
--where EmployeeID = 8

--q5
--select 
--EmployeeID,
--FirstName + ' ' +LastName as 'full name',
--BirthDate
--from Employees
--where City = 'london'

--q6
--select
--*
--from Products
--where UnitPrice between 50 and 100

--q7
--select 
--ProductName,
--UnitPrice
--from Products
--where UnitPrice between 21.35 and 43.9
--order by UnitPrice

--q8
--select 
--EmployeeID,
--LastName,
--HireDate,
-- city
--from Employees
--where 
----City = 'london' or City = 'tacoma'
--city in ('london', 'tacoma')

--q9
--select 
--EmployeeID,
--FirstName,
--LastName
--from Employees
--where EmployeeID in(1,2,5)

--q10
--select 
--FirstName,
--LastName,
--BirthDate,
--EmployeeID
--from Employees
--where EmployeeID not in(4,5,7)

--q11
--select 
--ProductID,
--ProductName,
--CategoryID
--from Products
--where CategoryID not in (1,2,7)


--q12
--select 
--FirstName,
--Region
--from Employees
--where Region is null


----q13
--select top 3
--ProductName,
--UnitPrice
--from Products
--order by UnitPrice desc

--q14
--select 
--OrderID,
--OrderDate,
--RequiredDate
--from Orders
--where RequiredDate >= '1996-10-01'

--q15 A
--select
--count(EmployeeID)
--from Employees


--q15 B
--select 
--LastName,
--ReportsTo
--from Employees
--where ReportsTo is not null

--q16
--select
--*
--from Categories
--where CategoryName like '%c%'  

--q17
--select 
--CompanyName,
--Region
--from Customers
--where CompanyName like '%a'

--q18
--select 
--ProductName,
--CategoryID
--from Products 
--where ProductName like '%a_'

--q19
--select 
--OrderID,
--CustomerID,
--EmployeeID
--from Orders
--where OrderDate between '1997-04-01' and '1997-05-01'

--q20
--select 
--CustomerID,
--CompanyName,
--Country,
--Phone,
--Region

--from  Customers
--where Country like 'M%' or Country like 'F%' or Country like 'G%'

--q21
--select 
--EmployeeID,
--FirstName + ' ' + LastName as fullname,
--BirthDate,
--Country
--from Employees
--where LastName like '%d%' or LastName like '%k%' or BirthDate like '%1963%'

----q22
--select 
--ProductName,
--UnitPrice,
--SupplierID
--from Products
--where UnitPrice > 30 and SupplierID in(1,3)

--join

--q1
--select 
--ProductName,
--CategoryName
--from Products join Categories
--on Products.CategoryID = Categories.CategoryID 

--q2
--select 
--ProductName,
--CompanyName
--from Products as p join Suppliers as s
--on p.SupplierID = s.SupplierID

--q3
--select 
--OrderID,
--CompanyName
--from Orders as o join Customers as c
--on o.CustomerID = c.CustomerID

--q4 
--select 
--from Region

--q5 
--select 
--ProductName,
--UnitPrice,
--CategoryName
--from Products as p join Categories as c
--on P.CategoryID = c.CategoryID
--where UnitPrice > 50

--q6
--select 
--ProductID,
--UnitPrice,
--SupplierID,
--CategoryName
--from Products as p join Categories as c
--on p.CategoryID = c.CategoryID
--where SupplierID = 3

--q7
--select 
--ProductID,
--UnitPrice,
--SupplierID,
--CategoryName
--from Products as p join Categories as c
--on p.CategoryID = c.CategoryID
--where CategoryName like '%a%'

--q8
--select 
--ProductName,
--CategoryName,
--s.CompanyName
--from Products as p join Categories as c
--on p.CategoryID = c.CategoryID
-- join Suppliers as s 
--on p.SupplierID = s.SupplierID

--q9
--select 
--ProductName,
--Description,
--CompanyName
--from Products as p join Categories as c
--on P.CategoryID = c.CategoryID
--join Suppliers as s
--on P.SupplierID = s.SupplierID

--q10
--select 
--ProductID,
--Description,
--S.Country
--from Categories as c join Products as p
--on p.CategoryID =  c.CategoryID 
--join Suppliers as s
--on P.SupplierID = s.SupplierID

--q11
--select 
--C.CompanyName,
--o.OrderID
--from Customers as c left outer join Orders o 
--on c.CustomerID = o.CustomerID

--q12
--select
--OrderID,
--OrderDate,
--ShipAddress,
--Cus.CustomerID,
--cus.CompanyName,
--cus.Phone
--from Orders as ord join  Customers as cus
--on ord.CustomerID = cus.CustomerID
--where OrderDate like '%1996%'
--and (cus.CustomerID like 'a%' or cus.CustomerID like 'c%')

--q13
--select
--FirstName,
--LastName
--OrderID,
--OrderDate,
--ShipAddress,
--Cus.CustomerID,
--cus.CompanyName,
--cus.Phone
--from Orders as ord join  Customers as cus
--on ord.CustomerID = cus.CustomerID
--join Employees as emp 
--on ord.EmployeeID = emp.EmployeeID
--where OrderDate like '%1996%'
--and (cus.CustomerID like 'a%' or cus.CustomerID like 'c%')

--group function
--q1
--select min(LastName) as 'min name'
--from Employees

--q2
--select 
--max(FirstName)
--from Employees

--q3
--select 
--count (EmployeeID)
--from Employees

--q4
--select
--count(Region)
--from Employees


--q5
--select avg(UnitPrice)
--from products


--q6
--select 
--max(UnitPrice) as maxPeice,
--AVG(UnitPrice) as avgPrice
--from Products

--q7
--select
--min(BirthDate),
--max(BirthDate),
--	convert(varchar, max(BirthDate), 113)
--from Employees

----q8
--select distinct
--count(CustomerID)
--from Customers

--q9
--select distinct
--count(CustomerID) as custumersNum
--from Orders

--q10
--select 
--max(UnitPrice),
--min(UnitPrice),
--avg(unitPrice),
--CategoryID
--from Products
--group by CategoryID

--q11
--select 
--max(UnitPrice)
--,SupplierID
--from Products
--group by SupplierID
--order by SupplierID desc

--q12
--select
--avg(UnitsInStock)
--,SupplierID
--from Products
--group by SupplierID 
--order by SupplierID desc

--q13
--select
--count(CustomerID) as count,
--Country,
--City
--from Customers
--group by Country, City

--q14
--select
--CategoryID,
--avg(UnitPrice) as avgunitPriceOver40
--from Products
----where UnitPrice > 40
--group by CategoryID

--q15
--select 
--count(CustomerID),
--City
--from Customers
--where city = 'london'
--group by City

--q16
--select 
--max(pro.UnitPrice) as maxPrice,
--min(pro.UnitPrice) as minPrice,
--avg(pro.UnitPrice) as avgPrice,
--count(pro.CategoryID)as count,
--CategoryID,
--SupplierID
--from Products as pro
--group by CategoryID, SupplierID 

--q17
--select
--max(UnitPrice),
--CategoryID
--from Products
--group by CategoryID
--having(max(UnitPrice) > 40)

--q18
--select
--SupplierID,
--avg(UnitPrice) as avgPrice
--from Products 
--group by SupplierID
--having (avg(UnitPrice) > 40)

--q19
--select 
--CategoryName,
--sum(UnitsInStock) as countUnitInStock,
--sum(UnitsOnOrder)as countOrdersUnits
--from Products as pro join Categories cat
--on pro.CategoryID = cat.CategoryID
--where CategoryName like '%c%'
--group by CategoryName
--having(sum(UnitsOnOrder) > 100)
--order by CategoryName 

--q20
--select 
--Region,
--City,
--count(Region)
--from Customers
--where (city like '%M%' or city like '%L%') and Region is not null
--group by Region, City
--having (count(Region) >= 2)

----q21
--select 
--LastName,
--max(OrderDate) as lastOrder,
--count(ord.EmployeeID) as countOfOrders
--from Employees as emp join Orders as ord
--on emp.EmployeeID = ord.EmployeeID 
--group by LastName 
--having(count(ord.EmployeeID)> 100)

--*for me*
--select 
--EmployeeID
--from Orders
--where EmployeeID = (select EmployeeID
--from Employees 
--where LastName ='Callahan')


--*for me*
--select 
--LastName
--from Employees
--where EmployeeID = 8


--subquries
--q1
--select 
--ProductName,
--UnitPrice
--from Products
--where UnitPrice < (select UnitPrice 
--from Products
--where ProductID = 8)

--q2
--select
--ProductName,
--UnitPrice
--from products
--where UnitPrice > (select 
--UnitPrice
--from products
--where ProductName = 'Tofu'
--)

--q3
--select 
--FirstName,
--HireDate
--from Employees
--where HireDate > (select HireDate
--from Employees
--where EmployeeID = 6)

--q4
--select
--ProductID,
--ProductName,
--UnitPrice
--from products 
--where UnitPrice >(select  avg(UnitPrice) from Products)

--q5
--select
--ProductName,
--UnitsInStock
--from Products
--where UnitsInStock < (select
--min(UnitsInStock)
--from Products
--where CategoryID =5)

--q6
--select
--CategoryID,
--ProductName
--from Products
--where CategoryID = (select 
--CategoryID
--from products
--where ProductName = 'chai'
--) and ProductName != 'chai'

 --q7
 --select
 --ProductName,
 --UnitPrice,
 --CategoryID
 --from Products
 --where UnitPrice in(select 
 --UnitPrice
 --from Products
 --where CategoryID = 5)

 --q8
 -- select
 --ProductName,
 --UnitPrice,
 --CategoryID
 --from Products
 --where UnitPrice in(select 
 --UnitPrice
 --from Products
 --where UnitPrice > (select min(UnitPrice)
 --from products
 --where CategoryID = 5))

-- q9
--select 
--ProductName,
--UnitPrice
--from Products
--where UnitPrice >(select max(UnitPrice)
--from Products
--where CategoryID = 5)

--(select
--UnitPrice
--from products
--where UnitPrice > all(select UnitPrice
--from Products
--where CategoryID = 5

--))

--q10
--select 
--OrderID,
--OrderDate
--from Orders
--where year(OrderDate) = 1997 and shipcountry in(select ShipCountry
--from Orders
--where ShipCountry in ('germany','france','sweden')
--)

--select 
--OrderID,
--OrderDate
--from Orders
--where year(OrderDate) = 1997 and shipcountry in  ('germany','france','sweden')

--q11
--select ProductName,
--ProductID
--from products
--where UnitPrice > (select avg(UnitPrice)
--from Products
--where UnitsInStock > 50
--)


--q12
--select 
--ProductName,
--CategoryID
--from Products
--where CategoryID = any(select CategoryID
--from Categories
--where CategoryName in('Beverages', 'Condiments'))
--and SupplierID in(select SupplierID
--from Suppliers
--where Region is null) 


--q13
--select CompanyName
--from Suppliers
--where SupplierID in(select SupplierID
--from Products
--where CategoryID = (select CategoryID
--from Categories
--where CategoryName = 'Beverages'))

