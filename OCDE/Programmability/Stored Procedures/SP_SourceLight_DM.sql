CREATE PROCEDURE [dwh].[SP_SourceLight_DM]

AS
	

	INSERT INTO dwh.[SourceLight_DM] ( [SourceLight_ID]      ,[SourceLight_Lib]     ,[SourceLight_URL] ,[LastUpdate_Date] ,[HideInReport],[NA_Import],[IsCurrent],[ValidFrom] ,[ValidTo] ,[Proxy_ID])
	VALUES
	(1,'Unidentified','undefined','2014-12-19 08:50:01.720',0,0,1,'2014-12-19',NULL,NULL),
	(2,'OECD.org','www.oecd.org','2014-12-19 08:50:01.720',0,0,1,'2014-12-19',NULL,NULL),
	(3,'iLibrary','www.oecd-ilibrary.org','2014-12-19 08:50:01.720',0,0,1,'2014-12-19',NULL,NULL),
	(4,'Google','www.google','2014-12-19 08:50:01.720',0,0,1,'2014-12-19',NULL,NULL)
		
RETURN 0


