/*
USE [STG_UsageStat]
GO


create view [stg].[view_Update_Expression_DM_Part1] as

		SELECT 
			EXPD.[FirstReleaseDate],
			EXPD.[FirstExportDate],
			EXPD.[LatestExportDate],
			EXPD.[LatestDeletionDate],
			cast(EXPD.DOI as [nvarchar](255) ) as  DOI
		FROM [DWH_UsageStat].[dwh].Expression_DM LEFT OUTER JOIN 

		(
				select * from (SELECT 
							DOI
							,[FirstReleaseDate]
							,[FirstExportDate]
							,[LatestExportDate]
							,[LatestDeletionDate]
							,ROW_NUMBER() OVER (PARTITION BY DOI ORDER BY rn ASC) AS rn2


				
				FROM
				(					
				
				SELECT DOI collate Latin1_General_CI_AS as DOI
					  ,min(case when [FirstRelease_Date] is not null then [FirstRelease_Date] end) as [FirstReleaseDate]
					  ,min(case when [FirstExportDate] is not null then [FirstExportDate] end)  as [FirstExportDate]
					  ,max(case when [LatestExportDate] is not null then [LatestExportDate] end) as [LatestExportDate]
					  ,max(case when [LatestDeletionDate] is not null then [LatestDeletionDate] end) as [LatestDeletionDate]
					  ,1 as rn
				  FROM [stg].[view_Expression_SA_OPKV3] where DOI is not null and DOI <>'' and [FirstExportDate]is not null

				  Group By DOI  ) t) t2 where t2.rn2=1
		
				) EXPD on Expression_DM.DOI=EXPD.DOI 

		
GO



*/