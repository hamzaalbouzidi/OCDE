CREATE EXTERNAL TABLE [stg].[Statlink] 
(  
	[ID] [int] NOT NULL,
	[Identifier] [varchar](50) NULL,
	[Metadata-Location] [varchar](255) NULL,
	[Metadata-Title] [varchar](255) NULL,
	[Metadata-Subject] [varchar](max) NULL,
	[Metadata-Creator] [varchar](50) NULL,
	[Metadata-Date] [datetime] NULL,
	[Metadata-PublicSearch] [bit] NULL,
	[BatchDate] [datetime] NULL,
	[ProductCode] [varchar](100) NULL,
	[ProductType] [varchar](3) NULL,
	[Element] [varchar](1) NULL,
	[ProductCode_legacy] [varchar](100) NULL,
	[isInKappa] [bit] NOT NULL 
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource3, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'Statlink'
) 
