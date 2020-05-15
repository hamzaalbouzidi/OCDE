/*


CREATE view [stg].[view_Registration_SA_Check_Name] as

SELECT
	[identityID]
	,[Name]
	,[ParentIDs]
	,[SubordinateIDs]
	,[CustomerType]
	,[City]
	,[Country]
	,[CU_Number]
	,[Admin]
	,[RegistrationType]
	,[isActive]
	,[isParentConsortium]
	,[isChildConsortium]
	,[isMaster]
	,[isSubordinate]
	,[ParentMaster_identityID]
	,[DoNotCountDL]
FROM
[stg].STG_Registration_SA
WHERE Name IS NULL
GO



*/