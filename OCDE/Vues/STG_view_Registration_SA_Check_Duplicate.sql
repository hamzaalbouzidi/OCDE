CREATE view [stg].[view_Registration_SA_Check_Duplicate] as

SELECT
	[identityID]
	--,isActive
	--,DoNotCountDL
FROM
[stg].STG_Registration_SA
--WHERE isActive = 1 and DoNotCountDL = 0
GROUP BY
	[identityID]
	--,isActive
	--,DoNotCountDL	
HAVING COUNT([identityID])>1
