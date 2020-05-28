CREATE TABLE [dbo].[DIM_Theme]
(
	[Theme_ID] INT NOT NULL, 
    [Theme_ExternalID] NVARCHAR(100) NOT NULL, 
    [ExternalSource] NCHAR(10) NOT NULL, 
    [Theme_Lib_EN] NVARCHAR(150) NOT NULL, 
    [Theme_Lib_FR] NVARCHAR(150) NULL, 
    [LastUpdate_Date] DATETIME NOT NULL 
)
