CREATE EXTERNAL TABLE [stg].[KV3_ProductLanguage] 
(  
	[ProductId] [varchar](30) NOT NULL,
	[Language] [varchar](3) NOT NULL,
	[Title] [nvarchar](2000) NULL,
	[Subtitle] [nvarchar](2000) NULL,
	[Abstract] [nvarchar](max) NULL,
	[ShortAbstract] [nvarchar](max) NULL 
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_ProductLanguage'
) 
