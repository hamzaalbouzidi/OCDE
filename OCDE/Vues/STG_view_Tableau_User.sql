/*


CREATE view [stg].[view_Tableau_User]
--WITH SCHEMABINDING
as

SELECT
	 Registration_DM.Registration_ID
	,Registration_DM.Name as InstitutionName
	,Registration_DM.IdentityID
	,CustomerType_DM.CustomerType_Lib_EN as CustomerType
	,RegistrationType_DM.RegistrationType
	,CASE 
		WHEN CustomerType = 'GUEST' THEN 'Unknown'
		ELSE Country_DM.Country_Lib_EN
	END AS Country
	,CCMZone_DM.ManagerName
	,CCMZone_DM.CCMZone as CCM
FROM [DWH_UsageStat].dwh.Registration_DM
INNER JOIN [DWH_UsageStat].dwh.CustomerType_DM
	ON CustomerType_DM.CustomerType_ID = Registration_DM.CustomerType_ID
INNER JOIN [DWH_UsageStat].dwh.RegistrationType_DM
	ON RegistrationType_DM.RegistrationType_ID = Registration_DM.RegistrationType_ID 
INNER JOIN [DWH_UsageStat].dwh.Location_DM 
	ON Location_DM.Location_ID = Registration_DM.Location_ID
INNER JOIN [DWH_UsageStat].dwh.Country_DM
	ON Country_DM.Country_ID = Location_DM.Country_ID
LEFT OUTER JOIN [DWH_UsageStat].dwh.CCMZone_DM
	ON CCMZone_DM.CCMZone_ID = Country_DM.CCMZone_ID
GO



*/