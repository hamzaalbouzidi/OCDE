CREATE TABLE [stg].[STG_GoogleBooksMonthly_TMP](
	[Primary ISBN] [nvarchar](50) NULL,
	[Title] [nvarchar](500) NULL,
	[Book Visits (BV)] [nvarchar](50) NULL,
	[BV with Pages Viewed] [nvarchar](50) NULL,
	[Non-Unique Buy Clicks] [nvarchar](50) NULL,
	[BV with Buy Clicks] [nvarchar](50) NULL,
	[Buy Link CTR] [nvarchar](50) NULL,
	[Pages Viewed] [nvarchar](50) NULL,
	[File_Date] [date] NOT NULL,
	[Import_Date] [datetime] NOT NULL
) 