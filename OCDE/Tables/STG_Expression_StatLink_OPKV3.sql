CREATE TABLE [stg].[STG_Expression_StatLink_OPKV3](
	[ExpressionId] [varchar](100) NULL,
	[DOI] [varchar](50) NULL,
	[ISSN] [int] NULL,
	[Title] [varchar](255) NULL,
	[SubTitle] [int] NULL,
	[Language] [varchar](3) NULL,
	[Directorate] [varchar](4) NULL,
	[Theme] [varchar](500) NULL,
	[IGOId] [int] NULL,
	[ObjectTypeId] [int] NOT NULL,
	[FirstReleaseDate] [datetime] NULL,
	[iLibraryURLAlias] [varchar](255) NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL
)