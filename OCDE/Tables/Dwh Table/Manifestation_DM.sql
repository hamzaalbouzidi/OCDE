CREATE TABLE [dwh].[Manifestation_DM](
	[Manifestation_ID] [int] IDENTITY(1,1) NOT NULL ,
	CONSTRAINT [PK_Manifestation_DM] PRIMARY KEY ([Manifestation_ID]),
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
	[ValidTo] [date] NULL, 
)

GO

CREATE NONCLUSTERED INDEX [IX_Manifestation_DM_ISBN13] ON [dwh].[Manifestation_DM] ([ISBN13])
GO
CREATE NONCLUSTERED INDEX [MergeIndex] ON [dwh].[Manifestation_DM]
(
	[Manifestation_ExternalID] ASC,
	[ExternalSource] ASC,
	[IsCurrent] ASC
)
