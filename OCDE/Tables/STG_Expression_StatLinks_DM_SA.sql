CREATE TABLE [stg].STG_Expression_StatLinks_DM_SA(
	[Expression_ExternalID] [varchar](100) NULL,
	[ExternalSource] [varchar](2) NOT NULL,
	DOI [varchar](50) NULL,
	ISSN [INT] NULL,
	Title  [varchar](255) NULL,
	SubTitle [INT] NULL,
	[Language_ID] [INT] NOT NULL,
	[Directorate_ID] [INT] NOT NULL,
	[Theme_ID] [INT] NOT NULL,
	[IGOId_ID] [INT] NOT NULL,
	[ObjectType_ID] [INT] NOT NULL,
	[FirstRelease_Date] [datetime] NULL,
	[iLibraryURLAlias] [varchar](255) NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL
	)