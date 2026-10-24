--========================================================================================================================
-- BUILDINGS
--========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,							Kind)
VALUES	('BUILDING_MER_COFFEE_HOUSE',		'KIND_BUILDING');
--------------------------------------------------------------------------------------------------------------------------
-- Buildings
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Buildings
	(
		BuildingType,
		Name,
		Description,

		TraitType,
		PrereqTech,
		PrereqCivic,
		PrereqDistrict,

		Cost,
		PurchaseYield,
		Maintenance,
		Entertainment,
		RegionalRange,

		CitizenSlots
	)
	SELECT
		'BUILDING_MER_COFFEE_HOUSE',
		'LOC_BUILDING_MER_COFFEE_HOUSE_NAME',
		'LOC_BUILDING_MER_COFFEE_HOUSE_DESCRIPTION',

		'TRAIT_CIVILIZATION_BUILDING_MER_COFFEE_HOUSE',
		NULL,
		'CIVIC_THE_ENLIGHTENMENT',
		PrereqDistrict,

		290,
		PurchaseYield,
		Maintenance,
		2,
		RegionalRange,

		CitizenSlots
	FROM Buildings WHERE BuildingType = 'BUILDING_ZOO';
-----------------------------------------------------------------------------------
-- BuildingReplaces
-----------------------------------------------------------------------------------
INSERT INTO BuildingReplaces
			(CivUniqueBuildingType,				ReplacesBuildingType)
VALUES		('BUILDING_MER_COFFEE_HOUSE',			'BUILDING_ZOO');
-----------------------------------------------------------------------------------
-- BuildingPrereqs
-----------------------------------------------------------------------------------
INSERT INTO BuildingPrereqs
			(Building,					PrereqBuilding)
SELECT		'BUILDING_MER_COFFEE_HOUSE',		PrereqBuilding
FROM BuildingPrereqs WHERE Building = 'BUILDING_ZOO';

INSERT INTO BuildingPrereqs
			(Building,					PrereqBuilding)
SELECT		Building,					'BUILDING_MER_COFFEE_HOUSE'
FROM BuildingPrereqs WHERE PrereqBuilding = 'BUILDING_ZOO';
-----------------------------------------------------------------------------------
-- Unit_BuildingPrereqs
-----------------------------------------------------------------------------------
INSERT INTO Unit_BuildingPrereqs
			(Unit,	PrereqBuilding)
SELECT		Unit,	'BUILDING_MER_COFFEE_HOUSE'
FROM Unit_BuildingPrereqs WHERE PrereqBuilding = 'BUILDING_ZOO';
-----------------------------------------------------------------------------------
-- Building_GreatWorks
-----------------------------------------------------------------------------------
INSERT INTO Building_GreatWorks
		(
			BuildingType,
			GreatWorkSlotType,
			NumSlots,

			NonUniquePersonYield,
			NonUniquePersonTourism,
			ThemingUniquePerson,
			ThemingYieldMultiplier,
			ThemingTourismMultiplier,
			ThemingBonusDescription

		)
SELECT
			'BUILDING_MER_COFFEE_HOUSE',
			'GREATWORKSLOT_PALACE',
			3,

			NonUniquePersonYield,
			NonUniquePersonTourism,
			1,
			100,
			100,
			'LOC_BUILDING_THEMINGBONUS_COFFEEHOUSE'
FROM Building_GreatWorks WHERE BuildingType = 'BUILDING_PALACE';
-----------------------------------------------------------------------------------
-- BuildingModifiers
-----------------------------------------------------------------------------------
INSERT INTO BuildingModifiers
			(BuildingType,						ModifierId)
VALUES		('BUILDING_MER_COFFEE_HOUSE',		'COFFEE_HOUSE_DISTRICT_SCIENCE'),
			('BUILDING_MER_COFFEE_HOUSE',		'COFFEE_HOUSE_DISTRICT_CULTURE');

-----------------------------------------------
-- Types
-----------------------------------------------
INSERT INTO	Types
		(Type,											Kind			)
VALUES	('MODTYPE_COFFEE_HOUSE_DISTRICT_SCIENCE',		'KIND_MODIFIER'	);
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,											CollectionType,						EffectType							)
VALUES	('MODTYPE_COFFEE_HOUSE_DISTRICT_SCIENCE',		'COLLECTION_CITY_DISTRICTS',	'EFFECT_ADJUST_DISTRICT_YIELD_CHANGE'			);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,											RunOnce,		Permanent,				SubjectRequirementSetId						)
VALUES	('COFFEE_HOUSE_DISTRICT_SCIENCE',					'MODTYPE_COFFEE_HOUSE_DISTRICT_SCIENCE',			0,				0,						null			),
		('COFFEE_HOUSE_DISTRICT_CULTURE',					'MODTYPE_COFFEE_HOUSE_DISTRICT_SCIENCE',			0,				0,						null			);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,												Name,							Value	)
VALUES	('COFFEE_HOUSE_DISTRICT_SCIENCE',					'YieldType',					'YIELD_SCIENCE'		),
		('COFFEE_HOUSE_DISTRICT_SCIENCE',					'Amount',						1		),
		('COFFEE_HOUSE_DISTRICT_CULTURE',					'YieldType',					'YIELD_CULTURE'		),
		('COFFEE_HOUSE_DISTRICT_CULTURE',					'Amount',						1		);
--========================================================================================================================
--========================================================================================================================