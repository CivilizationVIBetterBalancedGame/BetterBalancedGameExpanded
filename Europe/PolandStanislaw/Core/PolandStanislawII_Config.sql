--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
--------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Players	
		(CivilizationType,			Domain,	Portrait,							 PortraitBackground,		LeaderType,				LeaderName,							LeaderIcon,						LeaderAbilityName,								LeaderAbilityDescription,								LeaderAbilityIcon,				CivilizationName,	CivilizationIcon,	CivilizationAbilityName,	CivilizationAbilityDescription,	CivilizationAbilityIcon)
SELECT	'CIVILIZATION_POLAND',		Domain,	'LEADER_JFD_STANISLAW_NEUTRAL.dds',	 'LEADER_GORGO_BACKGROUND',	'LEADER_JFD_STANISLAW',	'LOC_LEADER_JFD_STANISLAW_NAME',	'ICON_LEADER_JFD_STANISLAW',	'LOC_TRAIT_LEADER_JFD_NATIONAL_EDUCATION_NAME',	'LOC_TRAIT_LEADER_JFD_NATIONAL_EDUCATION_DESCRIPTION',	'ICON_LEADER_JFD_STANISLAW',	CivilizationName,	CivilizationIcon,	CivilizationAbilityName,	CivilizationAbilityDescription, CivilizationAbilityIcon
FROM Players WHERE CivilizationType = 'CIVILIZATION_POLAND' AND LeaderType= 'LEADER_JADWIGA';
--------------------------------------------------------------------------------------------------------------------------
-- PlayerItems
--------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO PlayerItems	
		(CivilizationType,			Domain,	LeaderType,				Type, Icon, Name, Description, SortIndex)
SELECT	'CIVILIZATION_POLAND',		Domain,	'LEADER_JFD_STANISLAW',	Type, Icon, Name, Description, SortIndex
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_POLAND' AND LeaderType= 'LEADER_JADWIGA';

DELETE FROM PlayerItems WHERE Type = 'UNIT_UHLAN';
INSERT OR REPLACE INTO PlayerItems	
		(CivilizationType,			Domain,	LeaderType,				Type,				Icon,					Name,						Description,						SortIndex)
SELECT	'CIVILIZATION_POLAND',		Domain,	'LEADER_JFD_STANISLAW',	'UNIT_JFD_UHLAN',	'ICON_UNIT_JFD_UHLAN',	'LOC_UNIT_JFD_UHLAN_NAME',	'LOC_UNIT_JFD_UHLAN_DESCRIPTION',	30
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_POLAND' AND LeaderType= 'LEADER_JADWIGA';
--==========================================================================================================================
--==========================================================================================================================