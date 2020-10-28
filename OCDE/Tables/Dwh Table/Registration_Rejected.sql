CREATE TABLE [dwh].[Registration_Rejected]
(
	[Job_ID] [int] NULL,
	[Reason] [nvarchar](max) NULL,
	[identityID] [nvarchar](20) NULL,
	[Name] [nvarchar](500) NULL,
	[ParentIDs] [nvarchar](max) NULL,
	[SubordinateIDs] [nvarchar](max) NULL,
	[CustomerType] [nvarchar](10) NULL,
	[City] [nvarchar](500) NULL,
	[Country] [nvarchar](50) NULL,
	[CU_Number] [nvarchar](50) NULL,
	[Admin] [nvarchar](2) NULL,
	[RegistrationType] [nvarchar](100) NULL,
	[isActive] [bit] NOT NULL,
	[isParentConsortium] [bit] NOT NULL,
	[isChildConsortium] [bit] NOT NULL,
	[isMaster] [bit] NOT NULL,
	[isSubordinate] [bit] NOT NULL,
	[ParentMaster_ID] [nvarchar](20) NULL,
	[DoNotCountDL] [bit] NOT NULL,
	[Reject_Date] [datetime] NOT NULL
) 
GO

ALTER TABLE [dwh].[Registration_Rejected] ADD  DEFAULT (getutcdate()) FOR [Reject_Date]
GO
