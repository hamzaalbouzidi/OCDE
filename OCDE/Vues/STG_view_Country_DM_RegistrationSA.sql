CREATE view [stg].[view_Country_DM_RegistrationSA] AS

SELECT
	SA.Country as Country_Code
FROM
	stg.STG_Registration_SA SA
LEFT OUTER JOIN dwh.Country_DM DM 
	ON DM.Country_Code = SA.Country
WHERE DM.Country_ID IS NULL
	--AND SA.Country IS NOT NULL
GROUP BY SA.Country