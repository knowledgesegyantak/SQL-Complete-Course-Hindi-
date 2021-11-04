SELECT 
FactSales.*,
DimCustomer.FirstName
FROM FactSales
	 LEFT JOIN DimCustomer
		ON FactSales.CustomerKey = DimCustomer.CustomerKey


--INNER JOIN
--Get common rows from both the tables
SELECT 
DimCustomer.*,
FactSales.SalesAmount,
FactSales.SalesQty
FROM DimCustomer 
        INNER JOIN FactSales
		    ON DimCustomer.CustomerKey = FactSales.CustomerKey


-- LEFT JOIN
-- Get all rows from LEFT table (i.e. DimCustomer) and matching rows from RIGHT table (i.e. FactSales)
SELECT 
DimCustomer.*,
FactSales.SalesAmount,
FactSales.SalesQty
FROM DimCustomer 
        LEFT JOIN FactSales
		    ON DimCustomer.CustomerKey = FactSales.CustomerKey

-- RIGHT JOIN
-- Get all rows from RIGHT table (i.e. FactSales) and matching rows from LEFT table (i.e. DimCustomer)
SELECT 
DimCustomer.*,
FactSales.*
FROM DimCustomer 
        RIGHT JOIN FactSales
		    ON DimCustomer.CustomerKey = FactSales.CustomerKey

-- CROSS JOIN
-- Againts each row of DimCustomer get all rows of FactSales
SELECT 
DimCustomer.*,
FactSales.*
FROM DimCustomer 
        CROSS JOIN FactSales
		   