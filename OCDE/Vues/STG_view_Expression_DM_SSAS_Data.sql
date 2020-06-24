 
 CREATE VIEW [stg].[view_Expression_DM_SSAS_Data]
AS
 
SELECT  distinct         
                     Expression.CurExpId,Expression.Expression_ID AS [Expression - ID], 
                     Expression.DOI AS [Expression - DOI],  Expression.FullTitle AS [Expression - FullTitle],  Expression.iLibraryURLAlias AS [Expression - iLibraryURLAlias],
                      Expression.iLibraryAccessMode AS [Expression - iLibraryAccessMode],
                      Expression.Directorate_ID AS [Expression - Directorate ID],
                      Expression.Language_ID AS [Expression - Language ID], 
                      Expression.Theme_ID AS [Expression - Theme ID],
                      Expression.Igo_ID AS [Expression - IGO ID], 
                      Expression.ObjectType_ID AS [Expression - Object Type ID] , 
                      Expression.FirstRelease_Date AS [Expression - FirstRelease_Date],
                      Expression.FirstExportDate AS [Expression - FirstExportDate], Expression.LatestDeletionDate AS [Expression - LatestDeletionDate], 
                      Expression.LatestExportDate AS [Expression - LatestExportDate]                       
                      ,Expression.HasEpub as [Expression - HasEpub]
                      ,Expression.HasEBook as [Expression - HasEBook]
                      ,Expression.HasRead as [Expression - HasRead]
                      ,Expression.HasHTML as [Expression - HasHTML]
                      ,Expression.HasExcel as [Expression - HasExcel]
             ,CASE WHEN  OBJ1.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
             
            THEN OBJ1.ObjectType_Lib_EN
            
             WHEN OBJ1.ObjectType_Lib_EN is null and (OBJ0.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)
                         
            THEN OBJ0.ObjectType_Lib_EN
            
 
            WHEN  OBJ1.ObjectType_Lib_EN ='Stand-alone monograph' THEN  OBJ1.ObjectType_Lib_EN 
            WHEN  OBJ0.ObjectType_Lib_EN ='Stand-alone monograph'THEN   OBJ0.ObjectType_Lib_EN  
            END as [Expression - Object Type Level1]    
 
      ,CASE WHEN TopExpression.FullTitle =Top2Expression.FullTitle AND TopExpression.FullTitle  is not null THEN OBJ0.ObjectType_Lib_EN ELSE
                                CASE WHEN Top2Expression.FullTitle is not null THEN OBJ2.ObjectType_Lib_EN ELSE OBJ0.ObjectType_Lib_EN END
        END AS [Expression - Object Type Level2]
        
      ,CASE WHEN  OBJ1.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
                         
            THEN TopExpression.FullTitle 
            WHEN  OBJ1.ObjectType_Lib_EN is null  and (OBJ0.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)
                         
            THEN Expression.FullTitle 
 
            ELSE  
                CASE WHEN TopExpression.FullTitle is not null THEN TopExpression.FullTitle ELSE Expression.FullTitle END
            END  as [Expression - Title Level1]
 
      ,CASE WHEN TopExpression.DOI =Top2Expression.DOI AND TopExpression.DOI  is not null THEN Expression.FullTitle ELSE
                                CASE WHEN Top2Expression.FullTitle is not null THEN Top2Expression.FullTitle ELSE Expression.FullTitle END
        END AS [Expression - Title Level2]
        
      ,CASE WHEN    OBJ1.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
                         
            THEN TopExpression.DOI 
            WHEN    OBJ1.ObjectType_Lib_EN is null and ( OBJ0.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)
                         
            THEN Expression.DOI 
            
            ELSE
                CASE WHEN TopExpression.DOI is not null then TopExpression.DOI
                ELSE Expression.DOI 
                END
            END  as [Expression - DOI Level1]        
 
      ,CASE WHEN TopExpression.DOI =Top2Expression.DOI AND TopExpression.DOI  is not null THEN Expression.DOI ELSE
                                CASE WHEN Top2Expression.DOI is not null THEN Top2Expression.DOI ELSE Expression.DOI END
        END AS [Expression - DOI Level2]
 

      ,CASE WHEN  OBJ1.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
                         
            THEN TH1.Theme_Lib_EN
            WHEN  OBJ1.ObjectType_Lib_EN is null  and (OBJ0.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)
                         
            THEN TH0.Theme_Lib_EN 
            ELSE  
                CASE WHEN TopExpression.FullTitle is not null THEN TH1.Theme_Lib_EN ELSE TH0.Theme_Lib_EN END
            END  as [Expression - Theme Level1]
      
      ,CASE WHEN TopExpression.FullTitle =Top2Expression.FullTitle AND TopExpression.FullTitle  is not null THEN TH0.Theme_Lib_EN ELSE
                                CASE WHEN Top2Expression.FullTitle is not null THEN TH2.Theme_Lib_EN ELSE TH0.Theme_Lib_EN END
        END AS [Expression - Theme Level2]
 
        
      ,CASE WHEN  OBJ1.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
                         
            THEN D1.Directorate_Code
            WHEN  OBJ1.ObjectType_Lib_EN is null  and (OBJ0.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)
                         
            THEN D0.Directorate_Code 
 
            ELSE  
                CASE WHEN D1.Directorate_Code is not null THEN D1.Directorate_Code ELSE D0.Directorate_Code END
            END  as [Expression - Directorate Code Level1]
 
      ,CASE WHEN  TopExpression.FullTitle =Top2Expression.FullTitle AND TopExpression.FullTitle  is not null THEN D0.Directorate_Code ELSE
                                CASE WHEN D1.Directorate_Code is not null THEN D1.Directorate_Code ELSE D0.Directorate_Code END
        END AS [Expression - Directorate Code Level2]
 
      ,CASE WHEN  OBJ1.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ1.ObjectType_Lib_EN)>0
                         
            THEN D1.Directorate_Lib_EN
            WHEN  OBJ1.ObjectType_Lib_EN is null  and (OBJ0.ObjectType_Lib_EN in  ('Annual' ,'Book Series' ,'Series book','Country Studies','Economic Outlook Periodical','Economic Surveys Periodical','iLibrary Package','Journal','Statistical Periodical',
                'Book periodical','WorkingPaper Series' ,'Working paper series ' ,'WorkingPaper Serie' ,'Book periodical','Database','Indicator group','Key Table Thematic Collection','Key Table Country Collection','Dataset group') or charindex('[SUB]',OBJ0.ObjectType_Lib_EN)>0)
                         
            THEN D0.Directorate_Lib_EN 
 
            ELSE  
                CASE WHEN TopExpression.FullTitle is not null THEN D1.Directorate_Lib_EN ELSE D0.Directorate_Lib_EN END
            END  as [Expression - Directorate Name Level1]
 
      ,CASE WHEN TopExpression.FullTitle =Top2Expression.FullTitle AND TopExpression.FullTitle  is not null THEN  D0.Directorate_Lib_EN ELSE
                                CASE WHEN Top2Expression.FullTitle is not null THEN D1.Directorate_Lib_EN ELSE D0.Directorate_Lib_EN END
        END AS [Expression - Directorate Name Level2]
 
 
