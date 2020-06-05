
create view [stg].[view_Update_County_DM]

as

select 
C2.[CCMZone_ID],C2.Country_ID
		FROM  [stg].[Country_DM] C1 INNER JOIN 
		(SELECT b.Country_ID,
				c.CCMZone_ID
		  FROM [stg].[STG_Metadata_TMP_CCM_Countries] a inner join [stg].[Country_DM]  b
		  on a.[ISO3]=b.[Country_Code] inner join [stg].[CCMZone_DM] c on a.[Initials]=c.[CCMZone] ) C2 on C1.Country_ID=C2.Country_ID
