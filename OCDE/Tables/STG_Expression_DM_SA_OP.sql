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
GO
CREATE NONCLUSTERED INDEX [IX_STG_Language_ExternalID] ON [stg].[STG_Expression_DM_SA_OP] ([Language_ExternalID])
GO
CREATE NONCLUSTERED INDEX [IX_STG_Directorate_ExternalID] ON [stg].[STG_Expression_DM_SA_OP] ([Directorate_ExternalID])
GO
CREATE NONCLUSTERED INDEX [IX_STG_Theme_ExternalID] ON [stg].[STG_Expression_DM_SA_OP] ([Theme_ExternalID])
GO
CREATE NONCLUSTERED INDEX [IX_STG_Igo_ExternalID] ON [stg].[STG_Expression_DM_SA_OP] ([Igo_ExternalID])
GO
CREATE NONCLUSTERED INDEX [IX_STG_ObjectType_ExternalID] ON [stg].[STG_Expression_DM_SA_OP] ([ObjectType_ExternalID])

