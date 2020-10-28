CREATE view [stg].[view_Tableau_ParentUser]
--WITH SCHEMABINDING
as

SELECT
	 Child.Registration_ID as  ChildRegistration_ID
	,[view_Tableau_User].InstitutionName as Parent_InstitutionName
	,[view_Tableau_User].IdentityID as Parent_IdentityID
	,[view_Tableau_User].CustomerType as Parent_CustomerType
	,[view_Tableau_User].RegistrationType as Parent_RegistrationType
	,[view_Tableau_User].Country as Parent_Country 		
FROM dwh.Registration_DM Child
LEFT OUTER JOIN stg.[view_Tableau_User]
	ON [view_Tableau_User].Registration_ID = Child.MainParent_ID