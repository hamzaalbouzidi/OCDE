CREATE TABLE [stg].STG_Expression_DM_SA_OP(
	Expression_ExternalID [varchar](100) NULL,
	[ExternalSource] [varchar](3) NOT NULL,
	DOI [varchar](255) NULL,
	ISSN [varchar](10) NULL,
	[Title] [varchar](2000) NULL,
	[SubTitle] [varchar](2000) NULL,
	Language_ExternalID [varchar](3) NOT NULL,
	Directorate_ExternalID [varchar](4) NOT NULL,
	Theme_ExternalID [varchar](100) NOT NULL,
	IGO_ExternalID [INT] NULL,
	ObjectType_ExternalID [INT] NULL,
	[FirstRelease_Date] [datetime] NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL,
	[iLibraryURLAlias] [varchar](1003) NULL
	)
GO

CREATE CLUSTERED INDEX [IX_STG_ExternalSource] ON [stg].[STG_Expression_DM_SA_OP] ([ExternalSource])


