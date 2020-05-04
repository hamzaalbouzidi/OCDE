CREATE TABLE [dwh].[Expression_DM_SA_OPKV3](
	[Expression_ExternalID] [nvarchar](100) NULL,
	[ExternalSource] [varchar](3) NOT NULL,
	[DOI] [varchar](255) NULL,
	[ISSN] [nchar](10) NULL,
	[Title] [nvarchar](2000) NULL,
	[SubTitle] [nvarchar](2000) NULL,
	[Language_ExternalID] [varchar](3) NOT NULL,
	[Directorate_ExternalID] [varchar](4) NOT NULL,
	[Theme_ExternalID] [varchar](500) NOT NULL,
	[IGO_ExternalID] [int] NULL,
	[ObjectType_ExternalID] [int] NULL,
	[FirstRelease_Date] [datetime] NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL,
	[iLibraryURLAlias] [varchar](1003) NULL
)