create view [stg].[view_Update_Expression_DM_Part2] as

	   SELECT
	   EXPD.[ISSN],             
	   EXPD.[Title],            
	   EXPD.[SubTitle],         
	   EXPD.[iLibraryURLAlias], 
	   EXPD.[iLibraryAccessMode],
	   cast(EXPD.DOI as [nvarchar](255) ) as  DOI
			 
		FROM [stg].Expression_DM INNER JOIN 
 
		(
				select * from (SELECT DOI
					  ,[ISSN]  
					  ,[Title] 
					  ,[SubTitle] 
					  ,[iLibraryURLAlias]
					  ,[iLibraryAccessMode]
					  ,ROW_NUMBER() OVER (PARTITION BY DOI ORDER BY SourceRn,rn ASC) AS rn2

					  From
				
				(				
				SELECT DOI collate Latin1_General_CI_AS as DOI
					  ,[ISSN] collate Latin1_General_CI_AS as [ISSN]
					  ,[Title] collate Latin1_General_CI_AS as [Title]
					  ,[SubTitle] collate Latin1_General_CI_AS as [SubTitle] 
					  ,[iLibraryURLAlias] collate Latin1_General_CI_AS as [iLibraryURLAlias]
					  ,[iLibraryAccessTypeId]  as [iLibraryAccessMode]
					  ,1 as SourceRn
					  ,ROW_NUMBER() OVER (PARTITION BY DOI ORDER BY [ProductId] DESC) AS rn
				  FROM [stg].[view_Expression] where DOI is not null and DOI <>'' 
		
				)t)t2 where t2.rn2=1) EXPD on Expression_DM.DOI=EXPD.DOI  
		
