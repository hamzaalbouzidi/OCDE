CREATE TABLE [dwh].[Expression_DM](
	[Expression_ID] [int] IDENTITY(1,1) NOT NULL,
	CONSTRAINT [PK_Expression_ID] PRIMARY KEY([Expression_ID]),
	[Expression_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[DOI] [nvarchar](100) NULL,
	[ISSN] [nvarchar](20) NULL,
	[EISSN] [nvarchar](20) NULL,
	[Title] [nvarchar](2000) NOT NULL,
	[SubTitle] [nvarchar](2000) NULL,
	[Language_ID] [int] NOT NULL ,
	CONSTRAINT [FK_Expression_Language_ID] FOREIGN KEY ([Language_ID])
    REFERENCES [dwh].[Language_DM] ([Language_ID]),
	[Directorate_ID] [int] NOT NULL,
	CONSTRAINT [FK_Expression_Directorate_ID] FOREIGN KEY ([Directorate_ID])
    REFERENCES [dwh].[Directorate_DM] ([Directorate_ID]),
	[Theme_ID] [int] NOT NULL,
	CONSTRAINT [FK_Expression_Theme_ID] FOREIGN KEY ([Theme_ID])
    REFERENCES [dwh].[Theme_DM] ([Theme_ID]),
	[Igo_ID] [int] NOT NULL,
	[ObjectType_ID] [int] NOT NULL,
	CONSTRAINT [FK_Expression_ObjectType_ID] FOREIGN KEY ([ObjectType_ID])
    REFERENCES [dwh].[ObjectType_DM] ([ObjectType_ID]),
	[FirstRelease_Date] [datetime] NULL,
	[iLibraryURLAlias] [nvarchar](1054) NULL,
	[DefaultParent_ID] [int] NULL,
	[MainParent_ID] [int] NULL,
	[TopParent_ID] [int] NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Parent_ExternalID] [nvarchar](100) NULL,
	[Expression_ExternalSource] [nchar](10) NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL,
	[Top2Parent_ID] [int] NULL,
	[Top3Parent_ID] [int] NULL,
	[iLibraryAccessMode] [tinyint] NULL,
	[HasEpub] [bit] NULL,
	[HasEBook] [bit] NULL,
	[HasRead] [bit] NULL,
	[HasHTML] [bit] NULL,
	[HasExcel] [bit] NULL
)

GO

CREATE NONCLUSTERED INDEX [IX_Expression_DM_Expression_ExternalID] ON [dwh].[Expression_DM] (Expression_ExternalID)

GO
CREATE NONCLUSTERED INDEX [IX_Expression_DM_DOI] ON [dwh].[Expression_DM] ([DOI])
GO
CREATE NONCLUSTERED INDEX [IX_Expression_DM_ExternalSource] ON [dwh].[Expression_DM] (ExternalSource)





