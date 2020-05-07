/*
USE [STG_UsageStat]
GO



CREATE view [stg].[view_CustomerType_DM_SA] AS

SELECT
	SA.CustomerType
FROM
STG_Registration_SA SA
LEFT OUTER JOIN [DWH_UsageStat].[dwh].CustomerType_DM DM 
	ON DM.CustomerType = SA.CustomerType 
WHERE DM.CustomerType_ID IS NULL
	--AND SA.CustomerType IS NOT NULL
GROUP BY SA.CustomerType
GO
*/