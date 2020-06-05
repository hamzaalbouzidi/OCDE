CREATE EXTERNAL TABLE [stg].[KV3_IGO] 
(  
	[IgoId] [int] NOT NULL,
	[EnglishDesc] [varchar](255) NULL,
	[FrenchDesc] [varchar](255) NULL,
	[DoiPrefix] [varchar](8) NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_IGO'
) 
