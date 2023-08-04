/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [CustomerKey]
--      ,[GeographyKey]
--      ,[CustomerAlternateKey]
--      ,[Title]
      ,[FirstName]
--      ,[MiddleName]
      ,[LastName]
	  ,[FirstName] + ' ' + [LastName] AS [Full Name]
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
      ,CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
      ,[DateFirstPurchase]
--      ,[CommuteDistance]
	  ,G.[City]
  FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS C
  LEFT JOIN
  [AdventureWorksDW2019].[dbo].[DimGeography] AS G
  ON C.[GeographyKey] = G.GeographyKey