﻿CREATE TABLE [dwh].[City_DM](
	[City_ID] [int] IDENTITY(1,1) NOT NULL ,
	CONSTRAINT [PK_City_ID] PRIMARY KEY([City_ID]),
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
