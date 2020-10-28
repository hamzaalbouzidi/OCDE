CREATE VIEW [stg].[view_ILibraryLog_SA]

AS
	

SELECT 

		[Download_Date]
      ,[Manifestation_ID]
      ,[Registration_ID]
      ,[IPAddress_ID]
      ,[DOI]
      ,[Source_ID]
      ,[SourceLight_ID]
      ,[UserAgent_ID]
      ,[Session_ID]
      ,[EventLogID]

		  FROM 
	
		  (SELECT SA2.*, M.Manifestation_ID, RANK() OVER (PARTITION BY SA2.[EventLogID] ORDER BY Manifestation_ID DESC) as Rank FROM
		  (SELECT SA.*,E.Expression_ID,F.Format_ID FROM
		  (SELECT *
		  from [stg].[STG_ILibraryLog]) SA
		   LEFT OUTER JOIN [dwh].Expression_DM E on SA.DOI= E.DOI
		   LEFT OUTER JOIN [dwh].FORMAT_DM F on SA.MimeType=F.MimeType where E.DOI is not null and E.DOI<>'') SA2
		   LEFT OUTER JOIN [dwh].Manifestation_DM M ON SA2.Format_ID=M.Format_ID and SA2.Expression_ID=M.Expression_ID where M.IsCurrent=1) SA3

	LEFT OUTER JOIN [dwh].Registration_DM
		ON Registration_DM.identityID = SA3.IdentityID and Registration_DM.IsCurrent=1
	LEFT OUTER JOIN [dwh].IPAddress_DM
		ON IPAddress_DM.IPAddress = SA3.IPAddress  and IPAddress_DM.IsCurrent=1
	LEFT OUTER JOIN [dwh].Source_DM
		ON Source_DM.[Source] = SA3.[Source]  and Source_DM.IsCurrent=1
	LEFT OUTER JOIN [dwh].UserAgent_DM
		ON UserAgent_DM.UserAgent = SA3.UserAgent  and UserAgent_DM.IsCurrent=1
	LEFT OUTER JOIN [dwh].Session_DM
		ON Session_DM.[Session] = SA3.[Session]  and Session_DM.IsCurrent=1
		   
	where SA3.Rank=1