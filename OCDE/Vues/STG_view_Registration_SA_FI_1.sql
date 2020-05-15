CREATE view [stg].[view_Registration_SA_FI_1]
AS

SELECT LEFT([customer name],500) as Name
      ,LEFT([registration ID],20) as [identity_ID]
      ,LEFT([customer type],10) as CustomerType
      ,LEFT([contact name],500) as ContactName
      ,[organisation] as [Organisation] 
      ,[city] as City
      ,[country] as Country
      ,ISNULL([CU number],'') as [CU-Number]
      ,ISNULL([autoRegistration],'') as [autoRegistration]
      ,[UserName/IPaddr] as [Username-IP]
      ,[Password] 
      ,[admin] as [Admin]
      ,ISNULL([parent],'') as ParentIDs
      ,ISNULL([subordinate(s)],'') as SubordinateIDs
FROM [stg].[STG_Registration_FI]
