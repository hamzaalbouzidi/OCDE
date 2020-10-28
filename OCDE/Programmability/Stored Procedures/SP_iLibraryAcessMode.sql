CREATE PROCEDURE [dwh].[SP_iLibraryAcessMode]

AS
	
	TRUNCATE TABLE dwh.iLibraryAccessMode_DM

	INSERT INTO [iLibraryAccessMode_DM] ( [iLibraryAccessMode_ID]      ,[EnglishDescription]      ,[FrenchDescription])
	VALUES
	(1,'Free','Gratuit'),
	(2,'Open access','Libre accès'),
	(3,'Under access control','Sous contrôle d’accès'),
	(4,'Restricted Free','Gratuit limité'),
	(5,'Temporarily Free','Temporairement Gratuit')
		
RETURN 0
