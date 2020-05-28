/*


CREATE view [stg].[view_StatLink_FT_SA] AS


	SELECT 
	[SL_DATE] as [Download_Date]
    ,[SL_TIME] as [Download_Time]
	,Expression_ID  
	,IPAddress_ID 
	,Source_ID 
	,UserAgent_ID 

	from 
	
	(
	SELECT  [SL_DATE]
      ,[SL_TIME]
      ,[FILENAME] 
      ,[IPADDRESS] 
      ,substring(CASE WHEN [USERAGENT]='-' THEN '' ELSE [USERAGENT] END ,1,100) as [USERAGENT]
	  ,substring(CASE WHEN [SOURCE]='-' THEN '' ELSE [SOURCE] END ,1,900) as [SOURCE]
  FROM [stg].[STG_StatLink_SA]) SA 
		LEFT OUTER JOIN [DWH_UsageStat].dwh.IPAddress_DM
			ON isnull(IPAddress_DM.IPAddress,'') = SA.IPAddress 
		LEFT OUTER JOIN [DWH_UsageStat].dwh.Source_DM
			ON isnull(Source_DM.[Source],'') = SA.[Source] 
		LEFT OUTER JOIN [DWH_UsageStat].dwh.UserAgent_DM
			ON isnull(UserAgent_DM.UserAgent,'') = SA.UserAgent 
		LEFT OUTER JOIN 

		(SELECT 
			 Expression_ID 
			,[iLibraryURLAlias],RANK() OVER(PARTITION BY [iLibraryURLAlias] ORDER BY Expression_ID DESC) as RankLOg  
		from [DWH_UsageStat].dwh.Expression_DM where [ExternalSource]='SL' and [iLibraryURLAlias]<>'' ) EXPR 

		ON SA.[FILENAME]=EXPR.iLibraryURLAlias





GO



*/