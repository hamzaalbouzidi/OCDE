CREATE EXTERNAL TABLE [stg].[Manifestation_DM] 
(  
	[Manifestation_ID] [int] NOT NULL ,
	[Manifestation_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[Expression_ID] [int] NOT NULL,
	[Format_ID] [int] NOT NULL,
	[ISBN13] [nvarchar](20) NULL,
	[FirstRelease_Date] [datetime] NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL 
)

WITH 
( 
	DATA_SOURCE = ExternalDataSource --Previously created DATA SOURCE
);
