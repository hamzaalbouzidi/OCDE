CREATE view [stg].[view_ExpressionParent_Update_DM_SA] as


	select 
		childDOI0 as doi, 
		case when exp1 is not null then exp1 else exp0 end   as expr
		, exp0 as Parent, exp1 as GParent	
	 from
	(
		select    
			level0.*,level1.* 	 
		FROM 
		(
			SELECT 
				ChildDOI0,ParentDOI0,Sys0,Expression_ID as Exp0,Expression_ID0 as Exp00 		
			FROM
				(	
				--KV3														
					SELECT  [ChildDOI]  collate Latin1_General_CI_AS as [ChildDOI0]
							,[ParentDOI] collate Latin1_General_CI_AS as [ParentDOI0]
							, 'KV3' as Sys0
					FROM stg.[view_US_ExpressionParent]  
				
					UNION 

				-- STATLINK
					SELECT DOI as [ChildDOI0],
							ParentDOI as [ParentDOI0] 
						,'SL' as Sys0
						FROM [stg].[view_ExpressionParent_StatLink]

				) SourceDOI

				INNER JOIN 
				(select * from (SELECT [Expression_ID]
						,[DOI] 
						,RANK() OVER (PARTITION BY  DOI ORDER BY expression_id desc   ) AS RankExp 
					FROM [stg].[Expression_DM]
					where doi is not null and doi <>'') d where d.RankExp=1
					) SourceExp 
					on SourceDOI.ParentDOI0=SourceExp.DOI				
				

				INNER JOIN 
				(
					select * from (SELECT [Expression_ID] as Expression_ID0
						,[DOI]  as DOI0
						,RANK() OVER (PARTITION BY  DOI ORDER BY expression_id desc   ) AS RankExp0
					FROM [stg].[Expression_DM]
					where doi is not null and doi <>'') d where d.RankExp0=1
				) SourceExp2 
					on SourceDOI.[ChildDOI0]=SourceExp2.DOI0
				
		) Level0  
		
		LEFT OUTER JOIN

		(--SELECT	DOI collate Latin1_General_CI_AS as [ChildDOI1],ParentDOI collate Latin1_General_CI_AS as ParentDOI1, 'KV2' as Sys1
				
			SELECT  
				ChildDOI1,ParentDOI1,Sys1,Expression_ID as Exp1,Expression_ID1 as Exp11 
			FROM
				(
				--KV3
						SELECT  [ChildDOI] collate Latin1_General_CI_AS as  [ChildDOI1]
								,[ParentDOI]  collate Latin1_General_CI_AS as [ParentDOI1]
								, 'KV3' as Sys1
						FROM [stg].[view_US_ExpressionParent]  

						UNION
				-- STATLINK
					SELECT DOI as [ChildDOI1],
							ParentDOI as [ParentDOI1] 
						,'SL' as Sys1
						FROM [stg].[view_ExpressionParent_StatLink]
				) SourceDOI

				INNER JOIN 
				(
					select * from (SELECT [Expression_ID]
						,[DOI] 
						,RANK() OVER (PARTITION BY  DOI ORDER BY expression_id desc   ) AS RankExp 
					FROM [stg].[Expression_DM]
					where doi is not null and doi <>'') d where d.RankExp=1
				) SourceExp 
				on SourceDOI.ParentDOI1=SourceExp.DOI

				INNER JOIN 
				(
					select * from (SELECT [Expression_ID] as Expression_ID1
						,[DOI]  as DOI1
						,RANK() OVER (PARTITION BY  DOI ORDER BY expression_id desc   ) AS RankExp1
					FROM [stg].[Expression_DM]
					where doi is not null and doi <>'') d where d.RankExp1=1
				) SourceExp2 
				on  SourceDOI.ParentDOI1=SourceExp2.DOI1
		) Level1  
			on Level0.ParentDOI0=Level1.ChildDOI1 

	) Levels
