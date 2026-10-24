--===========================================================================================================================================================================--
-- Author: Albro
-- Create date: 2019-03-07
-- Description: Arecibo Observatory
--==========================================================================================================================================================================--
/* Types */
--==========================================================================================================================================================================--

		DELETE FROM BuildingModifiers 

		WHERE ModifierId IN
		
		(	'ARECIBO_TECH_BOOST_PROJECT_MARS_REACTOR_MODULE',	
			'ARECIBO_TECH_BOOST_PROJECT_MARS_HABITATION_MODULE',
			'ARECIBO_TECH_BOOST_PROJECT_MARS_HYDROPONICS_MODULE'
		);

		DELETE FROM Modifiers 

		WHERE ModifierId IN
		
		(	'ARECIBO_TECH_BOOST_PROJECT_MARS_REACTOR_MODULE',	
			'ARECIBO_TECH_BOOST_PROJECT_MARS_HABITATION_MODULE',
			'ARECIBO_TECH_BOOST_PROJECT_MARS_HYDROPONICS_MODULE'
		);

		DELETE FROM ModifierArguments 

		WHERE ModifierId IN
		
		(	'ARECIBO_TECH_BOOST_PROJECT_MARS_REACTOR_MODULE',	
			'ARECIBO_TECH_BOOST_PROJECT_MARS_HABITATION_MODULE',
			'ARECIBO_TECH_BOOST_PROJECT_MARS_HYDROPONICS_MODULE'
		);		

		DELETE FROM RequirementSets 

		WHERE RequirementSetId IN
		
		(	'ARECIBO_PROJECT_MARS_REACTOR_MODULE',		
			'ARECIBO_PROJECT_MARS_HABITATION_MODULE',	
			'ARECIBO_PROJECT_MARS_HYDROPONICS_MODULE'	
		);

		DELETE FROM RequirementSetRequirements 

		WHERE RequirementSetId IN
		
		(	'ARECIBO_PROJECT_MARS_REACTOR_MODULE',		
			'ARECIBO_PROJECT_MARS_HABITATION_MODULE',	
			'ARECIBO_PROJECT_MARS_HYDROPONICS_MODULE'	
		);

		INSERT INTO BuildingModifiers
			(	BuildingType,							ModifierId												)	VALUES

			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_TECH_BOOST_PROJECT_MARS_BASE'					),
			(	'WON_CL_BUILDING_ARECIBO',				'ARECIBO_TECH_BOOST_PROJECT_EXOPLANET_EXPEDITION'		);

		INSERT INTO Modifiers 
			(	ModifierId,												ModifierType,									 				RunOnce,	Permanent,	OwnerRequirementSetId,		OwnerStackLimit,			SubjectStackLimit,				SubjectRequirementSetId							)	VALUES

			(	'ARECIBO_TECH_BOOST_PROJECT_MARS_BASE',					'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',		0,			0,			NULL,						NULL,						NULL,							'ARECIBO_PROJECT_MARS_BASE'						),
			(	'ARECIBO_TECH_BOOST_PROJECT_EXOPLANET_EXPEDITION',		'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',		0,			0,			NULL,						NULL,						NULL,							'ARECIBO_PROJECT_EXOPLANET_EXPEDITION'			);

		INSERT INTO ModifierArguments
			(	ModifierId,												Name,						Value								)	VALUES

			(	'ARECIBO_TECH_BOOST_PROJECT_MARS_BASE',					'Amount',					'1'									),
			(	'ARECIBO_TECH_BOOST_PROJECT_EXOPLANET_EXPEDITION',		'Amount',					'1'									);

		INSERT INTO RequirementSets 
			(	RequirementSetId,								RequirementSetType			)	VALUES

			(	'ARECIBO_PROJECT_MARS_BASE',					'REQUIREMENTSET_TEST_ALL'	),
			(	'ARECIBO_PROJECT_EXOPLANET_EXPEDITION',			'REQUIREMENTSET_TEST_ALL'	);

		INSERT INTO RequirementSetRequirements
			(	RequirementSetId,									RequirementId										)	VALUES

			(	'ARECIBO_PROJECT_MARS_BASE',						'TECHNOLOGY_VICTORY_MARS_BASE'						),
			(	'ARECIBO_PROJECT_EXOPLANET_EXPEDITION',				'TECHNOLOGY_VICTORY_EXOPLANET_EXPEDITION'			);

