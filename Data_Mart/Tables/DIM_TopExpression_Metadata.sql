CREATE TABLE [dbo].[DIM_TopExpression_Metadata]
(
	[Child_Expression_ID] INT NOT NULL, 
    [Expression_ID] INT NULL, 
    [DOI] NVARCHAR(100) NULL, 
    [iLibraryURLAlias] NVARCHAR(1054) NULL, 
    [FirstRelease_Date] DATETIME NULL, 
    [FullTitle] NVARCHAR(4000) NULL, 
    [FirstExportDate] DATETIME NULL, 
    [LatestDeletionDate] DATETIME NULL, 
    [LatestExportDate] DATETIME NULL, 
    [Directorate_ID] INT NULL, 
    [Language_ID] INT NULL, 
    [Theme_ID] INT NULL, 
    [Igo_ID] INT NULL, 
    [ObjectType_ID] INT NULL, 
    [ISSN] NVARCHAR(20) NULL, 
    [TopParent_ID] INT NULL, 
    [Top2Parent_ID] INT NULL, 
    [Top3Parent_ID] INT NULL 
)
