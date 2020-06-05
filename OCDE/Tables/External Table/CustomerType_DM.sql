CREATE EXTERNAL TABLE [stg].[CustomerType_DM] 
(  
	[CustomerType_ID] [int]  NOT NULL,
	[CustomerType] [nvarchar](50) NOT NULL,
	[CustomerType_Lib_EN] [nvarchar](150) NULL,
	[CustomerType_Lib_FR] [nvarchar](150) NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dwh', 
	OBJECT_NAME = N'CustomerType_DM'
) 
