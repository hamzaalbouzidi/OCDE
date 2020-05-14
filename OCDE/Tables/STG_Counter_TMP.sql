CREATE TABLE [stg].[STG_Counter_TMP](
	[Month] [nvarchar](255) NULL,
	[itemID] [nvarchar](255) NULL,
	[identityId] [nvarchar](255) NULL,
	[DownloadTotal] [float] NULL,
	[ItemType] [nvarchar](255) NULL,
	[ParentItemid] [nvarchar](255) NULL,
	[ItemTitle] [nvarchar](1000) NULL,
	[ISSN] [nvarchar](30) NULL,
	[EISSN] [nvarchar](30) NULL,
	[ISBN] [nvarchar](30) NULL,
	[EISBN] [nvarchar](30) NULL,
	[IdentityType] [nvarchar](10) NULL,
	[IdentityName] [nvarchar](500) NULL,
	[IdentityCountry] [nvarchar](4) NULL,
	[File_Date] [date] NOT NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE()
)