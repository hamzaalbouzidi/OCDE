CREATE EXTERNAL TABLE [stg].[Expression_DM] 
(  
	[Expression_ID] [int]  NOT NULL,
	[Expression_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[DOI] [nvarchar](100) NULL,
	[ISSN] [nvarchar](20) NULL,
	[EISSN] [nvarchar](20) NULL,
	[Title] [nvarchar](2000) NOT NULL,
	[SubTitle] [nvarchar](2000) NULL,
	[Language_ID] [int] NOT NULL ,
	[Directorate_ID] [int] NOT NULL,
	[Theme_ID] [int] NOT NULL,
	[Igo_ID] [int] NOT NULL,
	[ObjectType_ID] [int] NOT NULL,
	[FirstRelease_Date] [datetime] NULL,
	[iLibraryURLAlias] [nvarchar](1054) NULL,
	[DefaultParent_ID] [int] NULL,
	[MainParent_ID] [int] NULL,
	[TopParent_ID] [int] NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Parent_ExternalID] [nvarchar](100) NULL,
	[Expression_ExternalSource] [nchar](10) NULL,
	[FirstExportDate] [datetime] NULL,
	[LatestExportDate] [datetime] NULL,
	[LatestDeletionDate] [datetime] NULL,
	[Top2Parent_ID] [int] NULL,
	[Top3Parent_ID] [int] NULL,
	[iLibraryAccessMode] [tinyint] NULL,
	[HasEpub] [bit] NULL,
	[HasEBook] [bit] NULL,
	[HasRead] [bit] NULL,
	[HasHTML] [bit] NULL,
	[HasExcel] [bit] NULL
)
WITH 
( 
	DATA_SOURCE = ExternalDataSource --Previously created DATA SOURCE
);
