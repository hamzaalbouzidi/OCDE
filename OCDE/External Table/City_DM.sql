CREATE EXTERNAL TABLE [stg].[City_DM] 
(  
	[City_ID] [int]  NOT NULL ,
	[ExternalCity_ID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
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
DATA_SOURCE = ExternalDataSource --Previously created DATA SOURCE
) 
