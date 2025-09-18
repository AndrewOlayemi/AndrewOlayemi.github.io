--1	Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName.

SELECT UPPER([EmpFname]) AS [EmpName]
FROM [dbo].['Employee Info$']
        
--2	Write a query to fetch the number of employees working in the department ‘HR’.

SELECT COUNT(*) AS [Department]
FROM [dbo].['Employee Info$']
WHERE [Department]='HR'          

--3	Write a query to get the current date.
 SELECT GETDATE() AS CurrentDateTime

--4	Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
SELECT LEFT ([EmpLname],4)
FROM [dbo].['Employee Info$']

--5	Write a query to fetch only the place name (string before brackets) from the Address column of EmployeeInfo table.
SELECT SUBSTRING ([Address],1,CHARINDEX('(',[Address])-1)
FROM [dbo].['Employee Info$']

--6	Write a query to create a new table that consists of data and structure copied from the other table.

SELECT *
INTO ['NEW TABLE FOR QUESTION 6']
FROM [dbo].['Employee position$']

--7	Write q query to find all the employees whose salary is between 50000 to 100000.
SELECT *
FROM [dbo].['Employee position$']
WHERE [Salary] BETWEEN '50000' AND '100000'

--8	Write a query to find the names of employees that begin with ‘S’
SELECT [EmpFname]
FROM [dbo].['Employee Info$']
WHERE [EmpFname] LIKE 'S%%%%'

--9	Write a query to fetch top N records.
SELECT TOP (5) *
FROM [dbo].['Employee Info$']

--10	Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
SELECT [EmpFname] + ' ' + [EmpLname] AS FullName
FROM [dbo].['Employee Info$']

--11	Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1995 and are grouped according to gender

SELECT [Gender], 
COUNT (*) AS [NO OF EMPLOYEES]
FROM [dbo].['Employee Info$']
WHERE [DOB] BETWEEN '1970-05-02' AND '1995-12-31'
GROUP BY [Gender]

--12	Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.
SELECT *
FROM [dbo].['Employee Info$']
ORDER BY [EmpLname]DESC,[Department] ASC

--13	Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.
SELECT *
FROM [dbo].['Employee Info$']
WHERE [EmpLname] LIKE '____A'

--14	Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.
SELECT *
FROM [dbo].['Employee Info$']
WHERE [EmpFname] NOT IN ('SANJAY','SONIA')

--15	Write a query to fetch details of employees with the address as “DELHI(DEL)”
SELECT *
FROM [dbo].['Employee Info$']
WHERE [Address] IN ('DELHI(DEL)')

--16	Write a query to fetch all employees who also hold the managerial position.
SELECT *
FROM [dbo].['Employee position$']
WHERE [EmpPosition] IN ('Manager')

--17	Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order

SELECT [Department], 
COUNT ([EmpID]) AS [EMPLOYEE COUNT]
FROM [dbo].['Employee Info$']
GROUP BY [Department] ORDER BY [EMPLOYEE COUNT] ASC

--18	Write a query to fecth Male employees in HR department
SELECT *
FROM [dbo].['Employee Info$']
WHERE [Gender]='M' AND [Department]='HR'

--19	Write a SQL query to retrieve employee details from EmployeeInfo table who have a date of joining in the EmployeePosition table
SELECT *
FROM [dbo].['Employee position$']
WHERE [DateOfJoining] IS NOT NULL
