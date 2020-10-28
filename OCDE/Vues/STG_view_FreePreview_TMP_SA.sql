CREATE VIEW [stg].[view_FreePreview_TMP_SA] AS

SELECT  TMP.iLibraryURLAlias
		,E.Expression_ID
		,Downloads
		,Embed 
		,[File_Date] as Download_Date
FROM(
	SELECT
		LEFT(url,LEN(url)-CHARINDEX('?',REVERSE(url))) as iLibraryURLAlias,
		sum(hits) as Downloads,
		Embed,[File_Date]
	FROM
			(SELECT REPLACE(url,'#','?') as url,
		hits,
		Embed,[File_Date]
	FROM 
		(
			SELECT
				RIGHT(label,LEN(label)-11) as url,
				nb_hits as hits,
				0 as Embed,[File_Date]
				from
				stg.STG_FreePreview_TMP
				where label like 'oecd/media/%'
			UNION
				SELECT
				RIGHT(label,LEN(label)-36) as url,
				nb_hits as hits,
				1 as Embed,[File_Date]
				from
				stg.STG_FreePreview_TMP
				where label like 'Digital-Asset-Management/embed-oecd/%'
			UNION
				SELECT
				RIGHT(label,LEN(label)-30) as url,
				nb_hits as hits,
				0 as Embed,[File_Date]
				from
				stg.STG_FreePreview_TMP
				where label like'Digital-Asset-Management/oecd/%'
			UNION
				SELECT
				RIGHT(label,LEN(label)-31) as url,
				nb_hits as hits,
				0 as Embed,[File_Date]
				from
				stg.STG_FreePreview_TMP
				where label like'"Digital-Asset-Management/oecd/%'
			) TMP1)TMP2
	GROUP BY 
		LEFT(url,LEN(url)-CHARINDEX('?',REVERSE(url)))
		,Embed,[File_Date]) TMP

		LEFT OUTER JOIN 
		
		(SELECT Expression_ID,iLibraryURLAlias FROM (
		SELECT Expression_ID,iLibraryURLAlias, RANK() OVER (PARTITION BY iLibraryURLAlias ORDER BY Expression_ID DESC) as Rank  
		FROM [dwh].Expression_DM )T 
		where T.Rank=1 )E on TMP.iLibraryURLAlias=E.iLibraryURLAlias