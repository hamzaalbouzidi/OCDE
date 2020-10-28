CREATE VIEW [stg].[view_ObjectType_DM_SA] as

SELECT  cast([ObjectTypeId] as nvarchar(100))  collate Latin1_General_CI_AS  as   [ObjectType_ExternalID]
      ,cast([ExternalSource] as nchar(10))  collate Latin1_General_CI_AS  as [ExternalSource]
      ,cast([EnglishDescription] as nvarchar(50))  collate Latin1_General_CI_AS  as [ObjectType_Lib_EN]
      ,cast([FrenchDescription] as nvarchar(50))  collate Latin1_General_CI_AS  as [ObjectType_Lib_FR]
      ,cast([ProductType] as nvarchar(3))  collate Latin1_General_CI_AS  as [ProductType]
  FROM 
  (  		
		SELECT  [ObjectTypeId] 
			,'KV3' as [ExternalSource]
			,'' as [ProductType]
			,[EnglishDesc] as [EnglishDescription]
			,[FrenchDesc] as [FrenchDescription]
		FROM [stg].[KV3_ObjectType]

	) AS SourceObjectType