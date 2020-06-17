CREATE TABLE [dwh].[Session_DM](
	[Session_ID] [int] IDENTITY(1,1) NOT NULL,
	CONSTRAINT [PK_Session_ID] PRIMARY KEY([Session_ID]),
	[Session] [nvarchar](100) NOT NULL,
	[Server] [nchar](3) NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL
	)
GO

CREATE NONCLUSTERED INDEX [IX_Session_DM_Session] ON [dwh].[Session_DM] ([Session])
