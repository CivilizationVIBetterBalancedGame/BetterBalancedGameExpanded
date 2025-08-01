-- IconTextureAtlases
-------------------------------------	
INSERT INTO IconTextureAtlases	
		(Name,										IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_P0K_RESOURCES_MODE',			256,	 	8,				8,					'p0k_Resources_MODE_Atlas_256.dds'),
		('ICON_ATLAS_P0K_RESOURCES_MODE_FOW',		256,		8,				8,					'p0k_Resources_MODE_Atlas_FOW.dds'),
		('ICON_ATLAS_P0K_RESOURCES_MODE',			64,	 		8,				8,					'p0k_Resources_MODE_Atlas_64.dds'),
		('ICON_ATLAS_P0K_RESOURCES_MODE',			50,	 		8,				8,					'p0k_Resources_MODE_Atlas_50.dds'),
		('ICON_ATLAS_P0K_RESOURCES_MODE',			38,	 		8,				8,					'p0k_Resources_MODE_Atlas_38.dds'),
		('ICON_ATLAS_P0K_RESOURCES_MODE',			32,	 		8,				8,					'p0k_Resources_MODE_Atlas_32.dds');
-------------------------------------
-- IconDefinitions
-------------------------------------	
INSERT INTO IconDefinitions	
		(Name,															Atlas, 									'Index')
VALUES  ('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_PENGUINS',				'ICON_ATLAS_P0K_RESOURCES_MODE',		0),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_P0K_PENGUINS',		'ICON_ATLAS_P0K_RESOURCES_MODE',		0),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_PENGUINS_FOW',			'ICON_ATLAS_P0K_RESOURCES_MODE_FOW',	0),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_CVS_POMEGRANATES',			'ICON_ATLAS_P0K_RESOURCES_MODE',		1), 
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_CVS_POMEGRANATES',	'ICON_ATLAS_P0K_RESOURCES_MODE',		1),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_CVS_POMEGRANATES_FOW',		'ICON_ATLAS_P0K_RESOURCES_MODE_FOW',	1),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_PLUMS',				'ICON_ATLAS_P0K_RESOURCES_MODE',		2),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_P0K_PLUMS',			'ICON_ATLAS_P0K_RESOURCES_MODE',		2),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_PLUMS_FOW',			'ICON_ATLAS_P0K_RESOURCES_MODE_FOW',	2),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_PAPYRUS',				'ICON_ATLAS_P0K_RESOURCES_MODE',		3),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_P0K_PAPYRUS',			'ICON_ATLAS_P0K_RESOURCES_MODE',		3),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_PAPYRUS_FOW',			'ICON_ATLAS_P0K_RESOURCES_MODE_FOW',	3),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_OPAL',					'ICON_ATLAS_P0K_RESOURCES_MODE',		4),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_P0K_OPAL',			'ICON_ATLAS_P0K_RESOURCES_MODE',		4),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_OPAL_FOW',				'ICON_ATLAS_P0K_RESOURCES_MODE_FOW',	4),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_MAPLE',				'ICON_ATLAS_P0K_RESOURCES_MODE',		5),
		('ICON_PROJECT_CREATE_CORPORATION_PRODUCT_P0K_MAPLE',			'ICON_ATLAS_P0K_RESOURCES_MODE',		5),
		('ICON_MONOPOLIES_AND_CORPS_RESOURCE_P0K_MAPLE_FOW',			'ICON_ATLAS_P0K_RESOURCES_MODE_FOW',	5);