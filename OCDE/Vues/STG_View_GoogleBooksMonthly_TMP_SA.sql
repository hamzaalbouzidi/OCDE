/*
USE [STG_UsageStat]
GO


CREATE VIEW [stg].[View_GoogleBooksMonthly_TMP_SA]
AS


SELECT 
		 [File_Date]
		,[Import_Date]
		,[Primary ISBN] 		
		,REPLACE(REPLACE([Book Visits (BV)],CHAR(160),''),',','') as BV
		,REPLACE(REPLACE([BV with Pages Viewed],CHAR(160),''),',','') as BVWPV
		,REPLACE(REPLACE([Pages Viewed],CHAR(160),''),',','') as PV
		,M.Manifestation_ID
FROM
(
SELECT [Primary ISBN]
      ,[Title]
      ,[Book Visits (BV)]
      ,[BV with Pages Viewed]
      ,[Non-Unique Buy Clicks]
      ,[BV with Buy Clicks]
      ,[Buy Link CTR]
      ,[Pages Viewed]
      ,[File_Date]
      ,[Import_Date]
  FROM [stg].[STG_GoogleBooksMonthly_TMP]) T


			  LEFT OUTER  JOIN 
			  
			  
			  (SELECT Manifestation_Id,ISBN13 from (SELECT Manifestation_Id,ISBN13, RANK() OVER (PARTITION BY ISBN13 ORDER BY Manifestation_Id desc) as rk  FROM  [DWH_UsageStat].[dwh].Manifestation_DM) t where t.rk=1) M
				ON M.ISBN13  = t.[Primary ISBN] 
			   where  
					LEN(T.[Primary ISBN])<=13
					and T.[Primary ISBN] not like 'ISSN:%'
GO



*/