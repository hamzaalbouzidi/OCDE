CREATE TABLE [stg].[STG_FreePreviewDaily_SA_Rejected]
(
	[Download_Date] [date] NULL,
	[iLibraryURLAlias] [nvarchar](1054) NULL,
	[Embed] [bit] NULL,
	[Downloads] [int] NULL,
	[File_Date] [date] NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE()
)
