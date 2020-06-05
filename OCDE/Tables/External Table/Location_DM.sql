CREATE EXTERNAL TABLE [stg].[Location_DM] 
(  
	[Location_ID] [int] NOT NULL ,
	[City_ID] [int] NOT NULL,
	[Country_ID] [int] NOT NULL,
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
	OBJECT_NAME = N'Location_DM'
) 
