CREATE TABLE [dwh].[IPAddress_DM](
	[IPAddress_ID] [int] IDENTITY(1,1) NOT NULL primary key,
	[IPAddress] [nvarchar](100) NOT NULL,
	[Location_ID] [int] NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL,
	[Country_ID] [int] NULL
)

GO

CREATE NONCLUSTERED INDEX [IX_IPAddress_DM_IPAddress] ON [dwh].[IPAddress_DM] ([IPAddress])

