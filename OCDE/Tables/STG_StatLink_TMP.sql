CREATE TABLE [stg].[STG_StatLink_TMP]
(
	[item] [nvarchar](max) NULL,
	[File_Date] [date] NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE()
)
