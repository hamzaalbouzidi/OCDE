CREATE TABLE [dwh].[Source_DM](
	[Source_ID] [int] IDENTITY(1,1) NOT NULL primary key,
	[SourceLight_ID] [int] NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL,
	[source] [varchar](900) NULL
)

GO

CREATE NONCLUSTERED INDEX [IX_Source_DM_source] ON [dwh].[Source_DM] ([source])
