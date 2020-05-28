CREATE TABLE [dbo].[DIM_Registration]
(
	[Registration_ID] INT NOT NULL, 
    [InstitutionName] NVARCHAR(500) NOT NULL, 
    [IdentityID] NVARCHAR(20) NOT NULL, 
    [CustomerType] NVARCHAR(150) NULL, 
    [RegistrationType] NVARCHAR(200) NOT NULL, 
    [Country] NVARCHAR(150) NULL, 
    [ManagerName] NVARCHAR(100) NULL, 
    [CCM] NVARCHAR(100) NULL, 
    [ChildRegistration_ID] INT NULL, 
    [Parent_InstitutionName] NVARCHAR(500) NULL, 
    [Parent_IdentityID] NVARCHAR(20) NULL, 
    [Parent_CustomerType] NVARCHAR(150) NULL, 
    [Parent_RegistrationType] NVARCHAR(200) NULL, 
    [Parent_Country] NVARCHAR(150) NULL, 
    [UserType] VARCHAR(17) NOT NULL 
)
