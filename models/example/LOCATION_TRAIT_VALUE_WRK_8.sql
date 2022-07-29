SELECT
 auto_alias_0.LOC_TRAIT_VAL_CD as LOC_TRAIT_VAL_CD ,
 auto_alias_0.LOC_TRAIT_CD as LOC_TRAIT_CD ,
 auto_alias_1.LOC_TRAIT_VAL_DESC_lkp as LOC_TRAIT_VAL_DESC_lkp    
FROM
 {{ ref('LOCATION_TRAIT_VALUE_WRK_4') }} auto_alias_0   
left outer join
 (
 SELECT
*    
 FROM
{{ ref('LOCATION_TRAIT_VALUE_WRK_1') }}  QUALIFY ROW_NUMBER() OVER( 
PARTITION BY LOC_TRAIT_CD_lkp, LOC_TRAIT_VAL_CD_lkp           
  ORDER BY LOC_TRAIT_CD_lkp, LOC_TRAIT_VAL_CD_lkp) = 1
 )  auto_alias_1 
 ON auto_alias_0.LOC_TRAIT_CD = auto_alias_1.LOC_TRAIT_CD_lkp 
 AND auto_alias_0.LOC_TRAIT_VAL_CD = auto_alias_1.LOC_TRAIT_VAL_CD_lkp;