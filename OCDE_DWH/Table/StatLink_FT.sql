CREATE TABLE [dwh].[StatLink_FT]
(
	[Download_Date] [date] NOT NULL,
	[Download_Time] [time](7) NOT NULL,
	[Expression_ID] [int] NOT NULL,
	CONSTRAINT [FK_StatLink_Expression_ID] FOREIGN KEY ([Expression_ID])
    REFERENCES [dwh].[Expression_DM] ([Expression_ID]),
	[IPAddress_ID] [int] NULL,
	CONSTRAINT [FK_StatLink_IPAddress_ID] FOREIGN KEY ([IPAddress_ID])
    REFERENCES [dwh].[IPAddress_DM] ([IPAddress_ID]),
	[Source_ID] [int] NULL,
	CONSTRAINT [FK_StatLink_Source_ID] FOREIGN KEY ([Source_ID])
    REFERENCES [dwh].[Source_DM] ([Source_ID]),
	[UserAgent_ID] [int] NULL
	CONSTRAINT [FK_StatLink_UserAgent_ID] FOREIGN KEY ([UserAgent_ID])
    REFERENCES [dwh].[UserAgent_DM] ([UserAgent_ID])

)
