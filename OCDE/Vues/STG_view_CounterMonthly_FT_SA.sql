CREATE view [stg].[view_CounterMonthly_FT_SA] AS

SELECT   
	 [Download_Date]	
	,Expression_ID
	,Registration_ID
	,Downloads
FROM [stg].[STG_CounterMonthly_SA]
