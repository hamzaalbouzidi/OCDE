CREATE VIEW [stg].[view_ILibraryLog_SA_TMP]

AS
	SELECT 
		  [EventLogID]
		  ,[IdentityID]
		  ,[Download_Date]
		  ,[Session]
		  ,[IPAddress]
		  ,[UserAgent]
		  ,CASE WHEN charindex('pub_series-database-',[DOI])>0 THEN Replace([DOI],'pub_series-database-','pub_series/database/') ELSE
				CASE WHEN charindex('pub_series-dataset-',[DOI])>0 THEN Replace([DOI],'pub_series-dataset-','pub_series/dataset/') ELSE
					CASE WHEN charindex('pub_series-',[DOI])>0 THEN Replace([DOI],'pub_series-','pub_series/') ELSE
						CASE WHEN charindex('hlthxp-',[DOI])>0 THEN Replace([DOI],'/','-') ELSE 
						CASE WHEN charindex('pub-',[DOI])>0 THEN Replace([DOI],'pub-','pub/')  ELSE [DOI] END END
					END
				END
			END AS DOI
		  ,[ILibraryItemType] 
		  ,[LicenceType]
		  ,[Source],
		  CASE  
		  WHEN [MimeType]='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' THEN 'application/vnd.ms-excel'  
		  WHEN [MimeType]='datasource' THEN 'oecddotstat'
		  ELSE [MimeType] END as [MimeType]
		  FROM
	(SELECT
	EVENTLOGID as EventLogID,
	IDENTITYID as IdentityID,
	[EVENT_TIME] as Download_Date,
	substring(SESSIONID,1,100) as Session,
	substring(IPADDRESS,1,100) as IPAddress,
	substring(USERAGENT,1,900) as UserAgent,
	parsename(ITEMID,1)  AS DOI,
	parsename(ITEMID,2) AS ILibraryItemType,
	MIME_TYPE as [MimeType],
	LICENCE_TYPE as [LicenceType],
	substring([Source],1,900) as [Source]

		FROM
			(
		SELECT
		CONVERT(int,REPLACE(EVENTLOGID,'"','')) as EVENTLOGID,
		IDENTITYID,
		CONVERT(datetime,SUBSTRING(REPLACE(REPLACE([EVENT_TIME],'-',' '),'.',':'),0,23) + SUBSTRING(REPLACE(REPLACE([EVENT_TIME],'-',' '),'.',':'),27,2))    as [EVENT_TIME],
		ISNULL(SESSIONID,'') as  SESSIONID,
		IPADDRESS,
		REPLACE(LEFT(ISNULL(USERAGENT,''),100),'"','') as USERAGENT,
		replace(replace(ITEMID,'/','.'),'%2F','.') AS ITEMID,
		MIME_TYPE,
		LICENCE_TYPE,
		SOURCE FROM [stg].[STG_iLibraryLog_TMP]) TMP) TMP2



