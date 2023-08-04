SELECT 
  TOP (1000) [ProductKey], 
  [ProductAlternateKey] --,P.[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  [EnglishProductName] AS [ProductName], 
  PCat.[EnglishProductSubcategoryName] AS SubCategory, 
  PCat.[EnglishProductCategoryName] AS ProductCategory --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  , 
  [Color] AS [ProductColor] --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  , 
  [Size] AS [ProductSize] --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  [ProductLine] --,[DealerPrice]
  --,[Class]
  --,[Style]
  , 
  [ModelName] AS ProductModel --,[LargePhoto]
  , 
  [EnglishDescription] AS ProductDescription --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  , 
  ISNULL([Status], 'Outdated') AS ProductStatus 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS P 
  LEFT JOIN (
    SELECT 
      [A].[ProductCategoryKey], 
      [B].[ProductSubcategoryKey], 
      [A].[EnglishProductCategoryName], 
      [B].[EnglishProductSubcategoryName] 
    FROM 
      [AdventureWorksDW2019].[dbo].[DimProductCategory] AS A 
      JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS B ON A.[ProductCategoryKey] = B.[ProductCategoryKey]
  ) AS PCat ON [PCat].[ProductSubcategoryKey] = [P].[ProductSubcategoryKey]
