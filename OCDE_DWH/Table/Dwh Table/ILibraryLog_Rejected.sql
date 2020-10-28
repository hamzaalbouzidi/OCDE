﻿CREATE TABLE [dwh].[ILibraryLog_Rejected]
(
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
	[DOI] [nvarchar](60) NULL,
	[Manifestation_ID] [int] NULL,
	[Registration_ID] [int] NULL,
	[File_Date] [date] NOT NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE(),
	[Reject_Date] [datetime] NOT NULL
) 
GO

ALTER TABLE [dwh].[ILibraryLog_Rejected] ADD  DEFAULT (getutcdate()) FOR [Reject_Date]
GO
