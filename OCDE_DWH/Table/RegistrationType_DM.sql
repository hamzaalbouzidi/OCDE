CREATE TABLE [dwh].[RegistrationType_DM](
	[RegistrationType_ID] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationType] [nvarchar](200) NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL, 
    CONSTRAINT [PK_RegistrationType_DM] PRIMARY KEY ([RegistrationType_ID]))

