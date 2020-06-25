CREATE TABLE [dwh].[ILibraryLog_FT]
(
	[DownloadDate] [datetime] NOT NULL,
	[Manifestation_ID] [int] NOT NULL,
	CONSTRAINT [FK_ILibraryLog_Manifestation_ID] FOREIGN KEY ([Manifestation_ID])
    REFERENCES [dwh].[Manifestation_DM] ([Manifestation_ID]),
	[Registration_ID] [int] NOT NULL,
	CONSTRAINT [FK_ILibraryLog_Registration_ID] FOREIGN KEY ([Registration_ID])
    REFERENCES [dwh].[Registration_DM] ([Registration_ID]),
	[IPAddress_ID] [int] NULL,
	CONSTRAINT [FK_ILibraryLog_IPAddress_ID] FOREIGN KEY ([IPAddress_ID])
    REFERENCES [dwh].[IPAddress_DM] ([IPAddress_ID]),
	[Source_ID] [int] NULL,
	CONSTRAINT [FK_ILibraryLog_Source_ID] FOREIGN KEY ([Source_ID])
    REFERENCES [dwh].[Source_DM] ([Source_ID]),
	[SourceLight_ID] [int] NULL,
	CONSTRAINT [FK_ILibraryLog_SourceLight_ID] FOREIGN KEY ([SourceLight_ID])
    REFERENCES [dwh].[SourceLight_DM]([SourceLight_ID]),
    [UserAgent_ID] [int] NULL,
	CONSTRAINT [FK_ILibraryLog_UserAgent_ID] FOREIGN KEY ([UserAgent_ID])
    REFERENCES [dwh].[UserAgent_DM] ([UserAgent_ID]),
	[Session_ID] [int] NULL,
	CONSTRAINT [FK_ILibraryLog_Session_ID] FOREIGN KEY ([Session_ID])
    REFERENCES [dwh].[Session_DM] ([Session_ID]),
	[EventLogID] [int] NULL,
	[Exclude] [bit] NOT NULL,
	[Agg_Daily] [bit] NOT NULL,
	[Agg_Monthly] [bit] NOT NULL
)
