CREATE TABLE [dwh].[Manifestation_DM](
	[Manifestation_ID] [int] IDENTITY(1,1) NOT NULL ,
	[Manifestation_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[Expression_ID] [int] NOT NULL,
	CONSTRAINT [FK_Manifestation_Expression_ID] FOREIGN KEY ([Expression_ID])
    REFERENCES [dwh].[Expression_DM] ([Expression_ID]),
	[Format_ID] [int] NOT NULL,
	CONSTRAINT [FK_Manifestation_Format_ID] FOREIGN KEY ([Format_ID])
    REFERENCES [dwh].[Format_DM] ([Format_ID]),
	[ISBN13] [nvarchar](20) NULL,
	[FirstRelease_Date] [datetime] NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL
)
