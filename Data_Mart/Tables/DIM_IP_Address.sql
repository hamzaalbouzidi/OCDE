CREATE TABLE [dbo].[DIM_IP_Address]
(
	[IPAddress_ID] INT NOT NULL, 
    [IPAddress] NVARCHAR(30) NULL, 
    [Country_Code] NVARCHAR(10) NULL, 
    [Country_ISO2Code] NVARCHAR(10) NULL, 
    [Country_Lib_EN] NVARCHAR(150) NULL, 
    [Country_Lib_FR] NVARCHAR(150) NULL 
)
