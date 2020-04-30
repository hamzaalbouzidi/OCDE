/* CREATE view [dbo].[view_Directorate_DM_SA]
AS

SELECT [Directorate_ExternalID] collate Latin1_General_CI_AS  as [Directorate_ExternalID]
      ,[ExternalSource] collate Latin1_General_CI_AS as [ExternalSource]
      ,[Directorate_Code] collate Latin1_General_CI_AS as [Directorate_Code]
      ,[Directorate_Lib_EN] collate Latin1_General_CI_AS as [Directorate_Lib_EN]
      ,[Directorate_Lib_FR] collate Latin1_General_CI_AS as  [Directorate_Lib_FR]
  FROM  


(
--KV3
SELECT [Directorate] AS Directorate_ExternalID
	  ,'KV3' AS ExternalSource	  
	  ,UPPER([Directorate]) AS Directorate_Code
      ,[EnglishDesc] as Directorate_Lib_EN
      ,[FrenchDesc] as Directorate_Lib_FR
  FROM [KappaV3_Daily].[dbo].[view_US_Directorate]) DirectorateSource
GO */