CREATE TABLE [dwh].[CCMZone_DM](
	[CCMZone_ID] [int] IDENTITY(1,1) NOT NULL,
	[CCMZone] [nvarchar](100) NOT NULL,
	[ManagerName] [nvarchar](100) NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL, 
    CONSTRAINT [PK_CCMZone_DM] PRIMARY KEY ([CCMZone_ID]))