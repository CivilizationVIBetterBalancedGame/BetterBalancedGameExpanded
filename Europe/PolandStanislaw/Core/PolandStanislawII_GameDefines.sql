--==========================================================================================================================
-- UNITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,					Kind)
VALUES	('UNIT_JFD_UHLAN',		'KIND_UNIT');		
--------------------------------------------------------------------------------------------------------------------------
-- Units
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Units	
		(UnitType,			BaseMoves, 	 Cost, StrategicResource, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name,						Description,						MandatoryObsoleteTech, 	PurchaseYield, PromotionClass, Maintenance, Combat, PrereqTech, 			TraitType)
SELECT  'UNIT_JFD_UHLAN',	BaseMoves+1, Cost, StrategicResource, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, 'LOC_UNIT_JFD_UHLAN_NAME',	'LOC_UNIT_JFD_UHLAN_DESCRIPTION',	MandatoryObsoleteTech, 	PurchaseYield, PromotionClass, Maintenance, Combat, 'TECH_METAL_CASTING',   'TRAIT_LEADER_UNIT_JFD_UHLAN'		
FROM Units WHERE UnitType = 'UNIT_CAVALRY';
--------------------------------------------------------------------------------------------------------------------------
-- UnitUpgrades
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO UnitUpgrades	
		(Unit,				UpgradeUnit)
SELECT  'UNIT_JFD_UHLAN',	UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_CAVALRY'; 
--------------------------------------------------------------------------------------------------------------------------
-- Units_XP2
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Units_XP2	
		(UnitType,			ResourceCost,   ResourceMaintenanceType)
SELECT  'UNIT_JFD_UHLAN',	ResourceCost/2, ResourceMaintenanceType
FROM Units_XP2 WHERE UnitType = 'UNIT_CAVALRY'; 
--------------------------------------------------------------------------------------------------------------------------
-- UnitReplaces
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO UnitReplaces	
		(CivUniqueUnitType,	ReplacesUnitType)
VALUES	('UNIT_JFD_UHLAN',	'UNIT_CAVALRY');	
--------------------------------------------------------------------------------------------------------------------------
-- UnitAIInfos
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO UnitAIInfos	
		(UnitType,			AiType)
SELECT  'UNIT_JFD_UHLAN',	AiType
FROM UnitAIInfos WHERE UnitType = 'UNIT_CAVALRY'; 
--------------------------------------------------------------------------------------------------------------------------
-- CivilizationTraits
--------------------------------------------------------------------------------------------------------------------------	
DELETE FROM CivilizationTraits WHERE TraitType = 'TRAIT_CIVILIZATION_UNIT_UHLAN';	
--------------------------------------------------------------------------------------------------------------------------
-- Tags
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Tags	
		(Tag,				Vocabulary)
VALUES	('CLASS_JFD_UHLAN',	'ABILITY_CLASS');	
--------------------------------------------------------------------------------------------------------------------------
-- TypeTags
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO TypeTags	
		(Type,				Tag)
SELECT  'UNIT_JFD_UHLAN',	Tag
FROM TypeTags WHERE Type = 'UNIT_CAVALRY';

INSERT INTO TypeTags	
		(Type,				Tag)
VALUES	('UNIT_JFD_UHLAN',	'CLASS_JFD_UHLAN');	
--==========================================================================================================================
-- UNITS: ABILITIES
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,										Kind)
VALUES	('ABILITY_JFD_UHLAN_FLANKING_BONUS',		'KIND_ABILITY');	
--------------------------------------------------------------------------------------------------------------------------
-- TypeTags
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO TypeTags	
		(Type,										Tag)
VALUES	('ABILITY_JFD_UHLAN_FLANKING_BONUS',		'CLASS_JFD_UHLAN');	
--------------------------------------------------------------------------------------------------------------------------
-- UnitAbilities
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO UnitAbilities	
		(UnitAbilityType,							Name,												Description)
