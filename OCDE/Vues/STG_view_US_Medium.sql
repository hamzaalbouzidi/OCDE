CREATE VIEW [stg].[view_US_Medium] AS 

SELECT UPPER([Medium]) as [Medium] 
	,CASE Medium
		WHEN 'e' THEN 'E-book'
		ELSE [EnglishDesc]
	END AS [EnglishDesc]
	,CASE Medium
		WHEN 'e' THEN 'E-book'
		ELSE [FrenchDesc]
	END AS [FrenchDesc]
	,[Medium_KV3]
	,[MimeType]
FROM [stg].[KV3_Medium]
