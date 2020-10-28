CREATE TABLE [stg].STG_Expression_DM_SA(
	
	Expression_ExternalID [nvarchar](100) NULL,
	ExternalSource [varchar](3) NOT NULL,
	[DOI] [varchar](255) NULL,
	ISSN [varchar](10) NULL,
	EISSN [varchar](10) NOT NULL,
	[Title] [nvarchar](2000) NULL,
	[SubTitle] [nvarchar](2000) NULL,
	Language_ID [INT] NULL,
	Directorate_lID [varchar](4)  NULL,
	Theme_ID [INT]  NULL,
	IGO_ID [INT]  NULL,
	ObjectType_ID [INT]  NULL,
	[FirstRelease_Date] [datetime] NULL,
	[iLibraryURLAlias] [varchar](1003) NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL
	)