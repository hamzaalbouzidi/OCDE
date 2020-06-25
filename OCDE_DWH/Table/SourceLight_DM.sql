CREATE TABLE [dwh].[SourceLight_DM]
(
	[SourceLight_ID] [int] NOT NULL,
	CONSTRAINT [PK_SourceLight_DM] PRIMARY KEY ([SourceLight_ID]),
	[SourceLight_Lib] [nvarchar](150) NOT NULL,
	[SourceLight_URL] [nvarchar](150) NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL
    
)

