CREATE TABLE [dbo].[DIM_Directorate]
(
	[Directorate_ID] INT NOT NULL, 
    [ID] INT NOT NULL, 
    [Directorate_ExternalID] NVARCHAR(100) NOT NULL, 
    [ExternalSource] NCHAR(10) NOT NULL, 
    [Directorate_Code] NVARCHAR(4) NOT NULL, 
    [Directorate_Lib_EN] NVARCHAR(150) NOT NULL, 
    [Directorate_Lib_FR] NVARCHAR(150) NOT NULL 
)
