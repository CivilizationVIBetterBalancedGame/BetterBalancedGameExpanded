
--------------------------------------------------------------
	
INSERT INTO Types
		(Type,									Kind			)
VALUES	('UNIT_MER_GADRAUHT',							'KIND_UNIT'		);

INSERT INTO Tags
		(Tag,									Vocabulary		)
VALUES	('CLASS_MER_GADRAUHT',					'ABILITY_CLASS'	);

INSERT INTO TypeTags
		(Type,									Tag)
SELECT 	'UNIT_MER_GADRAUHT',							Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_PIKEMAN';

INSERT INTO TypeTags
		(Type,									Tag						)
VALUES	('UNIT_MER_GADRAUHT',					'CLASS_MER_GADRAUHT'	);

INSERT INTO UnitAiInfos
		(UnitType,								AiType)
SELECT 	'UNIT_MER_GADRAUHT',							AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_PIKEMAN';

INSERT INTO UnitAiInfos
		(UnitType,								AiType		   )
VALUES 	('UNIT_MER_GADRAUHT',					'UNITAI_BUILD' );

INSERT INTO UnitReplaces
		(CivUniqueUnitType,						ReplacesUnitType)
VALUES	('UNIT_MER_GADRAUHT',					'UNIT_PIKEMAN');
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		PopulationCost,
		PrereqPopulation,
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
SELECT	'UNIT_MER_GADRAUHT',	-- UnitType
		'LOC_UNIT_MER_GADRAUHT_NAME',	-- Name
		'LOC_UNIT_MER_GADRAUHT_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_UNIT_MER_GADRAUHT', -- TraitType
		1,
		2,
		BaseMoves,
		100, -- impi is 125, base is 200 
		Maintenance,
		PurchaseYield,
		AdvisorType,
		48, -- impi is 45, base is 45
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
		PrereqTech, -- PrereqTech
		PrereqCivic -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_PIKEMAN';
		
INSERT INTO UnitUpgrades
		(Unit,			UpgradeUnit)
SELECT 	'UNIT_MER_GADRAUHT',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_PIKEMAN';
------------------------------
-----------------------------------------------
-- Types
-------------------------------------	

INSERT INTO Types	
		(Type,									Kind)
VALUES	('ABILITY_MER_GADRAUHT_CULTURE_VICTORY',		'KIND_ABILITY');	
	
-----------------------------------------------
-- TypeTags
-------------------------------------	

INSERT INTO TypeTags	
		(Type,									Tag)
VALUES	('ABILITY_MER_GADRAUHT_CULTURE_VICTORY',		'CLASS_MER_GADRAUHT');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO	UnitAbilities
		(UnitAbilityType,								Name,													Description											)
VALUES	('ABILITY_MER_GADRAUHT_CULTURE_VICTORY',		'LOC_MODIFIER_MER_GADRAUHT_CULTURE_VICTORY_NAME',		'LOC_MODIFIER_MER_GADRAUHT_CULTURE_VICTORY_DESC'	);

INSERT INTO	UnitAbilityModifiers
		(UnitAbilityType,									ModifierId									)
VALUES	('ABILITY_MER_GADRAUHT_CULTURE_VICTORY',			'ABILITY_MER_GADRAUHT_CULTURE_VICTORY'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,										SubjectRequirementSetId				)
VALUES	('ABILITY_MER_GADRAUHT_CULTURE_VICTORY',			'MODIFIER_UNIT_ADJUST_POST_COMBAT_YIELD',			null	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,															Name,							Value					)
VALUES	('ABILITY_MER_GADRAUHT_CULTURE_VICTORY',								'PercentDefeatedStrength',		50						),
		('ABILITY_MER_GADRAUHT_CULTURE_VICTORY',								'YieldType',					'YIELD_CULTURE'			);
--------------------------------------------------------------
--------------------------------------------------------------	
INSERT INTO Types
		(Type,									Kind			)
