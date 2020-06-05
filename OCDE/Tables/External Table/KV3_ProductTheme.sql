CREATE EXTERNAL TABLE [stg].[KV3_ProductTheme] 
(  
	[ProductId] [varchar](30) NOT NULL,
	[Theme] [varchar](100) NOT NULL,
	[Main] [bit] NOT NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_ProductTheme'
) 
