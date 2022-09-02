--1. a
SELECT *
FROM Sales.SalesTerritory;

--1. b
SELECT TerritoryID, Name
FROM Sales.SalesTerritory;

--1. c
SELECT *
FROM Person.Person
WHERE LastName = 'Norman';

--1. d
SELECT * 
FROM Person.Person
WHERE EmailPromotion != 2;


-- 3.

-- APPROX_COUNT_DISTINCT ( expression )   ** для получения оценки числа уникальных значений строки таблицы

-- CHECKSUM_AGG ( [ ALL | DISTINCT ] expression )  ** возвращает  сумму всех значений выражения в виде целого числа integer

-- STDEV ( [ ALL | DISTINCT ] expression ) ** расчет стандартного отклонения, тип данных float

-- VAR ( [ ALL | DISTINCT ] expression )  ** расчет дисперсии, тип данных float


--4. a
SELECT DISTINCT PersonType 
FROM Person.Person
WHERE LastName LIKE 'M%'
OR EmailPromotion != 1;

--4. b
SELECT TOP 3 * 
FROM Sales.SpecialOffer
WHERE StartDate BETWEEN '2013-01-01' AND '2014-01-01'
ORDER BY DiscountPct DESC;

--4. c
SELECT MIN(Weight) AS MinWeight
       ,MAX(Size) AS MaxSize
FROM Production.Product;

--4. d
SELECT MIN(Weight) AS MinWeight
       ,MAX(Size) AS MaxSize
	   ,ProductSubcategoryID
FROM Production.Product
GROUP BY ProductSubcategoryID;

--4. e
SELECT MIN(Weight) AS MinWeight
       ,MAX(Size) AS MaxSize
	   ,ProductSubcategoryID
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY ProductSubcategoryID;