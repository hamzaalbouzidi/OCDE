CREATE VIEW [stg].[view_BrowseItMonthly_FT_SA]
AS
SELECT     Download_Date, Expression_ID, Downloads
FROM         stg.STG_BrowseItMonthly_SA
WHERE     (Expression_ID IS NOT NULL)