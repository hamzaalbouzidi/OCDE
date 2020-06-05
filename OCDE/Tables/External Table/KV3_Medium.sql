CREATE EXTERNAL TABLE [stg].[KV3_Medium] 
(  
	[Medium] [varchar](10) NOT NULL,
	[EnglishDesc] [varchar](255) NULL,
	[FrenchDesc] [varchar](255) NULL,
	[Medium_KV3] [varchar](25) NULL,
	[MimeType] [varchar](50) NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_Medium'
) 