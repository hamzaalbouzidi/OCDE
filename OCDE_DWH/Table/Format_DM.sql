CREATE TABLE [dwh].[Format_DM](
	[Format_ID] [int] IDENTITY(1,1) NOT NULL primary key,
	[Format_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[MimeType] [nvarchar](50) NULL,
	[Format_Lib_EN] [nvarchar](150) NOT NULL,
	[Format_Lib_FR] [nvarchar](150) NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL
)
