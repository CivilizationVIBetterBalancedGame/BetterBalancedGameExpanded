--==========================================================================================================================
-- LEADERS: COLOURS
--==========================================================================================================================
----------------------------------------------------------------------------------------------------------------------------
-- PlayerColors
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO PlayerColors	
		(Type,					Usage,		PrimaryColor, 									SecondaryColor,									Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor)
SELECT	'LEADER_JFD_STANISLAW',	'Unique',	'COLOR_PLAYER_JFD_POLAND_STANISLAW_PRIMARY',	'COLOR_PLAYER_JFD_POLAND_STANISLAW_SECONDARY',	Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor
FROM PlayerColors WHERE Type = 'LEADER_JADWIGA';
----------------------------------------------------------------------------------------------------------------------------		
-- Colors		
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Colors 
		(Type, 											Color)
VALUES	('COLOR_PLAYER_JFD_POLAND_STANISLAW_PRIMARY', 	'163,52,68,255'),
		('COLOR_PLAYER_JFD_POLAND_STANISLAW_SECONDARY', '174,211,253,255');
--==========================================================================================================================
--==========================================================================================================================