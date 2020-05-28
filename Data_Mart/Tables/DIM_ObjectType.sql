CREATE TABLE [dbo].[DIM_ObjectType]
(
	[ObjectType_ID] INT NOT NULL, 
    [ObjectType_ExternalID] NVARCHAR(100) NOT NULL, 
    [ExternalSource] NCHAR(10) NOT NULL, 
    [ObjectType] NVARCHAR(50) NOT NULL, 
    [CatalogueType] VARCHAR(28) NOT NULL 
)
