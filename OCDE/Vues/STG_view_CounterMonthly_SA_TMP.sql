CREATE view [stg].[view_CounterMonthly_SA_TMP] AS


select 
	TMP.DownloadDate,
			  CASE WHEN charindex('pub_series-database-',TMP.[DOI])>0 THEN Replace(TMP.[DOI],'pub_series-database-','pub_series/database/') ELSE
					CASE WHEN charindex('pub_series-dataset-',TMP.[DOI])>0 THEN Replace(TMP.[DOI],'pubs_series-dataset-','pub_series/dataset/') ELSE
						CASE WHEN charindex('pub_series-',TMP.[DOI])>0 THEN Replace(TMP.[DOI],'pub_series-','pub_series/') ELSE
							CASE WHEN charindex('hlthxp-',TMP.[DOI])>0 THEN Replace(TMP.[DOI],'/','-') ELSE 
							CASE WHEN charindex('pub-',TMP.[DOI])>0 THEN Replace(TMP.[DOI],'psub-','pub/')  ELSE TMP.[DOI] END END
						END
					END
				END as DOI,
	TMP.[IdentityID],
	TMP.[Downloads],
	R.Registration_ID,
	E.Expression_ID

	from
	(SELECT
		 DownloadDate,
		parsename(item,1) AS DOI,
		T.identityId as [IdentityID],
		SUM(T.DownloadTotal) as [Downloads]	
	FROM
	
			(SELECT	

			[File_Date] as DownloadDate,
			replace(replace(itemID,'/','.'),'%2F','.') AS item,
			[identityId],
			DownloadTotal,
			ItemType,
			replace(replace(ParentItemId,'/','.'),'%2F','.') AS parentItem,
			EISSN,
			EISBN

			FROM stg.STG_Counter_TMP

		
		
			) T
			GROUP BY 
			T.DownloadDate
			,parsename(T.item,1)
			,T.identityId
			)TMP
			LEFT OUTER JOIN 
			(SELECT DOI, Expression_ID FROM  (SELECT DOI, Expression_ID, RANK() OVER (PARTITION BY DOI ORDER BY Expression_ID DESC) as rank 
			from [dwh].Expression_DM where doi is not null and doi<>'')t where t.rank=1) E 
			ON TMP.DOI=E.DOI

		
			LEFT OUTER JOIN 
			(SELECT [identityID],[Registration_ID]  FROM  (SELECT [identityID], [Registration_ID], RANK() OVER (PARTITION BY [identityID] ORDER BY [Registration_ID] DESC) as rank 
			from [dwh].[Registration_DM] where [identityID] is not null and [identityID]<>'')t where t.rank=1) R
			ON TMP.IdentityID=R.identityID

