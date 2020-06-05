CREATE EXTERNAL TABLE [stg].[KV3_ProductCrossReference] 
(  
	[ProductId] [varchar](30) NOT NULL,
	[CrossReferenceType] [int] NOT NULL,
	[Target] [varchar](255) NULL,
	[TargetProductId] [varchar](30) NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_ProductCrossReference'
) 
