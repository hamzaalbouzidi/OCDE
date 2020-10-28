CREATE TABLE [dwh].[FreePreviewDaily_Rejected]
(
	[Download_Date] [date] NULL,
	[iLibraryURLAlias] [nvarchar](1054) NULL,
	[Embed] [bit] NULL,
	[Downloads] [int] NULL,
	[File_Date] [date] NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE(),
	[Reject_Date] [datetime] NOT NULL
) 
GO

ALTER TABLE [dwh].[FreePreviewDaily_Rejected] ADD  DEFAULT (getutcdate()) FOR [Reject_Date]
GO
