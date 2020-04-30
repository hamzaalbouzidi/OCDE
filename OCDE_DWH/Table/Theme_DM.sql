CREATE TABLE [dwh].[Theme_DM](
	[Theme_ID] [int] IDENTITY(1,1) NOT NULL primary key,
	[Theme_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[Theme_Lib_EN] [nvarchar](150) NOT NULL,
	[Theme_Lib_FR] [nvarchar](150) NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL
)
