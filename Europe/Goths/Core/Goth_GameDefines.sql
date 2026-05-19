--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage,						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_MER_THEODORIC',	'LEADER_SALADIN_BACKGROUND',				'LEADER_MER_THEODORIC_NEUTRAL',					1);	

--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,												Kind			    )
VALUES	('LEADER_MER_THEODORIC',							'KIND_LEADER'		),
		('TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE',		'KIND_TRAIT'		),	
		('TRAIT_CIVILIZATION_BUILDING_MER_HLAIW',			'KIND_TRAIT'		),	
		('TRAIT_CIVILIZATION_UNIT_MER_GADRAUHT',			'KIND_TRAIT'		),	
		('TRAIT_CIVILIZATION_UNIT_MER_MILITOND',			'KIND_TRAIT'		),	
		('TRAIT_CIVILIZATION_MER_GOTHIC_MIGRATION',					'KIND_TRAIT'		),	
		('CIVILIZATION_MER_GOTHS',							'KIND_CIVILIZATION' );
		
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,					Description)
VALUES	('TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE',			'LOC_TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE',		'LOC_TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE_DESCRIPTION'),
		('TRAIT_CIVILIZATION_UNIT_MER_MILITOND',				'LOC_TRAIT_CIVILIZATION_UNIT_MER_MILITOND_NAME',		'LOC_TRAIT_CIVILIZATION_UNIT_MER_MILITOND_DESCRIPTION'),
		('TRAIT_CIVILIZATION_UNIT_MER_GADRAUHT',				'LOC_TRAIT_CIVILIZATION_UNIT_MER_GADRAUHT_NAME',		'LOC_TRAIT_CIVILIZATION_UNIT_MER_GADRAUHT_DESCRIPTION'),
		('TRAIT_CIVILIZATION_MER_GOTHIC_MIGRATION',						'LOC_TRAIT_CIVILIZATION_MER_GOTHIC_MIGRATION_NAME',				'LOC_TRAIT_CIVILIZATION_MER_GOTHIC_MIGRATION_DESCRIPTION'),
		('TRAIT_CIVILIZATION_BUILDING_MER_HLAIW',				'LOC_TRAIT_CIVILIZATION_BUILDING_MER_HLAIW_NAME',		'LOC_TRAIT_CIVILIZATION_BUILDING_MER_HLAIW_DESCRIPTION');		
-------------------------------------
-- Civilizations
-------------------------------------	
INSERT INTO Civilizations	
		(CivilizationType,			Name,										Description,									Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth)
VALUES	('CIVILIZATION_MER_GOTHS',	'LOC_CIVILIZATION_MER_GOTHS_NAME',			'LOC_CIVILIZATION_MER_GOTHS_DESCRIPTION',		'LOC_CIVILIZATION_MER_GOTHS_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	'10'     			);	

----------------------------------------------------------------------------------------------------------------------------			
-- CityNames			
----------------------------------------------------------------------------------------------------------------------------		
INSERT INTO CityNames	
		(CivilizationType,			CityName)	
VALUES	('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_1'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_2'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_3'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_4'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_5'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_6'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_7'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_8'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_9'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_10'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_11'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_12'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_13'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_14'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_15'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_16'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_17'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_18'),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_19'),	
		('CIVILIZATION_MER_GOTHS',	'LOC_CITY_NAME_MER_GOTHS_20');
----------------------------------------------------------------------------------------------------------------------------
-- CivilizationCitizenNames
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationCitizenNames	
		(CivilizationType,			CitizenName,								Female,		Modern)
VALUES	('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_1',				0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_2',				0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_3',				0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_4',				0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_5',				0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_6',				0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_7',				0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_8',				0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_9',				0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MALE_10',			0,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_1',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_2',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_3',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_4',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_5',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_6',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_7',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_8',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_9',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_FEMALE_10',			1,			0),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_1',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_2',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_3',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_4',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_5',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_6',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_7',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_8',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_9',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_MALE_10',		0,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_1',	1,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_2',	1,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_3',	1,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_4',	1,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_5',	1,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_6',	1,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_7',	1,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_8',	1,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_9',	1,			1),
		('CIVILIZATION_MER_GOTHS',	'LOC_CITIZEN_MER_GOTHS_MODERN_FEMALE_10',	1,			1);	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,												InheritFrom,		SceneLayers)
VALUES	('LEADER_MER_THEODORIC',		'LOC_LEADER_MER_THEODORIC_NAME',					'LEADER_DEFAULT',	4);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,					Quote)
VALUES	('LEADER_MER_THEODORIC',			'LOC_PEDIA_LEADERS_PAGE_LEADER_MER_THEODORIC_QUOTE');	
-------------------------------------
-- HistoricalAgendas
-------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_MER_THEODORIC',			'AGENDA_MER_ROMAN_GOTH');
-------------------------------------
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,					TraitType)
VALUES	('LEADER_MER_THEODORIC',		'TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE'),
		('LEADER_MER_THEODORIC',		'TRAIT_CIVILIZATION_UNIT_MER_MILITOND');
