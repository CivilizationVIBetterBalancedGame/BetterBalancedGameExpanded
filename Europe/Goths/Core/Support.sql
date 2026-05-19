--==========================================================================================================================
-- DELIVERATOR MOAR UNITS (8342b98d-80c7-4002-87bb-419646bd9b54)
-- DELIVERATOR MOAR UNITS (CORE ONLY) (860265f1-73df-47d9-b5dc-c9cdc6b1489a)
--==========================================================================================================================
--==========================================================================================================================
-- GEDEMON YNAEMP (36e88483-48fe-4545-b85f-bafc50dde315)
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
        (Civilization,                 Leader,						 MapName,						  X,        Y)
VALUES  ('CIVILIZATION_MER_GOTHS',    'LEADER_MER_THEODORIC',        'FiraxisTSL_Europe',        37,        12),
		('CIVILIZATION_MER_GOTHS',    'LEADER_MER_THEODORIC',        'GiantEarth',        21,        60),
		('CIVILIZATION_MER_GOTHS',    'LEADER_MER_THEODORIC',        'FiraxisTSL',        41,        39),
		('CIVILIZATION_MER_GOTHS',    'LEADER_MER_THEODORIC',        'LargeEurope',        36,        35),
        ('CIVILIZATION_MER_GOTHS',    'LEADER_MER_THEODORIC',        'GreatestEarthMap',    41,        46),
        ('CIVILIZATION_MER_GOTHS',    'LEADER_MER_THEODORIC',        'PlayEuropeAgain',    45,        39),
        ('CIVILIZATION_MER_GOTHS',    'LEADER_MER_THEODORIC',        'LargestEarthCustom',    26,        77);
