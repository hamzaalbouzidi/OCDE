CREATE view [stg].[view_FreePreviewDaily_FT_SA] AS

SELECT   
	 [Download_Date]	
	,Expression_ID
	,Embed
	,Downloads
FROM [stg].[STG_FreePreviewDaily_SA]  

