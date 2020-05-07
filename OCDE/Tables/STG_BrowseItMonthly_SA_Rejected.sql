CREATE TABLE [stg].[STG_BrowseItMonthly_SA_Rejected]
(
	[Download_Date] [date] NULL,
	[Downloads] [int] NULL,
	[Item] [varchar](200) NULL,
	[File_Date] [date] NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE()
)

