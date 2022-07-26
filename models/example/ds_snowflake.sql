CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_1
        	             as
        	             SELECT
						   LOC_TRAIT_VAL_CD as LOC_TRAIT_VAL_CD_lkp,
						   LOC_TRAIT_CD as LOC_TRAIT_CD_lkp,
						   LOC_TRAIT_VAL_DESC  as LOC_TRAIT_VAL_DESC_lkp 
						  FROM
						   EDWDATA.LOCATION_TRAIT_VALUE     
						  WHERE
						   LOC_TRAIT_CD = 'DEMO';
						   
						   
CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_3
        	             as
        	             SELECT
        	             REC_TYPE,
								KUNNR as KNA1_KUNNR ,
								LAND1 as KNA1_LAND1  ,
								NAME1 as KNA1_NAME1  ,
								NAME2 as KNA1_NAME2  ,
								ORT01 as KNA1_ORT01  ,
								PSTLZ as KNA1_PSTLZ  ,
								REGIO as KNA1_REGIO  ,
								SORTL as KNA1_SORTL  ,
								STRAS as KNA1_STRAS  ,
								TELF1 as KNA1_TELF1  ,
								TELFX as KNA1_TELFX  ,
								XCPDK as KNA1_XCPDK  ,
								ADRNR as KNA1_ADRNR  ,
								BBBNR as KNA1_BBBNR  ,
								BBSNR as KNA1_BBSNR  ,
								BUBKZ as KNA1_BUBKZ  ,
								KTOKD as KNA1_KTOKD  ,
								STCD1 as KNA1_STCD1  ,
								ZZBRAND   as KNA1_ZZBRAND    ,
								ZZCHANNEL as KNA1_ZZCHANNEL  ,
								ZZCLUSTER as KNA1_ZZCLUSTER  ,
								ZZDISTHQ  as KNA1_ZZDISTHQ   ,
								ZZDIVISION   as KNA1_ZZDIVISION ,
								ZZDLVSRTCODE as KNA1_ZZDLVSRTCODE  ,
								ZZFUNCT   as KNA1_ZZFUNCT    ,
								ZZGARHANGCAP as KNA1_ZZGARHANGCAP  ,
								ZZHAZATCAP   as KNA1_ZZHAZATCAP ,
								ZZHLDALOCINV as KNA1_ZZHLDALOCINV  ,
								ZZHOLDLOADFLG  as KNA1_ZZHOLDLOADFLG ,
								ZZLEGCOCODE  as KNA1_ZZLEGCOCODE   ,
								ZZMALLCODE   as KNA1_ZZMALLCODE ,
								ZZMALLFASH   as KNA1_ZZMALLFASH ,
								ZZMALLTYPE   as KNA1_ZZMALLTYPE ,
								ZZMEGABRAND  as KNA1_ZZMEGABRAND   ,
								ZZMSADIST as KNA1_ZZMSADIST  ,
								ZZONE as KNA1_ZZONE  ,
								ZZPCPKPROCFAC  as KNA1_ZZPCPKPROCFAC ,
								ZZPHYSICALLOC  as KNA1_ZZPHYSICALLOC ,
								ZZPRICEPOINT as KNA1_ZZPRICEPOINT  ,
								ZZREGION  as KNA1_ZZREGION   ,
								ZZREMODELDATE  as KNA1_ZZREMODELDATE ,
								ZZSERIES  as KNA1_ZZSERIES   ,
								ZZSHIPSTORESTAT as KNA1_ZZSHIPSTORESTAT ,
								ZZSITECATEGORY as KNA1_ZZSITECATEGORY  ,
								ZZSTRCLASS   as KNA1_ZZSTRCLASS ,
								ZZSTRDESIGN  as KNA1_ZZSTRDESIGN   ,
								ZZSTREVNT as KNA1_ZZSTREVNT  ,
								ZZSTRNR1  as KNA1_ZZSTRNR1   ,
								ZZSTRNR2  as KNA1_ZZSTRNR2   ,
								ZZSTRSRV  as KNA1_ZZSTRSRV   ,
								ZZSTRTYP  as KNA1_ZZSTRTYP   ,
								ZZVELOCITY   as KNA1_ZZVELOCITY ,
								ZZSTRWNDWST  as KNA1_ZZSTRWNDWST   ,
								ZZSUBWNDW as KNA1_ZZSUBWNDW  ,
								ZZTRDAREAETH as KNA1_ZZTRDAREAETH  ,
								ZZTRDAREAPOP as KNA1_ZZTRDAREAPOP  ,
								ZZVENDORNBR  as KNA1_ZZVENDORNBR   ,
								LIFNR as KNA1_LIFNR  ,
								LZONE as KNA1_LZONE  ,
								ZZMERCHDATE  as KNA1_ZZMERCHDATE   ,
								ZZTIER as KNA1_ZZTIER ,
								ZZCOUNTREG   as KNA1_ZZCOUNTREG ,
								ZZSUBFORMAT  as KNA1_ZZSUBFORMAT   ,
								ZZMERGEDTO   as KNA1_ZZMERGEDTO ,
								ERDAT as KNA1_ERDAT  ,
								BRSCH as KNA1_BRSCH  ,
								SPRAS as KNA1_SPRAS  ,
								KONZS as KNA1_KONZS  ,
								STCD2 as KNA1_STCD2  ,
								STCD3 as KNA1_STCD3  ,
								STCD4 as KNA1_STCD4        	    
        	             FROM EDLDATA.SAP_ENT_KNA1  WHERE REC_TYPE like '5%' ;

CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_4
        	             as
        	             SELECT
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZFUNCT) as LOC_TRAIT_VAL_CD,
						   'DEMO' as LOC_TRAIT_CD   
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_3      
						  WHERE
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZFUNCT) <> '';

CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_5
        	             as
        	             SELECT
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZDISTHQ) as LOC_TRAIT_VAL_CD,
						   'DHO' as LOC_TRAIT_CD,
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZDISTHQ) as LOC_TRAIT_VAL_DESC   
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_3      
						  WHERE
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZDISTHQ) <> '';

CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_6
        	             as
        	             SELECT
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZCOUNTREG) as LOC_TRAIT_VAL_CD,
						   'CTREG' as LOC_TRAIT_CD,
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZCOUNTREG) as LOC_TRAIT_VAL_DESC   
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_3      
						  WHERE
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZCOUNTREG) <> '';

CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_7
        	             as
        	             SELECT
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZMERGEDTO) as LOC_TRAIT_VAL_CD,
						   'TRSTM' as LOC_TRAIT_CD,
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZMERGEDTO) as LOC_TRAIT_VAL_DESC   
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_3      
						  WHERE
						   TRIM(LOCATION_TRAIT_VALUE_WRK_3.KNA1_ZZMERGEDTO) <> '';

CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_8
        	             as
        	             SELECT
						   auto_alias_0.LOC_TRAIT_VAL_CD as LOC_TRAIT_VAL_CD ,
						   auto_alias_0.LOC_TRAIT_CD as LOC_TRAIT_CD ,
						   auto_alias_1.LOC_TRAIT_VAL_DESC_lkp as LOC_TRAIT_VAL_DESC_lkp    
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_4 auto_alias_0   
						  left outer join
						   (
						   SELECT
							*    
						   FROM
							LOCATION_TRAIT_VALUE_WRK_1  QUALIFY ROW_NUMBER() OVER( 
							PARTITION BY LOC_TRAIT_CD_lkp, LOC_TRAIT_VAL_CD_lkp           
						    ORDER BY LOC_TRAIT_CD_lkp, LOC_TRAIT_VAL_CD_lkp) = 1
						   )  auto_alias_1 
						   ON auto_alias_0.LOC_TRAIT_CD = auto_alias_1.LOC_TRAIT_CD_lkp 
						   AND auto_alias_0.LOC_TRAIT_VAL_CD = auto_alias_1.LOC_TRAIT_VAL_CD_lkp;

CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_9
        	             AS
        	             SELECT
						   LOCATION_TRAIT_VALUE_WRK_8.LOC_TRAIT_VAL_CD as LOC_TRAIT_VAL_CD,
						   LOCATION_TRAIT_VALUE_WRK_8.LOC_TRAIT_CD as LOC_TRAIT_CD,
						   coalesce(LOCATION_TRAIT_VALUE_WRK_8.LOC_TRAIT_VAL_DESC_lkp,
						   '') as LOC_TRAIT_VAL_DESC   
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_8;

CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_10
        	             as
        	             SELECT
						   LOC_TRAIT_VAL_CD,
						   LOC_TRAIT_CD,
						   LOC_TRAIT_VAL_DESC 
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_7  
						  UNION ALL 
						  SELECT
						   LOC_TRAIT_VAL_CD,
						   LOC_TRAIT_CD,
						   LOC_TRAIT_VAL_DESC 
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_6  
						  UNION ALL 
						  SELECT
						   LOC_TRAIT_VAL_CD,
						   LOC_TRAIT_CD,
						   LOC_TRAIT_VAL_DESC 
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_5  
						  UNION ALL 
						  SELECT
						   LOC_TRAIT_VAL_CD,
						   LOC_TRAIT_CD,
						   LOC_TRAIT_VAL_DESC 
						  FROM
						   LOCATION_TRAIT_VALUE_WRK_9;

CREATE OR REPLACE TRANSIENT TABLE LOCATION_TRAIT_VALUE_WRK_11
        	             as
        	             SELECT
						   LOC_TRAIT_VAL_CD,
						   LOC_TRAIT_CD,
						   LOC_TRAIT_VAL_DESC   
						  FROM
						   (SELECT
						   LOC_TRAIT_VAL_CD,
						   LOC_TRAIT_CD,
						   LOC_TRAIT_VAL_DESC,
						   row_number() over(  partition 
						   by
						   LOC_TRAIT_CD,
						   LOC_TRAIT_VAL_CD   
						   ORDER BY
						   LOC_TRAIT_CD asc ,
						   LOC_TRAIT_VAL_CD asc ) rnk   
						   FROM
						   LOCATION_TRAIT_VALUE_WRK_10)   AS X   
						  WHERE
						   X.rnk = 1;

DELETE 
        	    FROM
        	        EDWTEMP.LOCATION_TRAIT_VALUE_TMP;

INSERT INTO EDWTEMP.LOCATION_TRAIT_VALUE_TMP 
						(LOC_TRAIT_VAL_CD,
						LOC_TRAIT_CD,
						LOC_TRAIT_VAL_DESC)
					SELECT 
					 LOC_TRAIT_VAL_CD,
					 LOC_TRAIT_CD,
					 LOC_TRAIT_VAL_DESC
					 FROM LOCATION_TRAIT_VALUE_WRK_11;					