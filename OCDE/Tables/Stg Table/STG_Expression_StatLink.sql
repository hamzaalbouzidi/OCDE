CREATE TABLE [stg].STG_Expression_StatLink(
	
	ExpressionId [varchar](100) NULL,
	DOI [varchar](50) NULL,
	ISSN [INT] NULL,
	Title  [varchar](255) NULL,
	SubTitle [INT] NULL,
	[Language] [varchar](3) NULL,
	[Directorate] [varchar](4) NULL,	
	[Theme] [varchar](100) NULL,
	[IGOId] [INT] NULL,
	[ObjectTypeId] [INT] NOT NULL,
	[FirstReleaseDate] [datetime] NULL,
	[iLibraryURLAlias] [varchar](255) NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL
	)