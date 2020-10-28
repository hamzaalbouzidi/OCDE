create view [stg].[view_Metadata_IPCountry]

as

SELECT c.IPAddress_ID,d.Country_ID from 

		(SELECT a.*,b.* from 

		(SELECT  [IPAddress_ID]
			  , [IPAddress]
			  ,(CONVERT(bigint, PARSENAME([IPAddress],1)) +

		CONVERT(bigint, PARSENAME([IPAddress],2)) * 256 +

		CONVERT(bigint, PARSENAME([IPAddress],3)) * 65536 +

		CONVERT(bigint, PARSENAME([IPAddress],4)) * 16777216) as IPNumber


		  FROM [dwh].[IPAddress_DM] where ISNUMERIC(PARSENAME([IPAddress],1))=1 and ISNUMERIC(PARSENAME([IPAddress],2))=1 and ISNUMERIC(PARSENAME([IPAddress],3))=1 and ISNUMERIC(PARSENAME([IPAddress],4))=1  ) a  CROSS JOIN [stg].[STG_Metadata_TMP_IP_Country_Range] b
		  WHERE  
  
		  IPNumber<=[HBoundDec] AND IPNumber>=[LBoundDec]) c INNER JOIN [dwh].[Country_DM] d on c.CountryISO2=d.Country_ISO2Code
