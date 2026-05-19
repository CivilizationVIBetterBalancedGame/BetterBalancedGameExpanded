--======================================================================
--	COLORS
--======================================================================
--	Colors
-------------------------------------
INSERT OR REPLACE INTO Colors
		(Type,								Color)
VALUES
		("COLOR_PLAYER_MER_THEODORIC_1",	"60,60,60,255"),	--#3C3C3C
		("COLOR_PLAYER_MER_THEODORIC_2",	"255,255,255,255"),	--#FFFFFF
		("COLOR_PLAYER_MER_THEODORIC_3",	"52,30,30,255"),	--#341E1E
		("COLOR_PLAYER_MER_THEODORIC_4",	"208,198,177,255"),	--#D0C6B1
		("COLOR_PLAYER_MER_THEODORIC_5",	"67,91,129,255"),	--#435B81
		("COLOR_PLAYER_MER_THEODORIC_6",	"228,205,140,255"),	--#E4CD8C
		("COLOR_PLAYER_MER_THEODORIC_7",	"236,218,191,255");	--#ECDABF
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
			"LEADER_MER_THEODORIC",
			"Unique",

			"COLOR_PLAYER_MER_THEODORIC_7",
			"COLOR_STANDARD_RED_DK",

			"COLOR_PLAYER_MER_THEODORIC_5",
			"COLOR_PLAYER_MER_THEODORIC_6",

			"COLOR_PLAYER_MER_THEODORIC_3",
			"COLOR_PLAYER_MER_THEODORIC_4",

			"COLOR_PLAYER_MER_THEODORIC_1",
			"COLOR_PLAYER_MER_THEODORIC_2"
		);
--======================================================================
--======================================================================
