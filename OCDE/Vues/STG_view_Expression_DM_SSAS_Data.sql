 
 CREATE VIEW [stg].[view_Expression_DM_SSAS_Data]
AS
 CREATE VIEW [stg].[view_Expression_DM_SSAS_Data]
AS
select 
CurExpId,[Expression - ID], [Expression - DOI], [Expression - FullTitle], [Expression - iLibraryURLAlias],
[Expression - iLibraryAccessMode],[Expression - Directorate ID],[Expression - Language ID], [Expression - Theme ID],
[Expression - IGO ID], [Expression - Object Type ID] , [Expression - FirstRelease_Date],[Expression - FirstExportDate],
[Expression - LatestDeletionDate], [Expression - LatestExportDate],[Expression - HasEpub],[Expression - HasEBook],
[Expression - HasRead],[Expression - HasHTML],[Expression - HasExcel],O,OID1,[Expression - Object Type Level1],
[Expression - Object Type Level2],[Expression - Title Level1],[Expression - Title Level2],[Expression - DOI Level1],
[Expression - DOI Level2],[Expression - Theme Level1],[Expression - Theme Level2],[Expression - Directorate Code Level1],
[Expression - Directorate Code Level2],[Expression - Directorate Name Level1],[Expression - Directorate Name Level2]

