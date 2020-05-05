﻿CREATE TABLE [dwh].[Registration_DM](
	[Registration_ID] [int] IDENTITY(1,1) NOT NULL ,
	CONSTRAINT [PK_Registration_ID] PRIMARY KEY([Registration_ID]),
	[identityID] [nvarchar](20) NOT NULL,
	[Location_ID] [int] NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CustomerType_ID] [int] NOT NULL,
	[CU_Number] [nvarchar](50) NULL,
	[Admin] [nvarchar](2) NULL,
	[RegistrationType_ID] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isParentConsortium] [bit] NOT NULL,
	[isChildConsortium] [bit] NOT NULL,
	[isMaster] [bit] NOT NULL,
	[isSubordinate] [bit] NOT NULL,
	[ParentMaster_identityID] [nvarchar](20) NULL,
	[ParentMaster_ID] [int] NULL,
	[DoNotCountDL] [bit] NOT NULL,
	[LastUpdate_Date] [datetime] NOT NULL,
	[HideInReport] [bit] NOT NULL,
	[NA_Import] [bit] NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[Proxy_ID] [int] NULL,
	[MainParent_ID] [int] NULL,
	[RegistrationTypeNo] [int] NULL
	)