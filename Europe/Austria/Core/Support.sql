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
        (Civilization,                 Leader,                MapName,            X,        Y)
VALUES  ('CIVILIZATION_MER_AUSTRIA',    'LEADER_MER_MARIA_THERESA',        'FiraxisTSL',        41,        43),
		('CIVILIZATION_MER_AUSTRIA',    'LEADER_MER_MARIA_THERESA',        'GiantEarth',        41,        18),
		('CIVILIZATION_MER_AUSTRIA',    'LEADER_MER_MARIA_THERESA',        'GiantEarth',        23,        65),
        ('CIVILIZATION_MER_AUSTRIA',    'LEADER_MER_MARIA_THERESA',        'GreatestEarthMap',   53,        49),
        ('CIVILIZATION_MER_AUSTRIA',    'LEADER_MER_MARIA_THERESA',        'PlayEuropeAgain',    49,        46),
        ('CIVILIZATION_MER_AUSTRIA',    'LEADER_MER_MARIA_THERESA',        'LargeEurope',    37,        42);