From(

SELECT  
Expression.CurExpId,Expression.Expression_ID AS [Expression - ID], Expression.DOI AS [Expression - DOI], 
Expression.FullTitle AS [Expression - FullTitle], Expression.iLibraryURLAlias AS [Expression - iLibraryURLAlias],
Expression.iLibraryAccessMode AS [Expression - iLibraryAccessMode],Expression.Directorate_ID AS [Expression - Directorate ID],
Expression.Language_ID AS [Expression - Language ID], Expression.Theme_ID AS [Expression - Theme ID],
Expression.Igo_ID AS [Expression - IGO ID], Expression.ObjectType_ID AS [Expression - Object Type ID] ,                    
Expression.FirstRelease_Date AS [Expression - FirstRelease_Date],Expression.FirstExportDate AS [Expression - FirstExportDate],
Expression.LatestDeletionDate AS [Expression - LatestDeletionDate],Expression.LatestExportDate AS [Expression - LatestExportDate],
Expression.HasEpub AS [Expression - HasEpub], Expression.HasEBook AS [Expression - HasEBook],
Expression.HasRead AS [Expression - HasRead],Expression.HasHTML AS [Expression - HasHTML],
Expression.HasExcel AS [Expression - HasExcel],OBJ1.ObjectType_ExternalID as O,OBJ1.ObjectType_ExternalID as OID1,
CASE 
  WHEN 
         OBJ1.ObjectType_ExternalID IN 
('5','6', '1101', '1102','7','8', '1203','9', '1205','14','4', '1201','3','1204','1104',
'1106', '1107', 'WorkingPaper Serie', '1204', '1105','1001','17', '1002','16','1003','1004') 
OR charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
 THEN OBJ1.ObjectType_Lib_EN WHEN 
OBJ1.ObjectType_Lib_EN IS NULL AND OBJ2.ObjectType_ExternalID IS NOT NULL                                                                                                                                          
THEN OBJ2.ObjectType_Lib_EN WHEN 
OBJ1.ObjectType_Lib_EN IS NULL AND (OBJ0.ObjectType_ExternalID IN 
('5','6', '1101', '1102','7','8', '1203','9', '1205','14','4','1201','3', 
'1204','1104', '1106', '1107', 'WorkingPaper Serie', 
'1204','1105','1001','17', '1002','16', '1003','1004') 
OR charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)                                                                                     
THEN  OBJ0.ObjectType_Lib_EN WHEN OBJ1.ObjectType_ExternalID IN 
('212', '1306','1310' )
THEN OBJ1.ObjectType_Lib_EN 
ELSE OBJ0.ObjectType_Lib_EN 
END AS [Expression - Object Type Level1],
 CASE 
 WHEN TopExpression.FullTitle =Top2Expression.FullTitle AND TopExpression.FullTitle IS NOT NULL 
THEN  OBJ0.ObjectType_Lib_EN  ELSE
CASE 
WHEN Top2Expression.FullTitle IS NOT NULL 
THEN OBJ2.ObjectType_Lib_EN  ELSE OBJ0.ObjectType_Lib_EN  END
 END AS [Expression - Object Type Level2],
 CASE 
 WHEN OBJ1.ObjectType_ExternalID IN 
('5','6', '1101', '1102', '7', '8', '1203','9', '1205','14', 
'4', '1201','3','1204', '1104', '1106', '1107', 'WorkingPaper Serie', 
'1204', '1105','1001','17', '1002','16','1003','1004') 
OR charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
THEN TopExpression.FullTitle 
WHEN OBJ1.ObjectType_Lib_EN IS NULL AND (OBJ0.ObjectType_ExternalID IN 
( '5','6', '1101', '1102','7','8', '1203','9', '1205','14','4', '1201', 
'3', '1204', '1104', '1106', '1107', 'WorkingPaper Serie', '1204', 
'1105','1001','17', '1002','16', '1003','1004' ) 
OR charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)                                                         
THEN Expression.FullTitle ELSE      
CASE 
WHEN  TopExpression.FullTitle IS NOT NULL THEN TopExpression.FullTitle 
ELSE Expression.FullTitle END
END AS [Expression - Title Level1],
CASE 
WHEN TopExpression.DOI = Top2Expression.DOI AND TopExpression.DOI IS NOT NULL 
THEN Expression.FullTitle  ELSE
CASE 
WHEN Top2Expression.FullTitle IS NOT NULL 
THEN Top2Expression.FullTitle  ELSE Expression.FullTitle END
END AS [Expression - Title Level2],
CASE 
WHEN OBJ1.ObjectType_ExternalID IN 
('5','6','1101', '1102','7','8', '1203', '9', '1205', 
'14','4','1201','3','1204','1104', '1106', '1107', 'WorkingPaper Serie', 
 '1204','1105','1001', '17', '1002', '16', '1003', '1004') 
 OR charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
THEN TopExpression.DOI 
WHEN OBJ1.ObjectType_Lib_EN IS NULL AND (OBJ0.ObjectType_ExternalID IN 
('5','6', '1101', '1102','7','8', '1203','9', '1205', 
'14', '4','1201','3','1204','1104','1106','1107', 'WorkingPaper Serie', 
'1204','1105','1001','17', '1002','16', '1003','1004') 
OR charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)                                                                                     
THEN Expression.DOI ELSE
CASE 
WHEN TopExpression.DOI IS NOT NULL THEN TopExpression.DOI
ELSE Expression.DOI  END
END AS [Expression - DOI Level1],           
              CASE  WHEN  TopExpression.DOI = Top2Expression.DOI AND 
                                          TopExpression.DOI IS NOT NULL
                            THEN Expression.DOI 
                            ELSE     CASE WHEN  Top2Expression.DOI IS NOT NULL 
                                                         THEN Top2Expression.DOI 
                                                         ELSE Expression.DOI 
                                          END
              END AS [Expression - DOI Level2],
              CASE 
                            WHEN OBJ1.ObjectType_ExternalID IN 
                                          (
        '5',  '6', '1101', '1102', '7', '8', '1203',  '9', '1205', '14',  '4', '1201',  '3', '1204', '1104',
                            '1106', '1107', 'WorkingPaper Serie', '1204','1105',  '1001',  '17', '1002',  '16', '1003','1004' 
                                          ) 
                                          OR charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0                                                                                     
                            THEN TH1.Theme_Lib_EN
                            WHEN 
                                          OBJ1.ObjectType_Lib_EN IS NULL AND 
                                          (OBJ0.ObjectType_ExternalID IN 
                                                         (
         '5',  '6', '1101', '1102', '7',  '8', '1203', '9', '1205',  '14',  '4', '1201',  '3',  '1204', 
         '1104', '1106', '1107', 'WorkingPaper Serie',  '1204', '1105',  '1001', '17', '1002',  '16', '1003',   '1004' 
                                                         ) 
                                          OR charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)                            
                            THEN TH0.Theme_Lib_EN 
                            ELSE CASE   WHEN  TopExpression.FullTitle IS NOT NULL 
                                                         THEN TH1.Theme_Lib_EN 
                                                         ELSE TH0.Theme_Lib_EN
                                          END
              END AS [Expression - Theme Level1],
              CASE 
                            WHEN 
                                          TopExpression.FullTitle = Top2Expression.FullTitle AND 
                                          TopExpression.FullTitle IS NOT NULL 
                            THEN TH0.Theme_Lib_EN 
                            ELSE CASE  WHEN  Top2Expression.FullTitle IS NOT NULL 
                                                         THEN TH2.Theme_Lib_EN 
                                                         ELSE TH0.Theme_Lib_EN 
                                          END
              END AS [Expression - Theme Level2],
              CASE 
                            WHEN 
                                          OBJ1.ObjectType_ExternalID IN 
                                          (
       '5', '6', '1101', '1102', '7',  '8', '1203',  '9', '1205',  '14',  '4', '1201',  '3',  '1204',
       '1104', '1106', '1107', 'WorkingPaper Serie',  '1204', '1105', '1001',  '17', '1002',  '16', '1003', '1004' 
                                          ) 
                                          OR charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
                            THEN D1.Directorate_Code
                            WHEN 
                                          OBJ1.ObjectType_Lib_EN IS NULL AND 
                                          (OBJ0.ObjectType_ExternalID IN 
                                                         (
     '5',  '6', '1101', '1102',  '7',  '8', '1203','9', '1205', '14', '4', '1201',  '3', '1204', 
     '1104', '1106', '1107', 'WorkingPaper Serie','1204', '1105', '1001',  '17', '1002',  '16', '1003',  '1004' 
                                                         ) 
                                          OR charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)              
                            THEN D0.Directorate_Code 
                            ELSE CASE  WHEN   D1.Directorate_Code IS NOT NULL 
                                                         THEN D1.Directorate_Code 
                                                         ELSE D0.Directorate_Code 
                                          END
              END AS [Expression - Directorate Code Level1],
              CASE 
                            WHEN 
                                          TopExpression.FullTitle = Top2Expression.FullTitle 
                                          AND TopExpression.FullTitle IS NOT NULL 
                            THEN D0.Directorate_Code 
                            ELSE CASE  WHEN  D1.Directorate_Code IS NOT NULL 
                                                         THEN D1.Directorate_Code 
                                                         ELSE D0.Directorate_Code END
              END AS [Expression - Directorate Code Level2],
              CASE 
                            WHEN
                                          OBJ1.ObjectType_ExternalID IN 
                                          (
    '5', '6', '1101', '1102', '7', '8', '1203',  '9', '1205', '14', '4', '1201','3', '1204', 
    '1104', '1106', '1107', 'WorkingPaper Serie', '1204','1105', '1001', '17', '1002', '16', '1003', '1004' 
                                          ) 
                                          OR charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
                            THEN D1.Directorate_Lib_EN
                            WHEN 
                                          OBJ1.ObjectType_Lib_EN IS NULL AND 
                                          (OBJ0.ObjectType_ExternalID IN 
                                                         (
    '5', '6', '1101', '1102', '7', '8', '1203', '9', '1205', '14','4', '1201', '3',  '1204',
    '1104', '1106', '1107', 'WorkingPaper Serie', '1204', '1105', '1001', '17', '1002', '16', '1003', '1004'  
                                                         ) 
                                          OR charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)                                                         
                            THEN D0.Directorate_Lib_EN 
                            ELSE CASE WHEN TopExpression.FullTitle IS NOT NULL 
                                                         THEN D1.Directorate_Lib_EN 
                                                         ELSE D0.Directorate_Lib_EN 
                                          END
              END AS [Expression - Directorate Name Level1],
              CASE 
                            WHEN 
                                          TopExpression.FullTitle = Top2Expression.FullTitle AND 
                                          TopExpression.FullTitle IS NOT NULL 
                            THEN D0.Directorate_Lib_EN 
                            ELSE        CASE        WHEN    Top2Expression.FullTitle IS NOT NULL 
                                                         THEN D1.Directorate_Lib_EN 
                                                         ELSE D0.Directorate_Lib_EN
                                          END
              END AS [Expression - Directorate Name Level2]
FROM 
              stg.[view_DIM_Expression_Metadata] AS Expression 
              LEFT OUTER JOIN (select Directorate_ID,Theme_ID,ObjectType_ID,Expression_ID,FullTitle,TopParent_ID, doi from stg.[view_DIM_Expression_Metadata]) AS Top2Expression 
                            ON Expression.Top2Parent_ID = Top2Expression.Expression_ID
              LEFT OUTER JOIN  (select ObjectType_ExternalID,ObjectType_ID,ObjectType_Lib_EN from [stg].ObjectType_DM)  OBJ0 
                            on Expression.ObjectType_ID=OBJ0.ObjectType_ID
              LEFT OUTER JOIN  (select Directorate_ID,Theme_ID,ObjectType_ID,Expression_ID,FullTitle,TopParent_ID, doi from stg.[view_DIM_Expression_Metadata])  AS TopExpression 
                                         ON TopExpression.Expression_ID = 
                            CASE
                                          WHEN Top2Expression.TopParent_ID IS NOT NULL
                                          AND Expression.Expression_ID != Top2Expression.TopParent_ID
                                          AND OBJ0.ObjectType_ExternalID NOT IN ('1604', '1605', '1601')
                                          THEN Top2Expression.TopParent_ID
                                          ELSE Expression.TopParent_ID
                            END
              
              LEFT OUTER JOIN (select ObjectType_ExternalID,ObjectType_ID,ObjectType_Lib_EN from [stg].ObjectType_DM) OBJ1 
                            ON TopExpression.ObjectType_ID=OBJ1.ObjectType_ID
              LEFT OUTER JOIN (select ObjectType_ExternalID,ObjectType_ID,ObjectType_Lib_EN from [stg].ObjectType_DM) OBJ2 
                            ON Top2Expression.ObjectType_ID=OBJ2.ObjectType_ID
              LEFT OUTER JOIN  (select Theme_ID,Theme_Lib_EN from [stg].Theme_DM)  TH0 
                            ON Expression.Theme_ID=TH0.Theme_ID
              LEFT OUTER JOIN  (select Theme_ID,Theme_Lib_EN from [stg].Theme_DM)  TH1 
                            ON TopExpression.Theme_ID=TH1.Theme_ID
              LEFT OUTER JOIN  (select Theme_ID,Theme_Lib_EN from [stg].Theme_DM)  TH2 
                            ON Top2Expression.Theme_ID=TH2.Theme_ID
              LEFT OUTER JOIN (select Directorate_ID,Directorate_Lib_EN,Directorate_Code from stg.view_DIM_Directorate) D0 
                            ON Expression.Directorate_ID=D0.Directorate_ID
              LEFT OUTER JOIN (select Directorate_ID,Directorate_Lib_EN,Directorate_Code from stg.view_DIM_Directorate) D1 
                            ON TopExpression.Directorate_ID=D1.Directorate_ID
              LEFT OUTER JOIN (select Directorate_ID,Directorate_Lib_EN,Directorate_Code from stg.view_DIM_Directorate) D2 
                            ON Top2Expression.Directorate_ID=D2.Directorate_ID
WHERE 
              Expression.DOI <> '' AND 
              Expression.DOI IS NOT NULL
                                          )T
Group by
CurExpId,[Expression - ID], [Expression - DOI], [Expression - FullTitle], [Expression - iLibraryURLAlias],[Expression - iLibraryAccessMode],
[Expression - Directorate ID],[Expression - Language ID], [Expression - Theme ID],[Expression - IGO ID], [Expression - Object Type ID] ,                    
[Expression - FirstRelease_Date],[Expression - FirstExportDate],[Expression - LatestDeletionDate], [Expression - LatestExportDate],
[Expression - HasEpub],[Expression - HasEBook],[Expression - HasRead],[Expression - HasHTML],[Expression - HasExcel],O,OID1,
[Expression - Object Type Level1],[Expression - Object Type Level2],[Expression - Title Level1],[Expression - Title Level2],
[Expression - DOI Level1],[Expression - DOI Level2],[Expression - Theme Level1],[Expression - Theme Level2],[Expression - Directorate Code Level1],
[Expression - Directorate Code Level2],[Expression - Directorate Name Level1],[Expression - Directorate Name Level2]

 

