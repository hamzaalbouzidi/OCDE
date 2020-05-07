/*
USE [STG_UsageStat]
GO



CREATE view [stg].[view_Registration_SA_FI_2]
AS

SELECT 
	[identity_ID]
	,[Name]
	,[ParentIDs]
	,[SubordinateIDs]
	,[CustomerType]
	,ISNULL([City],'Unknown') as [City]
	,ISNULL([Country],'Unknown') as [Country]
	,[CU-Number]
	,[Admin]
	,[RegistrationTypeNo]
	,[RegistrationType]
	,[isActive]
	,[isParentConsortium]
	,[isChildConsortium]
	,[isMaster]
	,[isSubordinate]
	,[ParentMaster_identity_ID]
	,[DoNotCountDL]
FROM
(
	SELECT
	 [identity_ID]
	,[Name]
	,[ParentIDs]
	,[SubordinateIDs]
	,[CustomerType]
	,ISNULL([City],'Unknown') as [City]
	,CASE 
		WHEN identity_ID = 'guest' THEN 'Unknown'
		ELSE ISNULL([Country],'Unknown')
	 END as [Country]
	,[CU-Number]
	,[Admin]
	,[RegistrationTypeNo]
	,[RegistrationType]
	,[isActive]
	,[isParentConsortium]
	,[isChildConsortium]
	,[isMaster]
	,[isSubordinate]
	,[ParentMaster_ID] as [ParentMaster_identity_ID]
	,[DoNotCountDL]
	,ROW_NUMBER () OVER (PARTITION BY [identity_ID]
							ORDER BY isActive DESC) as row

	FROM (
		SELECT
				 identity_ID
				,Name
				,ParentIDs
				,SubordinateIDs
				,CustomerType
				,City
				,Country
				,[CU-Number]
				,[Admin]
				,[RegistrationTypeNo]
				,CASE RegistrationTypeNo			
					WHEN 1 THEN 'Stand-Alone'
					WHEN 2 THEN 'Stand-Alone'
					WHEN 3 THEN 'Consortium Parent'
					WHEN 39 THEN 'Consortium Parent'
					WHEN 4 THEN 'Consortium Child'
					WHEN 41 THEN 'Consortium Child as Sub-ordinate'
					WHEN 5 THEN 'Master Registration'
					WHEN 59 THEN 'Master Registration'
					WHEN 6 THEN 'Sub-Ordinate Registration'
					WHEN 7 THEN 'crawlers'
					WHEN 8 THEN 'OECD-PT '
					ELSE 'Unknown'		
				END AS [RegistrationType]
				,CASE 
					WHEN	RegistrationTypeNo = 2 
							OR RegistrationTypeNo = 39
							OR RegistrationTypeNo = 59
							OR RegistrationTypeNo = 58
							OR RegistrationTypeNo = 89
							OR RegistrationTypeNo = 0
						THEN 0
					ELSE 1
				END AS 	[isActive] 	
				,CASE RegistrationTypeNo
					WHEN 3 THEN 1
					WHEN 39 THEN 1
					ELSE 0
				END AS [isParentConsortium] 
				,CASE RegistrationTypeNo
					WHEN 4 THEN 1
					WHEN 41 THEN 1
					ELSE 0
				END AS [isChildConsortium] 
				,CASE RegistrationTypeNo
					WHEN 5 THEN 1
					WHEN 51 THEN 1
					WHEN 59 THEN 1
					WHEN 58 THEN 1
					WHEN 7 THEN 1
					ELSE 0
				END AS [isMaster] 
				,CASE RegistrationTypeNo
					WHEN 6 THEN 1
					ELSE 0
				END AS [isSubordinate]
				,CASE RegistrationTypeNo
					WHEN 4 THEN ParentIDs
					WHEN 41 THEN ParentIDs
					WHEN 6 THEN SubordinateIDs
				ELSE NULL
				END AS ParentMaster_ID
				,CASE RegistrationTypeNo
					WHEN 6 THEN 1
					WHEN 7 THEN 1
				ELSE 0
				END AS DoNotCountDL

		FROM (
			SELECT 
				 identity_ID
				,Name
				,ParentIDs
				,SubordinateIDs
				,CustomerType
				,City
				,Country
				,[CU-Number]
				,[Admin]
				,CASE 
				
						
					WHEN ([CU-Number] like 'cu-%' OR [CU-Number] like 'wb-%') AND ParentIDs = '' AND SubordinateIDs = '' AND UPPER([Admin]) = 'Y'
						THEN 1 -- Activated stand-alone registrations (one institution/subscriber)
						
						
					WHEN ([CU-Number] like 'cu-%' OR [CU-Number] like 'wb-%') AND ParentIDs = '' AND SubordinateIDs = '' AND UPPER([Admin]) = 'N'
						THEN 2 -- Unclaimed stand-alone registrations (one institution/subscriber)
						
						
					WHEN ([CU-Number] like 'cu-%' OR [CU-Number] like 'wb-%') AND ParentIDs = '' AND SubordinateIDs like '%,%' AND UPPER([Admin]) = 'Y'
						THEN 3 -- Activated Consortium Parent
						
						
					WHEN ([CU-Number] like 'cu-%' OR [CU-Number] like 'wb-%') AND ParentIDs = '' AND SubordinateIDs like '%,%' AND UPPER([Admin]) = 'N'
						THEN 39 -- Unclaimed Consortium Parent
						
					WHEN ParentIDs <> '' AND ParentIDs NOT LIKE '%,%' AND SubordinateIDs = '' AND UPPER([Admin]) = 'Y'
						THEN 4 -- Consortium Child
						
					WHEN ParentIDs <> '' AND ParentIDs NOT LIKE '%,%'  AND SubordinateIDs LIKE 'id%' AND UPPER([Admin]) = 'N'
						THEN 41 --Consortium Child as Sub-ordinate
											
					WHEN [CU-Number] = '' AND ParentIDs Like '%,%' AND SubordinateIDs = '' AND UPPER([Admin]) = 'Y'
						THEN 5 -- Activated Master Registration 
					
						
					WHEN ([CU-Number] like 'cu-%' OR [CU-Number] like 'wb-%') AND ParentIDs Like '%,%' AND SubordinateIDs = '' AND UPPER([Admin]) = 'Y'
						THEN 51 -- Activated Master Registration with CU-Number
						
					WHEN [CU-Number] = '' AND ParentIDs Like '%,%' AND SubordinateIDs = '' AND UPPER([Admin]) = 'N'
						THEN 59 -- Unclaimed Master Registration
						
						
					WHEN ([CU-Number] like 'cu-%' OR [CU-Number] like 'wb-%') AND ParentIDs like '%,%' AND SubordinateIDs = '' AND UPPER([Admin]) = 'N'
						THEN 58 -- Unclaimed Master Registration with CU-Number
						
						
					WHEN ([CU-Number] like 'cu-%' OR [CU-Number] like 'wb-%') AND ParentIDs = '' AND (SubordinateIDs LIKE 'id%' OR SubordinateIDs NOT LIKE '%,%') AND SubordinateIDs NOT LIKE '%,%'   AND UPPER([Admin]) = 'N'
						THEN 6 -- Sub-ordinate registration
						
					WHEN   [CU-Number] like '%'  AND ParentIDs = 'crawlers' AND SubordinateIDs like '%' OR identity_ID = 'crawlers'
						THEN 7 -- crawlers 
					
						
					WHEN [CU-Number] = '' AND ParentIDs = '' AND SubordinateIDs = '' AND UPPER([Admin]) = 'Y'
						THEN 8 -- Activated OECD / PT special accounts for testing and trial access
						
					WHEN [CU-Number] = '' AND ParentIDs = '' AND SubordinateIDs = '' AND UPPER([Admin]) = 'N'
						THEN 89 -- Unclaimed OECD / PT special accounts for testing and trial access
						
					ELSE 0 -- Unknown
				END
				AS [RegistrationTypeNo]	

			FROM
			[stg].view_Registration_SA_FI_1
		) AS PreFiltre
	) AS Regroupement
	GROUP BY
	[identity_ID]
	,[Name]
	,[ParentIDs]
	,[SubordinateIDs]
	,[CustomerType]
	,[City]
	,[Country]
	,[CU-Number]
	,[Admin]
	,[RegistrationTypeNo]
	,[RegistrationType]
	,[isActive]
	,[isParentConsortium]
	,[isChildConsortium]
	,[isMaster]
	,[isSubordinate]
	,[ParentMaster_ID]
	,[DoNotCountDL]

)AS Filtre_Active

WHERE row =1

GO
*/