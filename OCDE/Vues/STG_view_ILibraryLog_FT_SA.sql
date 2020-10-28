CREATE view [stg].[view_ILibraryLog_FT_SA] AS

SELECT   

	 [Download_Date]	
	,Manifestation_ID 
	,Registration_ID
	,IPAddress_ID
	,DOI 
	,Source_ID
	,SourceLight_ID
	,UserAgent_ID
	,Session_ID
	,[EventLogID]


FROM  [stg].[STG_iLibraryLog_SA]


