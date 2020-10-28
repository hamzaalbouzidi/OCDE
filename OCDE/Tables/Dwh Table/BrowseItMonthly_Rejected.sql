CREATE TABLE [dwh].[BrowseItMonthly_Rejected]
(
	[Download_Date] [date] NULL,
	[Expression_ID] [int] NOT NULL,
	[Downloads] [int] NULL,
	[Exclude] [bit] NOT NULL,
	[Reject_Date] [datetime] NOT NULL
) 
GO

ALTER TABLE [dwh].[BrowseItMonthly_Rejected] ADD  DEFAULT (getutcdate()) FOR [Reject_Date]
GO

