CREATE PROCEDURE  [dwh].[SP_ObjectTypeDM]
AS

 set identity_insert  dwh.[ObjectType_DM] on
 
 insert into dwh.[ObjectType_DM]( [ObjectType_ID]
      ,[ObjectType_ExternalID]
      ,[ExternalSource]
      ,[ObjectType_Lib_EN]
      ,[ObjectType_Lib_FR]
      ,[ProductType]
      ,[LinkToParentMain]
      ,[LinkToParentTop]
      ,[LastUpdate_Date]
      ,[HideInReport]
      ,[NA_Import]
      ,[IsCurrent]
      ,[ValidFrom]
      ,[ValidTo])
VALUES (119,	0,	'SL'   ,     	'Statlink',	'Statlink',	'',	0,	0,	GETDATE(),	0,	0,	1,	GETDATE(),	NULL)
 set identity_insert  dwh.[ObjectType_DM] off