-------------------------------------
-- CivilizationTraits
-------------------------------------	
INSERT INTO CivilizationTraits	
		(CivilizationType,					TraitType)
VALUES	('CIVILIZATION_MER_GOTHS',		'TRAIT_CIVILIZATION_MER_GOTHIC_MIGRATION'),
		('CIVILIZATION_MER_GOTHS',		'TRAIT_CIVILIZATION_UNIT_MER_GADRAUHT'),
		('CIVILIZATION_MER_GOTHS',		'TRAIT_CIVILIZATION_BUILDING_MER_HLAIW');
-------------------------------------
-- StartBias
-------------------------------------	
INSERT INTO StartBiasTerrains
		(CivilizationType,						TerrainType,							Tier)
VALUES	('CIVILIZATION_MER_GOTHS',				'TERRAIN_GRASS_HILLS',					'2'	);
--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,													ModifierId										)
VALUES	('TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE',		'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_1_ATTACH'	),
		('TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE',		'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_2_ATTACH'	),
		('TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE',		'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_3_ATTACH'	),
		('TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE',		'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_4_ATTACH'	),
		('TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE',		'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_5_ATTACH'	),
		('TRAIT_LEADER_MER_THEODORIC_GOTHORUM_ROMANORUMQUE',		'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_6_ATTACH'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,												ModifierType,													RunOnce,        Permanent,	   SubjectRequirementSetId						)
VALUES	('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_1_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',				0,				1,				null),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_1',					'MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_PRODUCTION_MODIFIER',		0,				1,				'CITY_HAS_0_SPECIALTY_DISTRICTS_REQUIREMENTS'),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_2_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',				0,				1,				null),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_2',					'MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_PRODUCTION_MODIFIER',		0,				1,				'CITY_HAS_1_SPECIALTY_DISTRICT'),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_3_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',				0,				1,				null),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_3',					'MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_PRODUCTION_MODIFIER',		0,				1,				'CITY_HAS_2_SPECIALTY_DISTRICTS_REQUIREMENTS'),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_4_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',				0,				1,				null),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_4',					'MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_PRODUCTION_MODIFIER',		0,				1,				'CITY_HAS_3_SPECIALTY_DISTRICTS_REQUIREMENTS'),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_5_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',				0,				1,				null),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_5',					'MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_PRODUCTION_MODIFIER',		0,				1,				'MER_CITY_HAS_4_SPECIALTY_DISTRICTS_REQUIREMENTS'),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_6_ATTACH',			'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER',				0,				1,				null),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_6',					'MODIFIER_SINGLE_CITY_ADJUST_DISTRICT_PRODUCTION_MODIFIER',		0,				1,				'MER_CITY_HAS_5_SPECIALTY_DISTRICTS_REQUIREMENTS');
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,						Value									)
VALUES	('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_1_ATTACH',		'ModifierId',				'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_1'		),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_1',				'Amount',					50		),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_2_ATTACH',		'ModifierId',				'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_2'		),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_2',				'Amount',					-10		),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_3_ATTACH',		'ModifierId',				'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_3'		),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_3',				'Amount',					-10		),			
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_4_ATTACH',		'ModifierId',				'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_4'		),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_4',				'Amount',					-10		),		
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_5_ATTACH',		'ModifierId',				'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_5'		),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_5',				'Amount',					-10		),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_6_ATTACH',		'ModifierId',				'MODIFIER_MER_THEODORIC_DISTRICT_BONUS_6'		),
		('MODIFIER_MER_THEODORIC_DISTRICT_BONUS_6',				'Amount',					-10		);
--------------------------------------------------------------------------------------------------------------------------
-- Requirements
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Requirements 			
		(RequirementId,												RequirementType,										Inverse )
VALUES	('MER_CITY_HAS_4_SPECIALTY_DISTRICTS',						'REQUIREMENT_CITY_HAS_X_SPECIALTY_DISTRICTS',			0	),
		('MER_CITY_HAS_5_SPECIALTY_DISTRICTS',						'REQUIREMENT_CITY_HAS_X_SPECIALTY_DISTRICTS',			0	);
-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType				)
VALUES	('MER_CITY_HAS_4_SPECIALTY_DISTRICTS_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL'		),
		('MER_CITY_HAS_5_SPECIALTY_DISTRICTS_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL'		);
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('MER_CITY_HAS_4_SPECIALTY_DISTRICTS_REQUIREMENTS',			'MER_CITY_HAS_4_SPECIALTY_DISTRICTS'),
		('MER_CITY_HAS_5_SPECIALTY_DISTRICTS_REQUIREMENTS',			'MER_CITY_HAS_5_SPECIALTY_DISTRICTS');	
	
--------------------------------------------------------------------------------------------------------------------------
-- RequirementArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
            (RequirementId,										  Name,					Value)
