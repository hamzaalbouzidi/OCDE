create table [stg].[STG_Registration_DM_SA]
(
[identityID] [nvarchar](20) null,
[Name] [nvarchar](500) null,
[CustomerType_ID] [INT] null,
[Location_ID] [INT] null,
[CU_Number] [nvarchar](50) null,
[Admin] [nvarchar](2) null,
[RegistrationType_ID] [INT] null,
[RegistrationTypeNo] [INT] NOT null,
[isActive] [BIT] NOT null,
[isParentConsortium] [BIT] NOT null,
[isChildConsortium] [BIT] NOT null,
[isMaster] [BIT] NOT null,
[isSubordinate] [BIT] NOT null,
[ParentMaster_identityID] [nvarchar](20) null,
[DoNotCountDL] [BIT] NOT null
)