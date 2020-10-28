CREATE TABLE [dwh].[GoogleBooksMonthly_Rejected]
(
	[Download_Date] [date] NULL,
	[ISBN13] [nvarchar](100) NULL,
	[books_visits] [int] NOT NULL,
	[BV_w_pages_viewed] [int] NOT NULL,
	[pages_viewed] [int] NOT NULL,
	[File_Date] [date] NOT NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE(),
	[Reject_Date] [datetime] NOT NULL
) 
GO

ALTER TABLE [dwh].[GoogleBooksMonthly_Rejected] ADD  DEFAULT (getutcdate()) FOR [Reject_Date]
GO
