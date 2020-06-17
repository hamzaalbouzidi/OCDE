CREATE TABLE [dwh].[UserAgent_DM](
	[UserAgent_ID] [int] IDENTITY(1,1) NOT NULL primary key,
	[UserAgent] [nvarchar](900) NOT NULL,
	[PotentialBot] [bit] NOT NULL,
	[PotentialCrawler] [bit] NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL
)

GO

CREATE NONCLUSTERED INDEX [IX_UserAgent_DM_UserAgent] ON [dwh].[UserAgent_DM] ([UserAgent])
