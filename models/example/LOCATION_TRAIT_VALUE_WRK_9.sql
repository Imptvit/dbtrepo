SELECT
 LOC_TRAIT_VAL_CD as LOC_TRAIT_VAL_CD,
 LOC_TRAIT_CD as LOC_TRAIT_CD,
 coalesce(LOC_TRAIT_VAL_DESC_lkp,
 '') as LOC_TRAIT_VAL_DESC   
FROM
 {{ ref('LOCATION_TRAIT_VALUE_WRK_8') }};