FROM         stg.[view_DIM_Expression_Metadata] AS Expression   LEFT OUTER JOIN
                      (select Directorate_ID,Theme_ID,ObjectType_ID,Expression_ID,FullTitle, doi from stg.[view_DIM_Expression_Metadata]) AS TopExpression ON Expression.TopParent_ID = TopExpression.Expression_ID LEFT OUTER JOIN
                      (select Directorate_ID,Theme_ID,ObjectType_ID,Expression_ID,FullTitle, doi from stg.[view_DIM_Expression_Metadata]) AS Top2Expression ON Expression.Top2Parent_ID = Top2Expression.Expression_ID LEFT OUTER JOIN
                      (select Directorate_ID,Theme_ID,ObjectType_ID,Expression_ID,FullTitle, doi from stg.[view_DIM_Expression_Metadata]) AS Top3Expression ON Expression.Top3Parent_ID = Top3Expression.Expression_ID
                      
                      LEFT OUTER JOIN  (select ObjectType_ID,ObjectType_Lib_EN from [stg].ObjectType_DM) OBJ0 on Expression.ObjectType_ID=OBJ0.ObjectType_ID
                       LEFT OUTER JOIN (select ObjectType_ID,ObjectType_Lib_EN from [stg].ObjectType_DM) OBJ1 on TopExpression.ObjectType_ID=OBJ1.ObjectType_ID
                       LEFT OUTER JOIN (select ObjectType_ID,ObjectType_Lib_EN from [stg].ObjectType_DM) OBJ2 on Top2Expression.ObjectType_ID=OBJ2.ObjectType_ID
                       LEFT OUTER JOIN (select ObjectType_ID,ObjectType_Lib_EN from [stg].ObjectType_DM) OBJ3 on Top3Expression.ObjectType_ID=OBJ3.ObjectType_ID
                      					
                      LEFT OUTER JOIN  (select Theme_ID,Theme_Lib_EN from [stg].Theme_DM) TH0 on Expression.Theme_ID=TH0.Theme_ID 
                      LEFT OUTER JOIN  (select Theme_ID,Theme_Lib_EN from [stg].Theme_DM) TH1 on TopExpression.Theme_ID=TH1.Theme_ID
                      LEFT OUTER JOIN  (select Theme_ID,Theme_Lib_EN from [stg].Theme_DM) TH2 on Top2Expression.Theme_ID=TH2.Theme_ID
 
                      LEFT OUTER JOIN (select Directorate_ID,Directorate_Lib_EN,Directorate_Code from stg.view_DIM_Directorate) D0 on Expression.Directorate_ID=D0.Directorate_ID 
                      LEFT OUTER JOIN (select Directorate_ID,Directorate_Lib_EN,Directorate_Code from stg.view_DIM_Directorate) D1 on TopExpression.Directorate_ID=D1.Directorate_ID
                      LEFT OUTER JOIN (select Directorate_ID,Directorate_Lib_EN,Directorate_Code from stg.view_DIM_Directorate) D2 on Top2Expression.Directorate_ID=D2.Directorate_ID
 
                      WHERE Expression.DOI<>'' and Expression.DOI is not null