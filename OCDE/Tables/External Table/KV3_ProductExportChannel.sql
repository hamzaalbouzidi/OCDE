CREATE EXTERNAL TABLE [stg].[KV3_ProductExportChannel] 
(  
	[ProductId] [varchar](30) NOT NULL,
	[ExportChannelId] [smallint] NOT NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_ProductExportChannel'
) 
