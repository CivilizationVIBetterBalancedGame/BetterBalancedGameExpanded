--==========================================================================================================================
-- ICONS
--==========================================================================================================================
-- IconTextureAtlases
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO IconTextureAtlases	
		(Name,										IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_JFD_STANISLAW',				45,	 		1,				1,					'Stanislaw45.dds'),
		('ICON_ATLAS_JFD_STANISLAW',				50,	 		1,				1,					'Stanislaw50.dds'),
		('ICON_ATLAS_JFD_STANISLAW',				55,	 		1,				1,					'Stanislaw55.dds'),
		('ICON_ATLAS_JFD_STANISLAW',				64,	 		1,				1,					'Stanislaw64.dds'),
		('ICON_ATLAS_JFD_STANISLAW',				80,	 		1,				1,					'Stanislaw80.dds'),
		('ICON_ATLAS_JFD_STANISLAW',				256,	 	1,				1,					'Stanislaw256.dds'),
		('ICON_ATLAS_JFD_UHLAN',					256,	 	1,				1,					'UhlanUnitFlags256.dds'),
		('ICON_ATLAS_JFD_UHLAN',					80,	 		1,				1,					'UhlanUnitFlags80.dds'),
		('ICON_ATLAS_JFD_UHLAN',					50,	 		1,				1,					'UhlanUnitFlags50.dds'),
		('ICON_ATLAS_JFD_UHLAN',					38,	 		1,				1,					'UhlanUnitFlags38.dds'),
		('ICON_ATLAS_JFD_UHLAN',					32,	 		1,				1,					'UhlanUnitFlags32.dds'),
		('ICON_ATLAS_JFD_UHLAN',					22,	 		1,				1,					'UhlanUnitFlags22.dds'),
		('ICON_ATLAS_JFD_UHLAN_PORTRAIT',			256,	 	1,				1,					'UhlanUnitPortraits256.dds'),
		('ICON_ATLAS_JFD_UHLAN_PORTRAIT',			200,	 	1,				1,					'UhlanUnitPortraits200.dds'),
		('ICON_ATLAS_JFD_UHLAN_PORTRAIT',			95,	 		1,				1,					'UhlanUnitPortraits95.dds'),
		('ICON_ATLAS_JFD_UHLAN_PORTRAIT',			70,	 		1,				1,					'UhlanUnitPortraits70.dds'),
		('ICON_ATLAS_JFD_UHLAN_PORTRAIT',			50,	 		1,				1,					'UhlanUnitPortraits50.dds'),
		('ICON_ATLAS_JFD_UHLAN_PORTRAIT',			38,	 		1,				1,					'UhlanUnitPortraits38.dds');
--------------------------------------------------------------------------------------------------------------------------
-- IconDefinitions
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO IconDefinitions	
		(Name,													Atlas, 										'Index')
VALUES  ('ICON_LEADER_JFD_STANISLAW',							'ICON_ATLAS_JFD_STANISLAW',					0),
		('ICON_UNIT_JFD_UHLAN',									'ICON_ATLAS_JFD_UHLAN',						0),
		('ICON_UNIT_JFD_UHLAN_BLACK',							'ICON_ATLAS_JFD_UHLAN',						0),
		('ICON_UNIT_JFD_UHLAN_WHITE',							'ICON_ATLAS_JFD_UHLAN',						0),
		('ICON_UNIT_JFD_UHLAN_PORTRAIT',						'ICON_ATLAS_JFD_UHLAN_PORTRAIT',			0),
		('ICON_ETHNICITY_AFRICAN_UNIT_JFD_UHLAN_PORTRAIT',		'ICON_ATLAS_JFD_UHLAN_PORTRAIT',			0),
		('ICON_ETHNICITY_SOUTHAM_UNIT_JFD_UHLAN_PORTRAIT',		'ICON_ATLAS_JFD_UHLAN_PORTRAIT',			0),
		('ICON_ETHNICITY_MEDIT_UNIT_JFD_UHLAN_PORTRAIT',		'ICON_ATLAS_JFD_UHLAN_PORTRAIT',			0),
		('ICON_ETHNICITY_ASIAN_UNIT_JFD_UHLAN_PORTRAIT',		'ICON_ATLAS_JFD_UHLAN_PORTRAIT',			0);
--==========================================================================================================================
--==========================================================================================================================