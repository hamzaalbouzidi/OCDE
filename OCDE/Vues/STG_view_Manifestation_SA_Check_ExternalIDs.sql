CREATE VIEW [stg].[view_Manifestation_SA_Check_ExternalIDs]
AS
SELECT   
		CASE
			WHEN Expression_DM.[Expression_ExternalID]	IS NULL		THEN 'Expression_ExternalID not matched'
			WHEN Format_DM.[Format_ExternalID]			IS NULL		THEN 'Format_ExternalID not matched'			
		 END AS Reason
	  ,[Manifestation_ExternalID]
      ,[STG_Manifestation_SA].[ExternalSource]
      ,[STG_Manifestation_SA].[Expression_ExternalID]
      ,[STG_Manifestation_SA].[Format_ExternalID]
      ,[STG_Manifestation_SA].[FirstRelease_Date]
	FROM [stg].[STG_Manifestation_SA] 
	LEFT OUTER JOIN [stg].Expression_DM 
		ON Expression_DM.[Expression_ExternalID]	= [stg].[STG_Manifestation_SA].[Expression_ExternalID]
	LEFT OUTER JOIN [stg].Format_DM 
		ON Format_DM.[Format_ExternalID]			= [stg].[STG_Manifestation_SA].[Format_ExternalID]	
	WHERE  Expression_DM.[Expression_ExternalID] IS NULL
		OR Format_DM.[Format_ExternalID]		 IS NULL
