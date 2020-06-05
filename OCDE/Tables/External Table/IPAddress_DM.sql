CREATE EXTERNAL TABLE [stg].[IPAddress_DM] 
(  
	[IPAddress_ID] [int] NOT NULL,
	[IPAddress] [nvarchar](100) NOT NULL,
	[Location_ID] [int] NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL,
	[Country_ID] [int] NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dwh', 
	OBJECT_NAME = N'IPAddress_DM'
) 