CREATE TABLE [stg].STG_KV3_Expression(
	
	[DOI] [varchar](255) NULL,
	[ProductId] [varchar](30) NOT NULL,
	[ISSN] [varchar](10) NULL,
	[Title] [varchar](2000) NULL,
	[Subtitle] [varchar](2000) NULL,
	[ItemType] [varchar](255) NULL,
	[Language] [varchar](3) NOT NULL,
	[Theme] [varchar](500) NOT NULL,
	[Directorate] [varchar](4) NOT NULL,
	[IgoId] [INT] NULL,
	[ObjectTypeId] [INT] NULL,
	[FirstReleaseDate] [datetime] NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL,
	[iLibraryURLAlias] [varchar](1003) NULL,
	[iLibraryAccessTypeId] [INT] NOT NULL
	)