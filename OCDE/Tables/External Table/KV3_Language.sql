CREATE EXTERNAL TABLE [stg].[KV3_Language] 
(  
	[Language] [varchar](3) NOT NULL,
	[EnglishDesc] [varchar](255) NULL,
	[FrenchDesc] [varchar](255) NULL,
	[ISO3] [varchar](4) NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_Language'
) 
