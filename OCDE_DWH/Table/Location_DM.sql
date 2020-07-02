CREATE TABLE [dwh].[Location_DM](
	[Location_ID] [int] IDENTITY(1,1) NOT NULL ,
	CONSTRAINT [PK_Location_ID] PRIMARY KEY([Location_ID]),
	[City_ID] [int] NOT NULL,
	CONSTRAINT [FK_Location_City_ID] FOREIGN KEY ([City_ID])
    REFERENCES [dwh].[City_DM] ([City_ID]),
	[Country_ID] [int] NOT NULL,
	CONSTRAINT [FK_Location_Country_ID] FOREIGN KEY ([Country_ID])
    REFERENCES [dwh].[Country_DM] ([Country_ID]),
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL
)

