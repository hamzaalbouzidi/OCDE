CREATE TABLE [dbo].[DIM_Language]
(
	[Language_ID] INT NOT NULL, 
    [Language_ExternalID] NVARCHAR(100) NOT NULL, 
    [ExternalSource] NCHAR(10) NOT NULL, 
    [Language_Lib_EN] NVARCHAR(150) NOT NULL, 
    [Language_Lib_FR] NVARCHAR(150) NOT NULL, 
    [ISOCode] NVARCHAR(4) NULL, 
    [ISOCode3] NVARCHAR(3) NULL, 
    [LastUpdate_Date] DATETIME NOT NULL 
)
