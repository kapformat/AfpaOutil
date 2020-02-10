--Ex1
SELECT
	SalesTerritoryRegion, SalesTerritoryCountry
FROM
	DimSalesTerritory
WHERE 
	SalesTerritoryGroup = 'North America'
GO

--Ex2
SELECT 
	LastName, FirstName, EmailAddress 
FROM 
	ProspectiveBuyer
WHERE 
	StateProvinceCode = 'CA'
GO

--Ex3
SELECT 
	ProductCategoryKey
FROM
	DimProductCategory
WHERE 
	FrenchProductCategoryName = 'Vêtements'
GO


--Ex4
SELECT
	 SpanishProductSubcategoryName
FROM
	DimProductSubcategory
WHERE 
	ProductCategoryKey = '3'

GO

--Ex4-2ème version
SELECT
	EnglishProductSubcategoryName, SpanishProductSubcategoryName, FrenchProductSubcategoryName
FROM
	DimProductSubcategory
WHERE 
	ProductCategoryKey = (SELECT ProductCategoryKey
							FROM
								DimProductCategory
							WHERE 
								FrenchProductCategoryName = 'Vêtements')
GO


--Ex5
INSERT INTO DimDate VALUES 
	('20150101', '2015-01-01', '5', 'Thursday' ,'Jueves', 'Jeudi'		, '01', '01', '1', 'January', 'Enero', 'Janvier', '1', '1', '2015', '1', '3', '2015', '2'),
	('20150102', '2015-01-02', '6', 'Friday' ,'Viernes', 'Vendredi'		, '02', '02', '1', 'January', 'Enero', 'Janvier', '1', '1', '2015', '1', '3', '2015', '2'),
	('20150103', '2015-01-03', '7', 'Saturday' ,'Sábado', 'Samedi'		, '03', '03', '1', 'January', 'Enero', 'Janvier', '1', '1', '2015', '1', '3', '2015', '2'),
	('20150104', '2015-01-04', '1', 'Sunday' ,'Domingo', 'Dimanche'		, '04', '04', '1', 'January', 'Enero', 'Janvier', '1', '1', '2015', '1', '3', '2015', '2'),
	('20150105', '2015-01-05', '2', 'Monday' ,'Lunes', 'Lundi'			, '05', '05', '2', 'January', 'Enero', 'Janvier', '1', '1', '2015', '1', '3', '2015', '2'),
	('20150106', '2015-01-06', '3', 'Tuesday' ,'Martes', 'Mardi'		, '06', '06', '2', 'January', 'Enero', 'Janvier', '1', '1', '2015', '1', '3', '2015', '2'),
	('20150107', '2015-01-07', '4', 'Wednesday' ,'Miércoles', 'Mercredi', '07', '07', '2', 'January', 'Enero', 'Janvier', '1', '1', '2015', '1', '3', '2015', '2')



--Ex6
INSERT DimProduct (ProductAlternateKey,ProductSubcategoryKey, EnglishProductName, SpanishProductName, FrenchProductName, FinishedGoodsFlag, Color, ListPrice, ModelName, LargePhoto, EnglishDescription, FrenchDescription, StartDate, Status)
VALUES ('DY-LUG01-01', '33', 'Lagono 9435', 'Lagono 9435', 'Lagono 9435', '1', 'White',  15.63, 'Lagono', CONVERT(VARBINARY(max),'dynamo_lugono.jpg') ,'High-end, light PVC for rear or front wheel, white, Power : 3W, Voltage : 6V ', 
'Dynamo haut de gamme, légère en PVC pour roue arrière ou avant, blanche, Puissance : 3W, Voltage : 6V', GETDATE(), 'Current')       



--Ex7
UPDATE FactCallCenter 
SET Calls = 298 
WHERE DateKey = '20140527' AND Shift = 'AM'

--Ex8
UPDATE DimCustomer
SET EmailAddress = 'jessica92@adventure-works.com' 
WHERE LastName = 'Henderson' and FirstName = 'Jessica'


--Ex9
UPDATE DimAccount
SET AccountDescription = 'Telephone and Atel' 
WHERE AccountDescription = 'Telephone'

--Ex10
UPDATE DimPromotion
SET DiscountPct = 0.35, FrenchPromotionCategory = 'Reseller', SpanishPromotionName = 'Distribuidor', FrenchPromotionName = 'Revendeur'
WHERE PromotionKey = 10
