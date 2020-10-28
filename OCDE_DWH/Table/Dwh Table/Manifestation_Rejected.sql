CREATE TABLE [dwh].[Manifestation_Rejected]
(
	[Job_ID] [int] NULL,
	[Reason] [nvarchar](max) NULL,
	[Manifestation_ExternalID] [nvarchar](100) NULL,
	[ExternalSource] [nchar](10) NULL,
	[Expression_ExternalID] [nvarchar](100) NULL,
	[Format_ExternalID] [nvarchar](100) NULL,
	[ISBN13] [nvarchar](20) NULL,
	[FirstRelease_Date] [datetime] NULL,
	[Reject_Date] [datetime] NOT NULL
) 
GO

ALTER TABLE [dwh].[Manifestation_Rejected] ADD  DEFAULT (getutcdate()) FOR [Reject_Date]
GO