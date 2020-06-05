create view [stg].[view_US_Directorate] as 

SELECT
	 Directorate
	,EnglishDesc
	,FrenchDesc
FROM stg.KV3_Directorate