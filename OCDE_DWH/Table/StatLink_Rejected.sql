CREATE TABLE [dwh].[StatLink_Rejected]
(
	[SL_DATE] [date] NULL,
	[SL_TIME] [time](7) NULL,
	[FILENAME] [nvarchar](max) NULL,
	[IPADDRESS] [nvarchar](max) NULL,
	[USERAGENT] [nvarchar](max) NULL,
	[SOURCE] [nvarchar](max) NULL,
	[File_Date] [date] NOT NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE()
)
