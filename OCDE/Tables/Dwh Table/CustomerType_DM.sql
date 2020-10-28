CREATE TABLE [dwh].[CustomerType_DM](
	[CustomerType_ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerType] [nvarchar](50) NOT NULL,
	[CustomerType_Lib_EN] [nvarchar](150) NULL,
	[CustomerType_Lib_FR] [nvarchar](150) NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL, 
    CONSTRAINT [PK_CustomerType_DM] PRIMARY KEY ([CustomerType_ID]))
