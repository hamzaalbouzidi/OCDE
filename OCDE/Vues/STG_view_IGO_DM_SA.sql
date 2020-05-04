/*
USE [STG_UsageStat]
GO



CREATE view [stg].[view_IGO_DM_SA] as

 SELECT CAST([IGOId]as varchar(100))  collate Latin1_General_CI_AS as IGO_ExternalID
				,'KV3' collate Latin1_General_CI_AS as ExternalSource
				,[EnglishDescription] collate Latin1_General_CI_AS as IGO_Lib_EN
				,[FrenchDescription] collate Latin1_General_CI_AS as IGO_Lib_FR
				,[EnglishAcronym] collate Latin1_General_CI_AS as [IGO_Code_EN]
				,[FrenchAcronym] collate Latin1_General_CI_AS as [IGO_Code_FR]
				,[DOIPrefix] collate Latin1_General_CI_AS as [DOIPrefix]
			FROM [stg].[view_KV3_IGO]
GO



*/