/*
USE [STG_UsageStat]
GO



CREATE view [stg].[view_Registration_DM_SA]
AS

SELECT 
	 [identityID]		
	,[Name]
	,CT.[CustomerType_ID]
	,L.Location_ID
	,[CU_Number]
	,[Admin]
	,RT.[RegistrationType_ID]
	,SA.RegistrationTypeNo
	,[isActive]
	,[isParentConsortium]
	,[isChildConsortium]
	,[isMaster]
	,[isSubordinate]
	,[ParentMaster_identityID]
	,[DoNotCountDL]
	FROM [stg].[STG_Registration_SA] SA
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].Country_DM Country
		ON Country.Country_Code = SA.Country
			AND Country.IsCurrent = 1
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].City_DM City
		ON City.City = SA.City
			AND City.IsCurrent = 1
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].Location_DM L 
		ON L.City_ID = City.City_ID
			AND L.Country_ID = Country.Country_ID
			AND L.IsCurrent = 1
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].RegistrationType_DM RT
		ON RT.RegistrationType = SA.RegistrationType
			AND RT.IsCurrent = 1
	LEFT OUTER JOIN [DWH_UsageStat].[dwh].CustomerType_DM CT
		ON CT.CustomerType = SA.CustomerType
			AND CT.IsCurrent = 1


GO


*/