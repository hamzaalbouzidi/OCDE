CREATE TABLE [stg].STG_Expression_DM_SA(
	
	Expression_ExternalID [nvarchar](100) NULL,
	ExternalSource [varchar](3) NOT NULL,
	[DOI] [varchar](255) NULL,
	ISSN [INT] NULL,
	EISSN [varchar](10) NOT NULL,
	[Title] [nvarchar](2000) NULL,
	[SubTitle] [nvarchar](2000) NULL,
	Language_ID [INT] NOT NULL,
	Directorate_lID [varchar](4) NOT NULL,
	Theme_ID [INT] NOT NULL,
	IGO_ID [INT] NOT NULL,
	ObjectType_ID [INT] NOT NULL,
	[FirstRelease_Date] [datetime] NULL,
	[iLibraryURLAlias] [varchar](1003) NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL
	)