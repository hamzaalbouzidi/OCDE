CREATE TABLE [dwh].[Expression_Rejected]
(
	[Job_ID] [int] NULL,
	[Reason] [nvarchar](max) NULL,
	[Expression_ExternalID] [nvarchar](100) NULL,
	[ExternalSource] [nchar](10) NULL,
	[DOI] [nvarchar](100) NULL,
	[ISSN] [nvarchar](20) NULL,
	[EISSN] [nvarchar](20) NULL,
	[Title] [nvarchar](2000) NULL,
	[SubTitle] [nvarchar](2000) NULL,
	[ItemType] [nvarchar](255) NOT NULL,
	[Language_ExternalID] [nvarchar](100) NOT NULL,
	[Directorate_ExternalID] [nvarchar](100) NOT NULL,
	[Theme_ExternalID] [nvarchar](100) NOT NULL,
	[Igo_ExternalID] [nvarchar](100) NOT NULL,
	[ObjectType_ExternalID] [nvarchar](100) NOT NULL,
	[FirstRelease_Date] [datetime] NULL,
	[iLibraryURLAlias] [nvarchar](1054) NULL,
	[Parent] [nvarchar](100) NULL,
	[TopParent] [nvarchar](100) NULL ,
	[Reject_Date] [datetime] NOT NULL
) 
GO

ALTER TABLE [dwh].[Expression_Rejected] ADD  DEFAULT (getutcdate()) FOR [Reject_Date]
GO
