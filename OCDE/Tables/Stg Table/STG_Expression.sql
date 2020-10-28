
CREATE TABLE [stg].[STG_Expression] 

(		[DOI] [nvarchar](255) null
      ,[ProductId] [varchar](30) not null
      ,[ISSN] [nvarchar](10) null
      ,[Title] [nvarchar](2000) null
      ,[Subtitle] [nvarchar](2000) null
      ,[ItemType] [nvarchar](255) null
      ,[Language] [varchar](3) not null
      ,[Theme] [varchar](100) not null
      ,[Directorate] [varchar](4) not null
      ,[IgoId] [int] null
      ,[ObjectTypeId] [int] null
      ,[FirstReleaseDate] [datetime] null
      ,[FirstExportDate] [datetime] null
      ,[LatestExportDate] [datetime] null
      ,[LatestDeletionDate] [datetime] null
      ,[iLibraryURLAlias] [nvarchar](1003) null
	  ,[iLibraryAccessTypeId][int] not null 
	  )