VALUES      ('MER_CITY_HAS_4_SPECIALTY_DISTRICTS',				 'Amount',				4),
			('MER_CITY_HAS_4_SPECIALTY_DISTRICTS',				 'MustBeFunctioning',	1),
			('MER_CITY_HAS_5_SPECIALTY_DISTRICTS',				 'Amount',				5),
			('MER_CITY_HAS_5_SPECIALTY_DISTRICTS',				 'MustBeFunctioning',	1);	
--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_MER_ROMAN_GOTH',		'KIND_TRAIT');			
-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,					Name,									Description)
VALUES	('AGENDA_MER_ROMAN_GOTH',			'LOC_AGENDA_MER_ROMAN_GOTH_NAME',			'LOC_AGENDA_MER_ROMAN_GOTH_DESCRIPTION');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,					Description)
VALUES	('TRAIT_AGENDA_MER_ROMAN_GOTH',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');	
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_MER_ROMAN_GOTH',			'TRAIT_AGENDA_MER_ROMAN_GOTH');	
-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_MER_ROMAN_GOTH',		'AGENDA_MER_ROMAN_GOTH_VERY_ROMAN'),
		('TRAIT_AGENDA_MER_ROMAN_GOTH',		'AGENDA_MER_ROMAN_GOTH_NOT_VERY_ROMAN');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,									ModifierType,										SubjectRequirementSetId)
VALUES	('AGENDA_MER_ROMAN_GOTH_VERY_ROMAN',			'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'MER_ROMAN_GOTH_VERY_ROMAN'),
		('AGENDA_MER_ROMAN_GOTH_NOT_VERY_ROMAN',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		'MER_ROMAN_GOTH_NOT_VERY_ROMAN');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value,													Extra,				Type)
VALUES	('AGENDA_MER_ROMAN_GOTH_VERY_ROMAN',		'InitialValue',					7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ROMAN_GOTH_VERY_ROMAN',		'StatementKey',					'LOC_DIPLO_KUDOS_LEADER_MER_THEODORIC_AGENDA_VERY_ROMAN',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ROMAN_GOTH_VERY_ROMAN',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_LEADER_MER_THEODORIC_AGENDA_VERY_ROMAN',		null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ROMAN_GOTH_NOT_VERY_ROMAN',		'InitialValue',					-7,														null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ROMAN_GOTH_NOT_VERY_ROMAN',		'StatementKey',					'LOC_DIPLO_WARNING_LEADER_MER_THEODORIC_AGENDA_NOT_VERY_ROMAN',	null,				'ARGTYPE_IDENTITY'),
		('AGENDA_MER_ROMAN_GOTH_NOT_VERY_ROMAN',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_LEADER_MER_THEODORIC_AGENDA_NOT_VERY_ROMAN',		null,				'ARGTYPE_IDENTITY');
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('MER_ROMAN_GOTH_VERY_ROMAN',			'REQUIRES_HAS_HIGH_STANDING_ARMY'),
		('MER_ROMAN_GOTH_VERY_ROMAN',			'REQUIRES_LEADS_DISTRICTS'),
		('MER_ROMAN_GOTH_VERY_ROMAN',			'REQUIRES_MET_10_TURNS_AGO'),
		('MER_ROMAN_GOTH_VERY_ROMAN',			'REQUIRES_MAJOR_CIV_OPPONENT'),
		('MER_ROMAN_GOTH_NOT_VERY_ROMAN',		'REQUIRES_LAGS_DISTRICTS'),
		('MER_ROMAN_GOTH_NOT_VERY_ROMAN',		'REQUIRES_HAS_LOW_STANDING_ARMY'),
		('MER_ROMAN_GOTH_NOT_VERY_ROMAN',		'REQUIRES_MET_10_TURNS_AGO'),
		('MER_ROMAN_GOTH_NOT_VERY_ROMAN',		'REQUIRES_MAJOR_CIV_OPPONENT');

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('MER_ROMAN_GOTH_VERY_ROMAN',	'REQUIREMENTSET_TEST_ALL'	),
		('MER_ROMAN_GOTH_NOT_VERY_ROMAN',	'REQUIREMENTSET_TEST_ALL'	);

-------------------------------------		
-- ModifierStrings		
-------------------------------------			
INSERT INTO ModifierStrings			
		(ModifierId,											Context,	Text)
VALUES	('AGENDA_MER_ROMAN_GOTH_VERY_ROMAN',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_MER_ROMAN_GOTH_NOT_VERY_ROMAN',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');	
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- CivilizationLeaders
-------------------------------------	
INSERT INTO CivilizationLeaders 
        (CivilizationType,			LeaderType,		CapitalName)
VALUES  ('CIVILIZATION_MER_GOTHS',	'LEADER_MER_THEODORIC',	'LOC_CITY_NAME_RAVENNA');
--==========================================================================================================================
--==========================================================================================================================
