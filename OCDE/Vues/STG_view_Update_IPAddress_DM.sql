create view [stg].[view_Update_IPAddress_DM]

as

select t.Country_ID,t.IPAddress_ID

		from [dwh].[IPAddress_DM] IP INNER JOIN [stg].[STG_Metadata_TMP_IPCountry] t on ip.IPAddress_ID=t.IPAddress_ID
		where IP.[Country_ID] is null