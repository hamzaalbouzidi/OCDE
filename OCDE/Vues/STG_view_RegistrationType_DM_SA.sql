/*
USE [STG_UsageStat]
GO


CREATE view [stg].[view_RegistrationType_DM_SA] AS

SELECT
	SA.RegistrationType
FROM
[stg].STG_Registration_SA SA
LEFT OUTER JOIN [DWH_UsageStat].[dwh].RegistrationType_DM DM 
	ON DM.RegistrationType = SA.RegistrationType 
WHERE DM.RegistrationType_ID IS NULL
	--AND SA.RegistrationType IS NOT NULL
GROUP BY SA.RegistrationType
GO
*/