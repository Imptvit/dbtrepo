SELECT
 TRIM(KNA1_ZZDISTHQ) as LOC_TRAIT_VAL_CD,
 'DHO' as LOC_TRAIT_CD,
 TRIM(KNA1_ZZDISTHQ) as LOC_TRAIT_VAL_DESC   
FROM
 {{ ref('LOCATION_TRAIT_VALUE_WRK_3') }}      
WHERE
 TRIM(KNA1_ZZDISTHQ) <> '';