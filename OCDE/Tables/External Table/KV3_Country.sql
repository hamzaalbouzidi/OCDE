CREATE EXTERNAL TABLE [stg].[KV3_Country] 
(  
	[Country] [varchar](4) NOT NULL,
	[ISO2] [varchar](2) NULL,
	[EnglishDesc] [varchar](255) NULL,
	[FrenchDesc] [varchar](255) NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_Country'
) 
