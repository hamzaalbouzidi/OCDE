CREATE EXTERNAL TABLE [stg].[KV3_ExpressionCrossReference] 
(  
	[ExpressionId] [varchar](30) NOT NULL,
	[CrossReferenceType] [int] NOT NULL,
	[TargetExpressionId] [varchar](30) NOT NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_ExpressionCrossReference'
) 