VALUES	('UNIT_MER_MILITOND',							'KIND_UNIT'		);

INSERT INTO Tags
		(Tag,									Vocabulary		)
VALUES	('CLASS_MER_MILITOND',					'ABILITY_CLASS'	);

INSERT INTO TypeTags
		(Type,									Tag)
SELECT 	'UNIT_MER_MILITOND',							Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_SWORDSMAN';

INSERT INTO TypeTags
		(Type,									Tag						)
VALUES	('UNIT_MER_MILITOND',					'CLASS_MER_MILITOND'	);

INSERT INTO UnitAiInfos
		(UnitType,								AiType)
SELECT 	'UNIT_MER_MILITOND',							AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_SWORDSMAN';

INSERT INTO UnitAiInfos
		(UnitType,								AiType		   )
VALUES 	('UNIT_MER_MILITOND',					'UNITAI_BUILD' );

INSERT INTO UnitReplaces
		(CivUniqueUnitType,						ReplacesUnitType)
VALUES	('UNIT_MER_MILITOND',					'UNIT_SWORDSMAN');
	
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
SELECT	'UNIT_MER_MILITOND',	-- UnitType
		'LOC_UNIT_MER_MILITOND_NAME',	-- Name
		'LOC_UNIT_MER_MILITOND_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_UNIT_MER_MILITOND', -- TraitType
		BaseMoves,
		Cost,
		Maintenance,
		PurchaseYield,
		AdvisorType,
		44,
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
		PrereqTech, -- PrereqTech
		PrereqCivic -- PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_SWORDSMAN';
		
INSERT INTO UnitUpgrades
		(Unit,			UpgradeUnit)
SELECT 	'UNIT_MER_MILITOND',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_SWORDSMAN';
-----------------------------------------------
-- Types
-------------------------------------	

INSERT INTO Types	
		(Type,									Kind)
VALUES	('ABILITY_MER_MILITOND_PROMOTION',		'KIND_ABILITY'),
		('ABILITY_MER_MILITOND_DISTRICT',		'KIND_ABILITY');
	
-----------------------------------------------
-- TypeTags
-------------------------------------	

INSERT INTO TypeTags	
		(Type,									Tag)
VALUES	('ABILITY_MER_MILITOND_PROMOTION',		'CLASS_MER_MILITOND'),
		('ABILITY_MER_MILITOND_DISTRICT',		'CLASS_MER_MILITOND');

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO	UnitAbilities
		(UnitAbilityType,								Name,													Description											)
VALUES	('ABILITY_MER_MILITOND_PROMOTION',		'LOC_MODIFIER_MER_MILITOND_PROMOTION_NAME',		'LOC_MODIFIER_MER_MILITOND_PROMOTION_DESC'	),
		('ABILITY_MER_MILITOND_DISTRICT',		'LOC_MODIFIER_MER_MILITOND_DISTRICT_NAME',		'LOC_MODIFIER_MER_MILITOND_DISTRICT_DESC'	);

INSERT INTO	UnitAbilityModifiers
		(UnitAbilityType,									ModifierId									)
VALUES	('ABILITY_MER_MILITOND_PROMOTION',			'CORBACI_FREE_PROMOTION'		),
		('ABILITY_MER_MILITOND_DISTRICT',			'MER_MILITOND_DISTRICT'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,						ModifierType,										SubjectRequirementSetId				)
VALUES	('MER_MILITOND_DISTRICT',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',			'URBAN_WARFARE_REQUIREMENTS'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value					)
VALUES	('MER_MILITOND_DISTRICT',								'Amount',		10						);

--------------------------------------------------------------------------------------------------------------------------
-- ModifierStrings
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,										Context,										Text													)
VALUES	('MER_MILITOND_DISTRICT',				'Preview',										'LOC_MODIFIER_MER_MILITOND_DISTRICT_DESC'			);		