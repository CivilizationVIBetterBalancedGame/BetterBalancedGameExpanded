--===========================================================================================================================================================================--
-- Author: Albro
-- Create date: 2019-03-07
-- Description: Core Components for the Titans of Industry expansion.
--==========================================================================================================================================================================--
/* TITANS OF INDUSTRY */
--==========================================================================================================================================================================--
INSERT INTO Types
(	Type,															Kind					)	VALUES

(	'WON_CL_BUILDING_ARECIBO',											'KIND_BUILDING'			);

--===========================================================================================================================================================================--
/* SECTION XX: BUILDING */
--===========================================================================================================================================================================--			

		INSERT INTO Buildings
			(	BuildingType,       				Name,       										PrereqTech,					PrereqCivic,   			 Cost,      	 MaxPlayerInstances,	MaxWorldInstances,	PrereqDistrict,       			Description,										Maintenance,	RequiresPlacement,		CitizenSlots,	MustBeLake,		MustBeAdjacentLand,		Entertainment,			PurchaseYield,		IsWonder,	ObsoleteEra,		Quote,	 		  						 AdvisorType      			)	VALUES

			(	'WON_CL_BUILDING_ARECIBO',			'LOC_WON_CL_BUILDING_ARECIBO_NAME',					NULL,						'CIVIC_SPACE_RACE',		'1620',			'-1',					'1', 				NULL, 							'LOC_WON_CL_BUILDING_ARECIBO_DESCRIPTION',			'0',			'1',					'0',			'0',			'0',					'0',					NULL,				'1',		'NO_ERA',			'LOC_WON_CL_BUILDING_ARECIBO_QUOTE',	'ADVISOR_TECHNOLOGY'		);

		INSERT INTO Building_RequiredFeatures
			(	BuildingType,							FeatureType											)	VALUES

			(	'WON_CL_BUILDING_ARECIBO',				'FEATURE_JUNGLE'									);

		INSERT INTO Building_GreatPersonPoints
			(	BuildingType,								GreatPersonClassType,					PointsPerTurn			)	VALUES

			(	'WON_CL_BUILDING_ARECIBO',					'GREAT_PERSON_CLASS_SCIENTIST',			2						);

		INSERT INTO Building_YieldChanges
			(	BuildingType,								YieldType,					YieldChange				)	VALUES

			(	'WON_CL_BUILDING_ARECIBO',					'YIELD_SCIENCE',			4						);

		INSERT INTO BuildingModifiers
			(	BuildingType,							ModifierId												)	VALUES

			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_FREE_TECHS'									),

			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_TECH_BOOST_PROJECT_EARTH_SATELLITE'			),
			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_TECH_BOOST_PROJECT_MOON_LANDING'				),
			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_TECH_BOOST_PROJECT_MARS_REACTOR_MODULE'		),
			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_TECH_BOOST_PROJECT_MARS_HABITATION_MODULE'		),
			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_TECH_BOOST_PROJECT_MARS_HYDROPONICS_MODULE'	),

			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_CMP_GRASSMOUNTAIN_SCI'							),
			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_CMP_PLAINSMOUNTAIN_SCI'						),
			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_CMP_DESERTMOUNTAIN_SCI'						),
			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_CMP_TUNDRAMOUNTAIN_SCI'						),
			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_CMP_SNOWMOUNTAIN_SCI'							);

		INSERT INTO Modifiers 
			(	ModifierId,												ModifierType,									 				RunOnce,	Permanent,	OwnerRequirementSetId,		OwnerStackLimit,			SubjectStackLimit,				SubjectRequirementSetId							)	VALUES

			(	'ARECIBO_FREE_TECHS',									'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY',						0,			0,			NULL,						NULL,						NULL,							NULL											),

			(	'ARECIBO_TECH_BOOST_PROJECT_EARTH_SATELLITE',			'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',		0,			0,			NULL,						NULL,						NULL,							'ARECIBO_PROJECT_EARTH_SATELLITE'				),
			(	'ARECIBO_TECH_BOOST_PROJECT_MOON_LANDING',				'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',		0,			0,			NULL,						NULL,						NULL,							'ARECIBO_PROJECT_MOON_LANDING'					),
			(	'ARECIBO_TECH_BOOST_PROJECT_MARS_REACTOR_MODULE',		'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',		0,			0,			NULL,						NULL,						NULL,							'ARECIBO_PROJECT_MARS_REACTOR_MODULE'			),
			(	'ARECIBO_TECH_BOOST_PROJECT_MARS_HABITATION_MODULE',	'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',		0,			0,			NULL,						NULL,						NULL,							'ARECIBO_PROJECT_MARS_HABITATION_MODULE'		),
			(	'ARECIBO_TECH_BOOST_PROJECT_MARS_HYDROPONICS_MODULE',	'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',		0,			0,			NULL,						NULL,						NULL,							'ARECIBO_PROJECT_MARS_HYDROPONICS_MODULE'		),

			(	'ARECIBO_CMP_GRASSMOUNTAIN_SCI',						'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',						0,			0,			NULL,						NULL,						NULL,							NULL											),
			(	'ARECIBO_CMP_PLAINSMOUNTAIN_SCI',						'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',						0,			0,			NULL,						NULL,						NULL,							NULL											),
			(	'ARECIBO_CMP_DESERTMOUNTAIN_SCI',						'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',						0,			0,			NULL,						NULL,						NULL,							NULL											),
			(	'ARECIBO_CMP_TUNDRAMOUNTAIN_SCI',						'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',						0,			0,			NULL,						NULL,						NULL,							NULL											),
			(	'ARECIBO_CMP_SNOWMOUNTAIN_SCI',							'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY',						0,			0,			NULL,						NULL,						NULL,							NULL											);

		INSERT INTO ModifierArguments
			(	ModifierId,												Name,						Value								)	VALUES

			(	'ARECIBO_FREE_TECHS',									'Amount',					'1'									),

			(	'ARECIBO_TECH_BOOST_PROJECT_EARTH_SATELLITE',			'Amount',					'1'									),
			(	'ARECIBO_TECH_BOOST_PROJECT_MOON_LANDING',				'Amount',					'1'									),
			(	'ARECIBO_TECH_BOOST_PROJECT_MARS_REACTOR_MODULE',		'Amount',					'1'									),
			(	'ARECIBO_TECH_BOOST_PROJECT_MARS_HABITATION_MODULE',	'Amount',					'1'									),
			(	'ARECIBO_TECH_BOOST_PROJECT_MARS_HYDROPONICS_MODULE',	'Amount',					'1'									),

			(	'ARECIBO_CMP_GRASSMOUNTAIN_SCI',						'Amount',					'1'									),
			(	'ARECIBO_CMP_GRASSMOUNTAIN_SCI',						'Description',				'LOC_ARECIBO_MOUNTAINS_SCIENCE'		),
			(	'ARECIBO_CMP_GRASSMOUNTAIN_SCI',						'DistrictType',				'DISTRICT_CAMPUS'					),
			(	'ARECIBO_CMP_GRASSMOUNTAIN_SCI',						'TerrainType',				'TERRAIN_GRASS_MOUNTAIN'			),
			(	'ARECIBO_CMP_GRASSMOUNTAIN_SCI',						'YieldType',				'YIELD_SCIENCE'						),
			(	'ARECIBO_CMP_PLAINSMOUNTAIN_SCI',						'Amount',					'1'									),
			(	'ARECIBO_CMP_PLAINSMOUNTAIN_SCI',						'Description',				'LOC_ARECIBO_MOUNTAINS_SCIENCE'		),
			(	'ARECIBO_CMP_PLAINSMOUNTAIN_SCI',						'DistrictType',				'DISTRICT_CAMPUS'					),
			(	'ARECIBO_CMP_PLAINSMOUNTAIN_SCI',						'TerrainType',				'TERRAIN_PLAINS_MOUNTAIN'			),
			(	'ARECIBO_CMP_PLAINSMOUNTAIN_SCI',						'YieldType',				'YIELD_SCIENCE'						),
			(	'ARECIBO_CMP_DESERTMOUNTAIN_SCI',						'Amount',					'1'									),
			(	'ARECIBO_CMP_DESERTMOUNTAIN_SCI',						'Description',				'LOC_ARECIBO_MOUNTAINS_SCIENCE'		),
			(	'ARECIBO_CMP_DESERTMOUNTAIN_SCI',						'DistrictType',				'DISTRICT_CAMPUS'					),
			(	'ARECIBO_CMP_DESERTMOUNTAIN_SCI',						'TerrainType',				'TERRAIN_DESERT_MOUNTAIN'			),
			(	'ARECIBO_CMP_DESERTMOUNTAIN_SCI',						'YieldType',				'YIELD_SCIENCE'						),
			(	'ARECIBO_CMP_TUNDRAMOUNTAIN_SCI',						'Amount',					'1'									),
			(	'ARECIBO_CMP_TUNDRAMOUNTAIN_SCI',						'Description',				'LOC_ARECIBO_MOUNTAINS_SCIENCE'		),
			(	'ARECIBO_CMP_TUNDRAMOUNTAIN_SCI',						'DistrictType',				'DISTRICT_CAMPUS'					),
			(	'ARECIBO_CMP_TUNDRAMOUNTAIN_SCI',						'TerrainType',				'TERRAIN_TUNDRA_MOUNTAIN'			),
			(	'ARECIBO_CMP_TUNDRAMOUNTAIN_SCI',						'YieldType',				'YIELD_SCIENCE'						),
			(	'ARECIBO_CMP_SNOWMOUNTAIN_SCI',							'Amount',					'1'									),
			(	'ARECIBO_CMP_SNOWMOUNTAIN_SCI',							'Description',				'LOC_ARECIBO_MOUNTAINS_SCIENCE'		),
			(	'ARECIBO_CMP_SNOWMOUNTAIN_SCI',							'DistrictType',				'DISTRICT_CAMPUS'					),
			(	'ARECIBO_CMP_SNOWMOUNTAIN_SCI',							'TerrainType',				'TERRAIN_SNOW_MOUNTAIN'				),
			(	'ARECIBO_CMP_SNOWMOUNTAIN_SCI',							'YieldType',				'YIELD_SCIENCE'						);

		INSERT INTO RequirementSets 
			(	RequirementSetId,								RequirementSetType			)	VALUES

			(	'ARECIBO_PROJECT_EARTH_SATELLITE',				'REQUIREMENTSET_TEST_ALL'	),
			(	'ARECIBO_PROJECT_MOON_LANDING',					'REQUIREMENTSET_TEST_ALL'	),
			(	'ARECIBO_PROJECT_MARS_REACTOR_MODULE',			'REQUIREMENTSET_TEST_ALL'	),
			(	'ARECIBO_PROJECT_MARS_HABITATION_MODULE',		'REQUIREMENTSET_TEST_ALL'	),
			(	'ARECIBO_PROJECT_MARS_HYDROPONICS_MODULE',		'REQUIREMENTSET_TEST_ALL'	);

		INSERT INTO RequirementSetRequirements
			(	RequirementSetId,									RequirementId									)	VALUES

			(	'ARECIBO_PROJECT_EARTH_SATELLITE',					'TECHNOLOGY_VICTORY_EARTH_SATELLITE'			),
			(	'ARECIBO_PROJECT_MOON_LANDING',						'TECHNOLOGY_VICTORY_MOON_LANDING'				),
			(	'ARECIBO_PROJECT_MARS_REACTOR_MODULE',				'TECHNOLOGY_VICTORY_MARS_REACTOR_MODULE'		),
			(	'ARECIBO_PROJECT_MARS_HABITATION_MODULE',			'TECHNOLOGY_VICTORY_MARS_HABITATION_MODULE'		),
			(	'ARECIBO_PROJECT_MARS_HYDROPONICS_MODULE',			'TECHNOLOGY_VICTORY_MARS_HYDROPONICS_MODULE'	);

		INSERT INTO AiFavoredItems
			(	ListType,												Item,						Favored								)

		SELECT	'GandhiWonders',										'WON_CL_BUILDING_ARECIBO',	'1'

		WHERE EXISTS (SELECT 1 FROM AiFavoredItems WHERE ListType = 'GandhiWonders');

		INSERT INTO AiFavoredItems
			(	ListType,												Item,						Favored								)

		SELECT	'MvembaWonders',										'WON_CL_BUILDING_ARECIBO',	'1'

		WHERE EXISTS (SELECT 1 FROM AiFavoredItems WHERE ListType = 'MvembaWonders');

		INSERT INTO AiFavoredItems
			(	ListType,												Item,						Favored								)

		SELECT	'SeondeokWonders',										'WON_CL_BUILDING_ARECIBO',	'1'

		WHERE EXISTS (SELECT 1 FROM AiFavoredItems WHERE ListType = 'SeondeokWonders');

		INSERT INTO AiFavoredItems
			(	ListType,												Item,						Favored								)

		SELECT	'KristinaWonders',										'WON_CL_BUILDING_ARECIBO',	'1'

		WHERE EXISTS (SELECT 1 FROM AiFavoredItems WHERE ListType = 'KristinaWonders');				
