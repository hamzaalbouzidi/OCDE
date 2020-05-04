CREATE TABLE [dwh].[ILibraryLog_TMP2](
	[EventLogID] [int] NULL,
	[IdentityID] [nvarchar](30) NULL,
	[Download_Date] [datetime] NULL,
	[Session] [nvarchar](255) NULL,
	[IPAddress] [nvarchar](100) NULL,
	[UserAgent] [nvarchar](100) NULL,
	[DOI] [nvarchar](60) NULL,
	[ILibraryItemType] [nvarchar](60) NULL,
	[MimeType] [nvarchar](100) NULL,
	[LicenceType] [nvarchar](50) NULL,
	[Source] [nvarchar](900) NULL
)