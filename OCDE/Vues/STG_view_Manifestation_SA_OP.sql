CREATE VIEW [stg].[view_Manifestation_SA_OP] 
AS

SELECT   [ProductId] AS Manifestation_ExternalID
		,'KV3' AS ExternalSource
		,DOI AS Expression_ExternalID
		,[Medium] AS Format_ExternalID		
		,[FirstReleaseDate]
  FROM [stg].[STG_Manifestation_OP]
