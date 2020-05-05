CREATE TABLE [dwh].[Language_DM](
	[Language_ID] [int] IDENTITY(1,1) NOT NULL ,
	[Language_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[Language_Lib_EN] [nvarchar](150) NOT NULL,
	[Language_Lib_FR] [nvarchar](150) NOT NULL,
	[ISOCode] [nvarchar](4) NULL,
	[ISOCode3] [nvarchar](3) NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL
)
