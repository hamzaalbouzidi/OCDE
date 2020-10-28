CREATE view [stg].[view_City_DM_SA] AS

SELECT
	SA.City  as City
FROM
stg.STG_Registration_SA SA
LEFT OUTER JOIN [dwh].City_DM DM 
	ON DM.City = SA.City 
WHERE DM.City_ID IS NULL
	--AND SA.City IS NOT NULL
GROUP BY SA.City