CREATE TABLE [stg].[STG_GoogleBooksMonthly_SA](
	[Download_Date] [date] NULL,
	[ISBN13] [nvarchar](100) NULL,
	[books_visits] [int] NOT NULL,
	[BV_w_pages_viewed] [int] NOT NULL,
	[pages_viewed] [int] NOT NULL
)