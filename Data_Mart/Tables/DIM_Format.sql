CREATE TABLE [dbo].[DIM_Format]
(
	[Format_ID] INT NOT NULL, 
    [Format_ExternalID] NVARCHAR(100) NOT NULL, 
    [ExternalSource] NCHAR(10) NOT NULL, 
    [MimeType] NVARCHAR(50) NULL, 
    [Format_Lib_EN] NVARCHAR(150) NOT NULL, 
    [Format_Lib_FR] NVARCHAR(150) NOT NULL, 
    [LastUpdate_Date] DATETIME NOT NULL 
)
