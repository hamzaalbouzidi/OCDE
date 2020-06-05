CREATE EXTERNAL TABLE [stg].[CCMZone_DM] 
(  
	[CCMZone_ID] [int] NOT NULL,
	[CCMZone] [nvarchar](100) NOT NULL,
	[ManagerName] [nvarchar](100) NOT NULL,
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
	OBJECT_NAME = N'CCMZone_DM'
) 
