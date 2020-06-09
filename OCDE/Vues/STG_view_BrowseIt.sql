CREATE VIEW [stg].[view_BrowseIt]
AS
select NULL as DOI, NULL as Filename, NULL as ProductId, NULL as DI
FROM stg.STG_BrowseItMonthly_SA
WHERE 1 = 2
