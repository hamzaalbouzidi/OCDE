CREATE TABLE [stg].[STG_ILibraryLog](
	[EventLogID] [int] NULL,
	[IdentityID] [nvarchar](30) NULL,
	[Download_Date] [datetime] NULL,
	[Session] [nvarchar](255) NULL,
	[IPAddress] [nvarchar](100) NULL,
	[UserAgent] [nvarchar](max) NULL,
	[DOI] [nvarchar](max) NULL,
	[ILibraryItemType] [nvarchar](max) NULL,
	[MimeType] [nvarchar](100) NULL,
	[LicenceType] [nvarchar](100) NULL,
	[Source] [nvarchar](max) NULL
)