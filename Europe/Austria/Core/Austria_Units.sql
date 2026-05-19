
--------------------------------------------------------------
	
INSERT INTO Types
		(Type,									Kind			)
VALUES	('UNIT_MER_GRENZER',							'KIND_UNIT'		);

INSERT INTO Tags
		(Tag,									Vocabulary		)
VALUES	('CLASS_MER_GRENZER',					'ABILITY_CLASS'	);

INSERT INTO TypeTags
		(Type,									Tag)
SELECT 	'UNIT_MER_GRENZER',							Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_RANGER';

INSERT INTO TypeTags
		(Type,									Tag						)
VALUES	('UNIT_MER_GRENZER',					'CLASS_MER_GRENZER'	);

INSERT INTO UnitAiInfos
		(UnitType,								AiType)
SELECT 	'UNIT_MER_GRENZER',							AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_RANGER';

INSERT INTO UnitAiInfos
		(UnitType,								AiType		   )
VALUES 	('UNIT_MER_GRENZER',					'UNITAI_BUILD' );

INSERT INTO UnitReplaces
		(CivUniqueUnitType,						ReplacesUnitType)
VALUES	('UNIT_MER_GRENZER',					'UNIT_RANGER');
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		InitialLevel,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		PseudoYieldType,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_MER_GRENZER',	-- UnitType
		'LOC_UNIT_MER_GRENZER_NAME',	-- Name
		'LOC_UNIT_MER_GRENZER_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_UNIT_MER_GRENZER', -- TraitType
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		50,
		65,
		Range,
		BaseSightRange,
		InitialLevel,
		1,
		Domain,
		FormationClass,
		PromotionClass,
		PseudoYieldType,
		MandatoryObsoleteTech,
		PrereqTech, -- PrereqTech
		PrereqCivic -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_RANGER';
		
INSERT INTO UnitUpgrades
		(Unit,			UpgradeUnit)
SELECT 	'UNIT_MER_GRENZER',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_RANGER';

-----------------------------------------------
-- Types
-------------------------------------	

INSERT INTO Types	
		(Type,									Kind)
VALUES	('ABILITY_MER_GRENZER_NEAR_TERRITORY',		'KIND_ABILITY');		
	
-----------------------------------------------
-- TypeTags
-------------------------------------	

INSERT INTO TypeTags	
		(Type,									Tag)
VALUES	('ABILITY_MER_GRENZER_NEAR_TERRITORY',		'CLASS_MER_GRENZER');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO	UnitAbilities
		(UnitAbilityType,								Name,											Description											)
VALUES	('ABILITY_MER_GRENZER_NEAR_TERRITORY',			'LOC_UNIT_MER_GRENZER_NAME',				'LOC_ABILITY_MER_GRENZER_NEAR_TERRITORY_DESC'	);


INSERT INTO	UnitAbilityModifiers
		(UnitAbilityType,									ModifierId									)
VALUES	('ABILITY_MER_GRENZER_NEAR_TERRITORY',				'MODIFIER_MER_GRENZER_NEAR_TERRITORY'		);
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,													SubjectRequirementSetId				)
VALUES	('MODIFIER_MER_GRENZER_NEAR_TERRITORY',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',						'GRENZER_TERRITORY_NEARBY_REQSET'	);
-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,														Name,								Value		)
VALUES	('MODIFIER_MER_GRENZER_NEAR_TERRITORY',							'Amount',							5		);
--------------------------------------------------------------------------------------------------------------------------
-- ModifierStrings
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,											Context,									Text													)
VALUES	('MODIFIER_MER_GRENZER_NEAR_TERRITORY',				'Preview',									'LOC_MODIFIER_MER_GRENZER_NEAR_TERRITORY_DESC'			);		

--------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
--------------------------------------------------------------------------------------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('GRENZER_TERRITORY_NEARBY_REQSET',							'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,											RequirementId)
VALUES	('GRENZER_TERRITORY_NEARBY_REQSET',							'GRENZER_TERRITORY_NEARBY_REQUIREMENT');

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,										RequirementType,									Inverse		)
VALUES	('GRENZER_TERRITORY_NEARBY_REQUIREMENT',			'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_TERRITORY',		0			);
-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,												Name,							Value				)
VALUES	('GRENZER_TERRITORY_NEARBY_REQUIREMENT',					'MaxRange',						3	),
		('GRENZER_TERRITORY_NEARBY_REQUIREMENT',					'MinRange',						0	);		