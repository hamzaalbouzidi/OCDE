CREATE TABLE [stg].STG_Language_DM_SA(
	Language_ExternalID [varchar](3) NOT NULL,
	[ExternalSource] [varchar](3) NOT NULL,
	Language_Lib_EN [varchar](255) NULL,
	Language_Lib_FR [varchar](255) NULL,
	[ISOCode] [varchar](3) NOT NULL,
	[ISOCode3] [varchar](4) NULL
	)