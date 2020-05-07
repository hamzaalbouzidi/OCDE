CREATE TABLE [stg].[STG_GoogleBooksMonthly_SA_Rejected]
(
	[Download_Date] [date] NULL,
	[ISBN13] [nvarchar](100) NULL,
	[books_visits] [int] NOT NULL,
	[BV_w_pages_viewed] [int] NOT NULL,
	[pages_viewed] [int] NOT NULL,
	[File_Date] [date] NOT NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE()
)
