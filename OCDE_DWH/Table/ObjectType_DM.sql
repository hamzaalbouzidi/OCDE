CREATE TABLE [dwh].[ObjectType_DM](
	[ObjectType_ID] [int] IDENTITY(1,1) NOT NULL ,
	[ObjectType_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nvarchar](10) NOT NULL,
	[ObjectType_Lib_EN] [nvarchar](50) NOT NULL,
	[ObjectType_Lib_FR] [nvarchar](50) NULL,
	[ProductType] [nvarchar](3) NOT NULL,
	[LinkToParentMain] [bit] NOT NULL,
	[LinkToParentTop] [bit] NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL, 
    CONSTRAINT [PK_ObjectType_DM] PRIMARY KEY ([ObjectType_ID])
)
