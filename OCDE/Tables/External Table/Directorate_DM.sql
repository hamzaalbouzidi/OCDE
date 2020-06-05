CREATE EXTERNAL TABLE [stg].[Directorate_DM] 
(  
	[Directorate_ID] [int]  NOT NULL ,
	[Directorate_ExternalID] [nvarchar](100) NOT NULL,
	[ExternalSource] [nchar](10) NOT NULL,
	[Directorate_Code] [nvarchar](4) NOT NULL,
	[Directorate_Lib_EN] [nvarchar](150) NOT NULL,
	[Directorate_Lib_FR] [nvarchar](150) NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL
)
WITH  
(  
	DATA_SOURCE = ExternalDataSource, --Previously created DATA SOURCE
	SCHEMA_NAME = N'dwh', 
	OBJECT_NAME = N'Directorate_DM'
) 
