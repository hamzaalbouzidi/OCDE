CREATE PROCEDURE [dwh].[SP_Init]

AS
--Country_DM
Declare @CCMZone_ID1 int, @CCMZone_ID2 int, @CCMZone_ID3 int
select @CCMZone_ID1 = CCMZone_ID from [dwh].[CCMZone_DM] where [CCMZone] = 'IL'
select @CCMZone_ID2 = CCMZone_ID from [dwh].[CCMZone_DM] where [CCMZone] = 'JK'
select @CCMZone_ID3 = CCMZone_ID from [dwh].[CCMZone_DM] where [CCMZone] = 'MG'

INSERT INTO [dwh].[Country_DM]
           ([Country_ExternalID]
           ,[ExternalSource]
           ,[Country_Code]
           ,[Country_ISO2Code]
           ,[Country_Lib_EN]
           ,[Country_Lib_FR]
           ,[CCMZone_ID]
           ,[LastUpdate_Date]
           ,[HideInReport]
           ,[NA_Import]
           ,[IsCurrent]
           ,[ValidFrom]
           ,[ValidTo])
     VALUES		   
('NA','FI','ALA',NULL,'ALA','ALA',@CCMZone_ID3,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','ATA',NULL,'ATA','ATA',@CCMZone_ID2,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','GLP',NULL,'GLP','GLP',@CCMZone_ID1,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','MTQ',NULL,'MTQ','MTQ',@CCMZone_ID1,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','REU',NULL,'REU','REU',@CCMZone_ID3,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','Unknown',NULL,'Unknown','Unknown',NULL,GETDATE(),0,1,0,GETDATE(),GETDATE())
/*,
('NA','FI','CCK',NULL,'CCK','CCK',NULL,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','CUW',NULL,'CUW','CUW',NULL,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','CXR',NULL,'CXR','CXR',NULL,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','ATF',NULL,'ATF','ATF',NULL,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','HMD',NULL,'HMD','HMD',NULL,GETDATE(),0,1,0,GETDATE(),GETDATE()),
('NA','FI','BVT',NULL,'BVT','BVT',NULL,GETDATE(),0,1,0,GETDATE(),GETDATE())*/

--city
INSERT INTO [dwh].[City_DM]
           ([ExternalCity_ID]
           ,[ExternalSource]
           ,[City]
           ,[LastUpdate_Date]
           ,[HideInReport]
           ,[NA_Import]
           ,[IsCurrent]
           ,[ValidFrom]
           ,[ValidTo]
           ,[Proxy_ID])
     VALUES
           ('NA'
           ,'FI'
           ,'Unknown'
           ,GETDATE()
           ,0
           ,0
           ,1
           ,GETDATE()
           ,NULL
           ,NULL)

-- Format_Dm
INSERT INTO [dwh].[Format_DM]
           ([Format_ExternalID]
           ,[ExternalSource]
           ,[MimeType]
           ,[Format_Lib_EN]
           ,[Format_Lib_FR]
           ,[LastUpdate_Date]
           ,[HideInReport]
           ,[NA_Import]
           ,[IsCurrent]
           ,[ValidFrom]
           ,[ValidTo])
     VALUES
('W','KV3','oecddataportal','Online','En ligne',getdate(),0,0,1,getdate(),NULL),
('Browseit','BI','BrowseIt','BrowseIt','BrowseIt',getdate(),0,0,1,getdate(),NULL),
('Counter','CT','Counter','Counter','Counter',getdate(),0,0,1,getdate(),NULL),
('FreePreview','FP','freepreview','FreePreview','FreePreview',getdate(),0,0,1,getdate(),NULL),
('GoogleBooks','GB','application/pdf','GoogleBooks','GoogleBooks',getdate(),0,0,1,getdate(),NULL),
('StatLink','SL','application/vnd.ms-excel','StatLink','StatLink',getdate(),0,0,1,getdate(),NULL)

--registratio_dm
/*
Declare @locationId int, @registrationTypeId int, @cityId int, @countryId int
select @cityId = City_ID from [dwh].[City_DM] where [City] = 'Unknown'
select @countryId = Country_ID from [dwh].[Country_DM] where [Country_Code] = 'Unknown'
select @locationId = Location_ID from [dwh].[Location_DM] where [City_ID] = @cityId and [Country_ID] = @countryId
select @registrationTypeId = RegistrationType_ID from [dwh].[RegistrationType_DM] where [RegistrationType] = 'Unknown'

INSERT INTO [dwh].[Registration_DM]
           ([identityID]
           ,[Location_ID]
           ,[Name]
           ,[CustomerType_ID]
           ,[Admin]
           ,[RegistrationType_ID]
           ,[isActive]
           ,[isParentConsortium]
           ,[isChildConsortium]
           ,[isMaster]
           ,[isSubordinate]
           ,[ParentMaster_identityID]
           ,[ParentMaster_ID]
           ,[DoNotCountDL]
           ,[LastUpdate_Date]
           ,[HideInReport]
           ,[NA_Import]
           ,[IsCurrent]
           ,[ValidFrom]
           ,[Proxy_ID]
           ,[MainParent_ID]
           ,[RegistrationTypeNo])
     VALUES
           ('guest'
           ,@locationId
           ,'Guest'
           ,3
           ,'n'
           ,@registrationTypeId
           ,0
           ,0
           ,0
           ,0
           ,0
           ,NULL
           ,NULL
           ,0
           ,GETDATE()
           ,0
           ,0
           ,1
           ,GETDATE()
           ,NULL
           ,1
           ,NULL)
Declare @registrationId int
select @registrationId = Registration_ID from [dwh].[Registration_DM] where [identityID] = 'guest'
update [dwh].[Registration_DM] set [MainParent_ID] = @registrationId where Registration_ID = @registrationId
*/


--[ObjectType_DM]
	--set identity_insert  dwh.[ObjectType_DM] on
 
 insert into dwh.[ObjectType_DM](
      [ObjectType_ExternalID]
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
VALUES (	0,	'SL'   ,     	'Statlink',	'Statlink',	'',	0,	0,	GETDATE(),	0,	0,	1,	GETDATE(),	NULL)
 --set identity_insert  dwh.[ObjectType_DM] off

 --[SourceLight_DM]
	INSERT INTO dwh.[SourceLight_DM] ( [SourceLight_ID]      ,[SourceLight_Lib]     ,[SourceLight_URL] ,[LastUpdate_Date] ,[HideInReport],[NA_Import],[IsCurrent],[ValidFrom] ,[ValidTo] ,[Proxy_ID])
	VALUES
	(1,'Unidentified','undefined','2014-12-19 08:50:01.720',0,0,1,'2014-12-19',NULL,NULL),
	(2,'OECD.org','www.oecd.org','2014-12-19 08:50:01.720',0,0,1,'2014-12-19',NULL,NULL),
	(3,'iLibrary','www.oecd-ilibrary.org','2014-12-19 08:50:01.720',0,0,1,'2014-12-19',NULL,NULL),
	(4,'Google','www.google','2014-12-19 08:50:01.720',0,0,1,'2014-12-19',NULL,NULL)

--
RETURN 0


