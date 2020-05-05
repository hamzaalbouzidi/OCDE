CREATE TABLE [dwh].[Country_DM](
	[Country_ID] [int] IDENTITY(1,1) NOT NULL,
	CONSTRAINT [PK_Country_ID] PRIMARY KEY([Country_ID]),
	[Country_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[Country_Code] [nvarchar](10) NULL,
	[Country_ISO2Code] [nvarchar](10) NULL,
	[Country_Lib_EN] [nvarchar](150) NULL,
	[Country_Lib_FR] [nvarchar](150) NULL,
	[CCMZone_ID] [int] NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL
)