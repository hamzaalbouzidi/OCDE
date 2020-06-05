CREATE EXTERNAL TABLE [stg].[UserAgent_DM] 
(  
	[UserAgent_ID] [int] NOT NULL,
	[UserAgent] [nvarchar](900) NOT NULL,
	[PotentialBot] [bit] NOT NULL,
	[PotentialCrawler] [bit] NOT NULL,
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
	OBJECT_NAME = N'UserAgent_DM'
) 