VALUES	('ABILITY_JFD_UHLAN_FLANKING_BONUS',		'LOC_ABILITY_JFD_UHLAN_FLANKING_BONUS_NAME',		'LOC_ABILITY_JFD_UHLAN_FLANKING_BONUS_DESCRIPTION');	
--------------------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO UnitAbilityModifiers	
		(UnitAbilityType,							ModifierId)
VALUES	('ABILITY_JFD_UHLAN_FLANKING_BONUS',		'JFD_UHLAN_FLANKING_BONUS');	
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Modifiers	
		(ModifierId,					ModifierType)
VALUES	('JFD_UHLAN_FLANKING_BONUS',	'MODIFIER_PLAYER_UNIT_ADJUST_FLANKING_BONUS_MODIFIER');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierStrings
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId,					Context,		Text)
VALUES	('JFD_UHLAN_FLANKING_BONUS',	'Preview',		'LOC_ABILITY_JFD_UHLAN_FLANKING_BONUS_DESCRIPTION');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,					Name,			Value)
VALUES	('JFD_UHLAN_FLANKING_BONUS',	'Percent',		100);
--==========================================================================================================================
-- UNITS: TRAITS
--==========================================================================================================================	
-- Types			
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,								Kind)
VALUES	('TRAIT_LEADER_UNIT_JFD_UHLAN',		'KIND_TRAIT');
--------------------------------------------------------------------------------------------------------------------------
-- Traits
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Traits				
		(TraitType,							Name,							Description)
VALUES	('TRAIT_LEADER_UNIT_JFD_UHLAN',		'LOC_UNIT_JFD_UHLAN_NAME',		null);	
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('LEADER_JFD_STANISLAW',	'KIND_LEADER');
--------------------------------------------------------------------------------------------------------------------------
-- Leaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,				Name,								InheritFrom,		SceneLayers)
VALUES	('LEADER_JFD_STANISLAW',	'LOC_LEADER_JFD_STANISLAW_NAME',	'LEADER_DEFAULT',	4);
--------------------------------------------------------------------------------------------------------------------------
-- LeaderQuotes
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,				Quote)
VALUES	('LEADER_JFD_STANISLAW',	'LOC_PEDIA_LEADERS_PAGE_LEADER_JFD_STANISLAW_QUOTE');
--------------------------------------------------------------------------------------------------------------------------
-- HistoricalAgendas
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_JFD_STANISLAW',	'AGENDA_JFD_THURSDAY_DINNERS');
--------------------------------------------------------------------------------------------------------------------------
-- LeaderTraits
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,				TraitType)
VALUES	('LEADER_JFD_STANISLAW',	'TRAIT_LEADER_JFD_NATIONAL_EDUCATION');

INSERT INTO LeaderTraits	
		(LeaderType,				TraitType)
VALUES	('LEADER_JFD_STANISLAW',	'TRAIT_LEADER_UNIT_JFD_UHLAN');
--------------------------------------------------------------------------------------------------------------------------
-- FavoredReligions
--------------------------------------------------------------------------------------------------------------------------	
INSERT OR REPLACE INTO FavoredReligions	
		(LeaderType,				ReligionType)
VALUES	('LEADER_JFD_STANISLAW',	'RELIGION_CATHOLICISM');
--==========================================================================================================================
-- LEADER: AI
--==========================================================================================================================
-- AiListTypes
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO AiListTypes	
		(ListType)
VALUES	('JFD_Stanislaw_Buildings'),
		('JFD_Stanislaw_Civics'),
		('JFD_Stanislaw_Districts'),
		('JFD_Stanislaw_PseudoYields'),
		('JFD_Stanislaw_Techs'),
		('JFD_Stanislaw_Units');
--------------------------------------------------------------------------------------------------------------------------
-- AiLists
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO AiLists	
		(ListType,							LeaderType,									System)
