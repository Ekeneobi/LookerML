case
when regexp_contains(Source,R"(?i)(CertifiedCropAdvisor)|(?i)(certified)|(?i)(Crops_And_Soils)|(?i)(cropsandsoils)|(?i)(scoop)|(?i)(CAAR)|(?i)(glacier_farm_media)|(?i)(GFM)|(?i)(crop_life)|(?i)(advisor)|(?i)(CCA)|(?i)(Agronomist)|(?i)(CCA)|(?i)(topcropsummit\.com)|(?i)(info\.farmjournal\.com)") then "Agronomist Audience"
when regexp_contains(Source,R"(?i)(dtnpf)|(?i)(top_crop_manager)|(?i)(topcropmanager)|(?i)(western_producer)|(?i)(farm_journal)|(?i)(farm_progress)|(?i)(precision_reach)|(?i)(real_ag)|(?i)(farm_marketer)") then "Grower Audience"
when regexp_contains(Source,R"(?i)(simplifi)|(?i)(coegi)|(?i)(loknow)|(?i)(dyndamic)|(?i)(stackadapt)|(?i)(google)|(?i)(twitter)|(?i)(linkedin)|(?i)(youtube)") then "All Audience"
else "All Audience"
end