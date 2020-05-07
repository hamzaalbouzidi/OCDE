create table [stg].[STG_Language_DM_SA]
(
[Language_ExternalID] [varchar](3) not null,
[ExternalSource] [varchar](3) not null,
[Language_Lib_EN] [nvarchar](255) null,
[Language_Lib_FR] [nvarchar](255) null,
[ISOCode] [varchar](3) not null,
[ISOCode3] [nvarchar](3) null
)