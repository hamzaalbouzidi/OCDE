CREATE view [stg].[view_Location_DM_SA] AS

SELECT
	City_DM.City_ID,
	Country_DM.Country_ID 
	
FROM
	[stg].STG_Registration_SA SA
LEFT OUTER JOIN [stg].Country_DM 
	ON Country_DM.Country_Code = SA.Country
	AND Country_DM.IsCurrent = 1
LEFT OUTER JOIN [stg].City_DM 
	ON City_DM.City = SA.City
	AND City_DM.IsCurrent = 1
LEFT OUTER JOIN [stg].Location_DM  
	ON Location_DM.City_ID = City_DM.City_ID
	AND Location_DM.Country_ID = Country_DM.Country_ID
	AND Location_DM.IsCurrent = 1
WHERE Location_DM.Location_ID IS NULL

GROUP BY 
	City_DM.City_ID,
	Country_DM.Country_ID