VALUES	('JFD_Stanislaw_Buildings',			'TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'Buildings'),
		('JFD_Stanislaw_Civics',			'TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'Civics'),
		('JFD_Stanislaw_Districts',			'TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'Districts'),
		('JFD_Stanislaw_PseudoYields',		'TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'PseudoYields'),
		('JFD_Stanislaw_Techs',				'TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'Technologies'),
		('JFD_Stanislaw_Units',				'TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'Units');
--------------------------------------------------------------------------------------------------------------------------	
-- AiFavoredItems
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO AiFavoredItems	
		(ListType,							Favored,	Value,		Item)
VALUES	('JFD_Stanislaw_Buildings',			1,			1,			'BUILDING_SUKIENNICE'), 
		('JFD_Stanislaw_Civics',			1,			0,			'CIVIC_DRAMA_POETRY'), 
		('JFD_Stanislaw_Civics',			1,			0,			'CIVIC_HUMANISM'),
		('JFD_Stanislaw_Districts',			1,			1,			'DISTRICT_ENCAMPMENT'),
		('JFD_Stanislaw_Districts',			1,			1,			'DISTRICT_THEATER'),
		('JFD_Stanislaw_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_GENERAL'),
		('JFD_Stanislaw_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_ADMIRAL'),
		('JFD_Stanislaw_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_ENGINEER'),
		('JFD_Stanislaw_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_MERCHANT'),
		('JFD_Stanislaw_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_PROPHET'),
		('JFD_Stanislaw_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_SCIENTIST'),
		('JFD_Stanislaw_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_ARTIST'),
		('JFD_Stanislaw_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_MUSICIAN'),
		('JFD_Stanislaw_PseudoYields',		1,			50,			'PSEUDOYIELD_GPP_WRITER'),
		('JFD_Stanislaw_Techs',				1,			0,			'TECH_BRONZE_WORKING'),
		('JFD_Stanislaw_Units',				1,			1,			'UNIT_POLISH_HUSSAR'),
		('JFD_Stanislaw_Units',				1,			1,			'UNIT_JFD_UHLAN');
--==========================================================================================================================
-- LEADER: AGENDAS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_JFD_THURSDAY_DINNERS',	'KIND_TRAIT');			
--------------------------------------------------------------------------------------------------------------------------			
-- Agendas			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Agendas				
		(AgendaType,							Name,										Description)
VALUES	('AGENDA_JFD_THURSDAY_DINNERS',			'LOC_AGENDA_JFD_THURSDAY_DINNERS_NAME',		'LOC_AGENDA_JFD_THURSDAY_DINNERS_DESCRIPTION');	
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,					Description)
VALUES	('TRAIT_AGENDA_JFD_THURSDAY_DINNERS',	'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');	
--------------------------------------------------------------------------------------------------------------------------			
-- AgendaTraits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_JFD_THURSDAY_DINNERS',			'TRAIT_AGENDA_JFD_THURSDAY_DINNERS');	
--------------------------------------------------------------------------------------------------------------------------			
-- ExclusiveAgendas			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO ExclusiveAgendas				
		(AgendaOne,								AgendaTwo)
VALUES	('AGENDA_JFD_THURSDAY_DINNERS',			'AGENDA_GREAT_PERSON_ADVOCATE');	
--------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_JFD_THURSDAY_DINNERS',	'JFD_THURSDAY_DINNERS_LAGS_PATRONAGE'),
		('TRAIT_AGENDA_JFD_THURSDAY_DINNERS',	'JFD_THURSDAY_DINNERS_LEADS_CULTURE'),
		('TRAIT_AGENDA_JFD_THURSDAY_DINNERS',	'JFD_THURSDAY_DINNERS_LEADS_PATRONAGE');
----------------------------------------------------------------------------------------------------------------------------
-- Modifiers
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId)
VALUES	('JFD_THURSDAY_DINNERS_LAGS_PATRONAGE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_LAGS_GREAT_PEOPLE'),
		('JFD_THURSDAY_DINNERS_LEADS_CULTURE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_HAS_HIGH_CULTURE'),
		('JFD_THURSDAY_DINNERS_LEADS_PATRONAGE',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_LEADS_GREAT_PEOPLE');
----------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,								Value)
VALUES	('JFD_THURSDAY_DINNERS_LAGS_PATRONAGE',		'InitialValue',						-7),
		('JFD_THURSDAY_DINNERS_LAGS_PATRONAGE',		'StatementKey',						'LOC_DIPLO_WARNING_LEADER_JFD_STANISLAW_REASON_LAGS_PATRONAGE'),
		('JFD_THURSDAY_DINNERS_LAGS_PATRONAGE',		'SimpleModifierDescription',		'LOC_DIPLO_MODIFIER_AGENDA_JFD_THURSDAY_DINNERS_LAGS_PATRONAGE'),
		('JFD_THURSDAY_DINNERS_LEADS_CULTURE',		'InitialValue',						7),
		('JFD_THURSDAY_DINNERS_LEADS_CULTURE',		'StatementKey',						'LOC_DIPLO_KUDO_LEADER_JFD_STANISLAW_REASON_LEADS_CULTURE'),
		('JFD_THURSDAY_DINNERS_LEADS_CULTURE',		'SimpleModifierDescription',		'LOC_DIPLO_MODIFIER_AGENDA_JFD_THURSDAY_DINNERS_LEADS_CULTURE'),
		('JFD_THURSDAY_DINNERS_LEADS_PATRONAGE',	'InitialValue',						7),
		('JFD_THURSDAY_DINNERS_LEADS_PATRONAGE',	'StatementKey',						'LOC_DIPLO_KUDO_LEADER_JFD_STANISLAW_REASON_LEADS_PATRONAGE'),
		('JFD_THURSDAY_DINNERS_LEADS_PATRONAGE',	'SimpleModifierDescription',		'LOC_DIPLO_MODIFIER_AGENDA_JFD_THURSDAY_DINNERS_LEADS_PATRONAGE');
--------------------------------------------------------------------------------------------------------------------------		
-- ModifierStrings		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO ModifierStrings			
		(ModifierId,								Context,		Text)
VALUES	('JFD_THURSDAY_DINNERS_LAGS_PATRONAGE',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('JFD_THURSDAY_DINNERS_LEADS_CULTURE',		'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),	
		('JFD_THURSDAY_DINNERS_LEADS_PATRONAGE',	'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');	
--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage, 			 ForegroundImage,					PlayDawnOfManAudio)
VALUES	('LEADER_JFD_STANISLAW',	'LEADER_GORGO_BACKGROUND',	 'LEADER_JFD_STANISLAW_NEUTRAL',	0);
--==========================================================================================================================
-- LEADERS: TRAITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,										Kind)
VALUES	('TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'KIND_TRAIT');	
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,												Description)
VALUES	('TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'LOC_TRAIT_LEADER_JFD_NATIONAL_EDUCATION_NAME',		'LOC_TRAIT_LEADER_JFD_NATIONAL_EDUCATION_DESCRIPTION');	
--------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,									ModifierId)
VALUES	('TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'JFD_NATIONAL_EDUCATION_AMPHITHEATER_SCIENCE'),	
		('TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'JFD_NATIONAL_EDUCATION_BROADCAST_CENTER_SCIENCE'),	
		('TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'JFD_NATIONAL_EDUCATION_MUSEUM_ARTIFACT_SCIENCE'),		
		('TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'JFD_NATIONAL_EDUCATION_MUSEUM_ART_SCIENCE'),
		('TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'JFD_NATIONAL_EDUCATION_THEATRE_SQUARE_PRODUCTION'),
		('TRAIT_LEADER_JFD_NATIONAL_EDUCATION',		'JFD_NATIONAL_EDUCATION_WRITING_SCIENCE');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,												SubjectRequirementSetId)
VALUES	('JFD_NATIONAL_EDUCATION_AMPHITHEATER_SCIENCE',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	 	null),
		('JFD_NATIONAL_EDUCATION_BROADCAST_CENTER_SCIENCE',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',		null),
		('JFD_NATIONAL_EDUCATION_MUSEUM_ARTIFACT_SCIENCE',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',	 	null),
		('JFD_NATIONAL_EDUCATION_MUSEUM_ART_SCIENCE',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',		null),
		('JFD_NATIONAL_EDUCATION_THEATRE_SQUARE_PRODUCTION',	'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',		null),	
		('JFD_NATIONAL_EDUCATION_WRITING_SCIENCE',				'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD',			null);		
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,						Value)
VALUES	('JFD_NATIONAL_EDUCATION_AMPHITHEATER_SCIENCE',			'Amount',					2),
		('JFD_NATIONAL_EDUCATION_AMPHITHEATER_SCIENCE',			'YieldType',				'YIELD_SCIENCE'),	
		('JFD_NATIONAL_EDUCATION_AMPHITHEATER_SCIENCE',			'BuildingType',				'BUILDING_AMPHITHEATER'),
		('JFD_NATIONAL_EDUCATION_MUSEUM_ARTIFACT_SCIENCE',		'Amount',					2),
		('JFD_NATIONAL_EDUCATION_MUSEUM_ARTIFACT_SCIENCE',		'YieldType',				'YIELD_SCIENCE'),	
		('JFD_NATIONAL_EDUCATION_MUSEUM_ARTIFACT_SCIENCE',		'BuildingType',				'BUILDING_MUSEUM_ARTIFACT'),
		('JFD_NATIONAL_EDUCATION_MUSEUM_ART_SCIENCE',			'Amount',					2),
		('JFD_NATIONAL_EDUCATION_MUSEUM_ART_SCIENCE',			'YieldType',				'YIELD_SCIENCE'),	
		('JFD_NATIONAL_EDUCATION_MUSEUM_ART_SCIENCE',			'BuildingType',				'BUILDING_MUSEUM_ART'),
		('JFD_NATIONAL_EDUCATION_BROADCAST_CENTER_SCIENCE',		'Amount',					2),
		('JFD_NATIONAL_EDUCATION_BROADCAST_CENTER_SCIENCE',		'YieldType',				'YIELD_SCIENCE'),	
		('JFD_NATIONAL_EDUCATION_BROADCAST_CENTER_SCIENCE',		'BuildingType',				'BUILDING_BROADCAST_CENTER'),
		('JFD_NATIONAL_EDUCATION_THEATRE_SQUARE_PRODUCTION',	'DistrictType',				'DISTRICT_THEATER'),	
		('JFD_NATIONAL_EDUCATION_THEATRE_SQUARE_PRODUCTION',	'Amount',					100),	
		('JFD_NATIONAL_EDUCATION_WRITING_SCIENCE',				'YieldType',				'YIELD_SCIENCE'),	
		('JFD_NATIONAL_EDUCATION_WRITING_SCIENCE',				'YieldChange',				2),	
		('JFD_NATIONAL_EDUCATION_WRITING_SCIENCE',				'GreatWorkObjectType',		'GREATWORKOBJECT_WRITING');		
--==========================================================================================================================
-- HISTORICAL MOMENTS
--==========================================================================================================================
-- MomentIllustrations
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO MomentIllustrations
		(MomentIllustrationType, 				MomentDataType, 		GameDataType, 		Texture)
VALUES 	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',		'MOMENT_DATA_UNIT', 	'UNIT_JFD_UHLAN',	'Moment_UniqueUnit_PolandStanislawII.dds');
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- CivilizationLeaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,			LeaderType,					CapitalName)
VALUES	('CIVILIZATION_POLAND',		'LEADER_JFD_STANISLAW',		'LOC_CITY_NAME_WARSAW');
--==========================================================================================================================
--==========================================================================================================================