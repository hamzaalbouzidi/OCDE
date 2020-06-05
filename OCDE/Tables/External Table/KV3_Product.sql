CREATE EXTERNAL TABLE [stg].[KV3_Product] 
(  
	[ProductId] [varchar](30) NOT NULL,
	[UserCode] [varchar](255) NULL,
	[Medium] [varchar](10) NOT NULL,
	[ProductDate] [date] NULL,
	[EmbargoDate] [datetime] NULL,
	[Availability] [int] NULL,
	[DOI] [varchar](255) NULL,
	[iLibraryURLAlias] [varchar](1003) NULL,
	[ObjectTypeId] [int] NULL,
	[ProductType] [varchar](3) NOT NULL,
	[Title] [nvarchar](2000) NULL,
	[Subtitle] [nvarchar](2000) NULL,
	[Abstract] [nvarchar](max) NULL,
	[ShortAbstract] [nvarchar](max) NULL,
	[IgoId] [int] NULL,
	[Issn] [varchar](10) NULL,
	[iLibraryAccessTypeId] [int] NOT NULL,
	[Isbn10] [varchar](10) NULL,
	[Isbn13] [varchar](13) NULL,
	[Di] [varchar](30) NULL,
	[ProductCode] [varchar](25) NULL,
	[PageNumber] [smallint] NULL,
	[PageSize] [varchar](10) NULL,
	[ColorNumber] [int] NULL,
	[EditionYear] [smallint] NULL,
	[EditionNumber] [varchar](4) NULL,
	[OpenData] [bit] NULL,
	[OecdDotstatCode] [varchar](50) NULL,
	[OecdDotstatQueryId] [int] NULL,
	[TimeRange] [varchar](150) NULL,
	[Identifier] [varchar](100) NULL,
	[Volume] [smallint] NULL,
	[Issue] [smallint] NULL,
	[Supplement] [bit] NULL,
	[CoverGroupId] [varchar](30) NULL,
	[WorkId] [varchar](30) NULL,
	[ExpressionId] [varchar](30) NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource2, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dbo', 
	OBJECT_NAME = N'KV3_Product'
) 
