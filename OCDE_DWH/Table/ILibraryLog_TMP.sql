CREATE TABLE [dwh].[ILibraryLog_TMP](
	[EVENTLOGID] [nvarchar](20) NULL,
	[IDENTITYID] [nvarchar](30) NULL,
	[EVENT_TIME] [nvarchar](30) NULL,
	[SESSIONID] [nvarchar](255) NULL,
	[IPADDRESS] [nvarchar](100) NULL,
	[USERAGENT] [nvarchar](max) NULL,
	[ITEMID] [nvarchar](255) NULL,
	[MIME_TYPE] [nvarchar](100) NULL,
	[LICENCE_TYPE] [nvarchar](50) NULL,
	[SOURCE] [nvarchar](max) NULL,
	[File_Date] [date] NOT NULL,
	[Import_Date] [datetime] NOT NULL
)