CREATE TABLE [dwh].[Directorate_DM](
	[Directorate_ID] [int] IDENTITY(1,1) NOT NULL ,
	[Directorate_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[Directorate_Code] [nvarchar](4) NOT NULL,
	[Directorate_Lib_EN] [nvarchar](150) NOT NULL,
	[Directorate_Lib_FR] [nvarchar](150) NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL, 
    CONSTRAINT [PK_Directorate_DM] PRIMARY KEY ([Directorate_ID])
)
