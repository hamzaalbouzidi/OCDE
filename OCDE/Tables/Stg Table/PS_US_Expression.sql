CREATE TABLE [stg].[PS_US_Expression]
(
DOI [Varchar](255) NULL
    ,ProductId [Varchar](30) NULL
    ,Identifier [Varchar](100) NULL
    ,ExpressionIdentifier [Varchar](100) NULL
    ,ISSN [nVarchar](10) NULL
    ,Title [Varchar](2000) NULL
    ,Subtitle [Varchar](2000) NULL
    ,ItemType [Varchar](255) NULL
    ,Language [Varchar](3) NOT NULL
    ,Theme [Varchar](500) NOT NULL
    ,Directorate [Varchar](4) NOT NULL
    ,IgoId [INT] NULL
    ,ObjectTypeId [INT] NULL
    ,FirstReleaseDate [DATETIME] NULL
    ,FirstExportDate [DATETIME] NULL
    ,LatestDeletionDate [DATETIME] NULL
    ,LatestExportDate [DATETIME] NULL
    ,iLibraryURLAlias [Varchar](2000) NULL
    ,iLibraryAccessTypeId [INT] NOT NULL
)


GO

CREATE CLUSTERED INDEX [IX_PS_US_Expression_DOI] ON [stg].[PS_US_Expression] ([DOI])
