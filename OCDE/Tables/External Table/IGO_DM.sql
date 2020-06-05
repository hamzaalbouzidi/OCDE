CREATE EXTERNAL TABLE [stg].[IGO_DM] 
(  
	[IGO_ID] [int]  NOT NULL ,
	[IGO_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[IGO_Lib_EN] [nvarchar](255) NOT NULL,
	[IGO_Lib_FR] [nvarchar](255) NOT NULL,
	[IGO_Code_EN] [nvarchar](50) NOT NULL,
	[IGO_Code_FR] [nvarchar](50) NOT NULL,
	[DOIPrefix] [nvarchar](8) NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL 
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dwh', 
	OBJECT_NAME = N'IGO_DM'
) 
