--## Beginner 4 : Where Clause ##  --

-- Simple where clause
SELECT * FROM DimCustomer
Where FirstName='Jon'

-- Get rows where first name is Jon and last name in Lu. Both condition to be true
select * from DimCustomer
where FirstName='Jon' and LastName='Lu'

-- Get rows where first name is Jon or last name is Lu. Rows will be fetched if any one of the condition is true.
select * from DimCustomer
where FirstName='Jon' OR LastName='Lu'

-- Get rows where MaritalStatus='M' and TotaChildren=2
Select * from DimCustomer
WHERE MaritalStatus='M' and TotalChildren=2

-- Get rows where MaritalStatus='M' or TotaChildren=2
Select * from DimCustomer
WHERE MaritalStatus='M' or TotalChildren=2

-- Not operator. Used to get the rows not equal to the condition i.e. where Marital status is other than M
SELECT * FROM DimCustomer WHERE MaritalStatus !='M'

-- Get records with BirthDate on a specified date
SELECT * FROM DimCustomer
WHERE BirthDate='1966-04-08'

-- Practice Questions
-- 1. Get records of all male customers
-- 2. Get records of all married female customers
-- 3. Get records of customer having either Education as "Bachelors" or CustomerType as "Company"
-- 4. Get records of male customer born before "1947-01-01"
-- 5. Get records of customer with YearlyIncome greater than 40000 but less than 80000


-- Solution
-- 1. SELECT * FROM DimCustomer WHERE Gender='M'
-- 2. SELECT * FROM DimCustomer WHERE MaritalStatus='M' and Gender='F'
-- 3. SELECT * FROM DimCustomer where Education='Bachelors' or CustomerType='Company'
-- 4. SELECT * FROM DimCustomer where Gender='m' and BirthDate<'1947-01-01'
-- 5. SELECT * FROM DimCustomer where YearlyIncome>40000 and YearlyIncome<80000



