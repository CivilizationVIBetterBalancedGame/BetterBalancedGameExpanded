--======================================================================
--	COLORS
--======================================================================
--	Colors
-------------------------------------
INSERT OR REPLACE INTO Colors
		(Type,									Color)
VALUES
		('COLOR_PLAYER_MER_MARIA_THERESA_1',	'201,8,42,255'),	--#C9082A
		('COLOR_PLAYER_MER_MARIA_THERESA_2',	'255,255,255,255'),	--#FFFFFF
		('COLOR_PLAYER_MER_MARIA_THERESA_3',	'153,0,51,255'),	--#990033
		('COLOR_PLAYER_MER_MARIA_THERESA_4',	'255,255,233,255');	--#FFFFE9
-------------------------------------
--	PlayerColors
-------------------------------------
INSERT OR REPLACE INTO PlayerColors
		(
			Type,
			Usage,

			PrimaryColor,
			SecondaryColor,

			Alt1PrimaryColor,
			Alt1SecondaryColor,

			Alt2PrimaryColor,
			Alt2SecondaryColor,

			Alt3PrimaryColor,
			Alt3SecondaryColor
		)
VALUES
		(
			'LEADER_MER_MARIA_THERESA',
			'Unique',

			'COLOR_PLAYER_MER_MARIA_THERESA_3',
			'COLOR_PLAYER_MER_MARIA_THERESA_4',

			'COLOR_STANDARD_YELLOW_MD',
			'COLOR_STANDARD_WHITE_DK',

			'COLOR_STANDARD_WHITE_LT',
			'COLOR_STANDARD_RED_MD',

			'COLOR_STANDARD_GREEN_DK',
			'COLOR_STANDARD_RED_MD'
		);
--======================================================================
--======================================================================
