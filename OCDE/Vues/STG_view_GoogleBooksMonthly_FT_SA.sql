/*
USE [STG_UsageStat]
GO



CREATE view [stg].[view_GoogleBooksMonthly_FT_SA] AS

SELECT   
	 [Download_Date]	
	,M.Expression_ID
	,SUM([books_visits]) AS [books_visits]
	,SUM([BV_w_pages_viewed]) AS [BV_w_pages_viewed]
	,SUM([pages_viewed]) AS [pages_viewed]
FROM [stg].[STG_GoogleBooksMonthly_SA] SA
INNER JOIN 

	 (SELECT Manifestation_Id,ISBN13,Expression_Id from (SELECT Manifestation_Id,ISBN13,Expression_Id, RANK() OVER (PARTITION BY ISBN13 ORDER BY Manifestation_Id desc) as rk  FROM  [DWH_UsageStat].[dwh].Manifestation_DM) t where t.rk=1) M
	 ON M.ISBN13 = SA.ISBN13 
GROUP BY 
	[Download_Date]
	,Expression_ID


GO



*/