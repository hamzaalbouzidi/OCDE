
CREATE TABLE [stg].[STG_BrowseIt_TMP](
	[Date] [nvarchar](50) NULL,
	[Heur] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[Item] [nvarchar](100) NULL,
	[Type] [nvarchar](2000) NULL,
	[File_Date] [date] NOT NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE()
)