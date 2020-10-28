CREATE TABLE [stg].STG_Expression_SA_OP(
	
	Expression_ExternalID [varchar](255) NULL,
	ExternalSource [varchar](3) NOT NULL,
	[DOI] [varchar](255) NULL,
	ISSN [INT] NULL,
	EISSN [varchar](1) NOT NULL,
	[Title] [varchar](255) NULL,
	[SubTitle] [varchar](255) NULL,
	[ItemType] [varchar](255) NULL,
	Language_ExternalID [varchar](3) NULL,
	Directorate_ExternalID [varchar](4) NULL,
	Theme_ExternalID [INT] NULL,
	IGO_ExternalID [INT] NULL,
	ObjectType_ExternalID [INT] NULL,
	[FirstRelease_Date] [datetime] NULL,
	[iLibraryURLAlias] [varchar](1003) NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL
	)