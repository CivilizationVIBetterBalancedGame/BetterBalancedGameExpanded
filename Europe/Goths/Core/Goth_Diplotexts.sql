--==========================================================================================================================
-- LEADER DIPLO TEXT
--==========================================================================================================================
INSERT OR REPLACE INTO LocalizedText
		(Language, Tag,	Text)
VALUES
--------------------------------------------------------------------
-- Historical Agenda
--------------------------------------------------------------------
		-- Agenda
		("en_US", 
		"LOC_AGENDA_MER_ROMAN_GOTH_NAME",					
		"Romanitas"),
		("en_US", 
		"LOC_AGENDA_MER_ROMAN_GOTH_DESCRIPTION",					
		"Respects Civilizations that build districts and have large standing armies. Dislikes those that neglect district and army construction."),
		
		-- Kudos
		("en_US", 
		"LOC_DIPLO_MODIFIER_LEADER_MER_THEODORIC_AGENDA_VERY_ROMAN",					
		"Theodoric is impressed by your city building and military forces."),
		("en_US", 
		"LOC_DIPLO_KUDOS_LEADER_MER_THEODORIC_AGENDA_VERY_ROMAN",
		"(You have been building districts and keep a large standing army.)"),
		--
		("en_US", 
		"LOC_DIPLO_KUDO_EXIT_LEADER_MER_THEODORIC_ANY",
		"Your civil works and trained soldiers are to be admired, they rival those of Rome and Ravenna."),
		-- Warnings
		("en_US", 
		"LOC_DIPLO_MODIFIER_LEADER_MER_THEODORIC_AGENDA_NOT_VERY_ROMAN",					
		"Theodoric is disappointed in the scale of your cities and military."),
		("en_US", 
		"LOC_DIPLO_KUDOS_LEADER_MER_THEODORIC_AGENDA_NOT_VERY_ROMAN",
		"(You are lacking in districts and military units.)"),
		--
		("en_US", 
		"LOC_DIPLO_WARNING_EXIT_LEADER_MER_THEODORIC_ANY",
		"Your cities must be filled with idle hands. Your people have nothing to do! They should be taking up hammers or swords."),
		

--------------------------------------------------------------------
-- Early Meetings
--------------------------------------------------------------------
		-- First AI Line
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_LEADER_MER_THEODORIC_ANY",					
		"Well met, I am Theodoric, King of the Ostrogoths."),
		
		-- AI invitation to visit nearby City
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_MER_THEODORIC_ANY",					
		"Come visit my nearby city, there are many great works underway."),
		
		-- AI accepts Human invitation
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_MER_THEODORIC_ANY",					
		"I accept your invitation and will send a delegation there at once."),
		
		-- AI invitation to exchange Capital Information
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_MER_THEODORIC_ANY",					
		"Mark your capital on my map, and i shall do the same for you."),
		
		-- AI sends a Delegation
		("en_US", 
		"LOC_DIPLO_DELEGATION_FROM_AI_LEADER_MER_THEODORIC_ANY",					
		"I have sent a delegation with gifts of fine jewellery made by the finest gothic craftsmen."),
		
		-- AI accepts the Player's Delegation
		("en_US", 
		"LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_MER_THEODORIC_ANY",					
		"Thank you."),
		
		-- AI rejects the Player's Delegation
		("en_US", 
		"LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_MER_THEODORIC_ANY",					
		"Not at this time."),

--------------------------------------------------------------------
-- Open Borders
--------------------------------------------------------------------
		-- AI Proposes Open Borders
		("en_US", 
		"LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_MER_THEODORIC_ANY",					
		"I propose open borders."),
		-- AI Accepts Open Borders
		("en_US", 
		"LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_MER_THEODORIC_ANY",					
		"I agree."),
		-- AI Rejects Open Borders
		("en_US", 
		"LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_MER_THEODORIC_ANY",					
		"Not at this time."),

--------------------------------------------------------------------
-- Friendship
--------------------------------------------------------------------
		-- AI Proposes Friendship
		("en_US", 
		"LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_MER_THEODORIC_ANY",					
		"We should discuss a formal declaration of friendship."),
		-- AI Accepts Friendship
		("en_US", 
		"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_MER_THEODORIC_ANY",					
		"I agree, let the world know we stand as friends."),
		-- AI Rejects Friendship
		("en_US", 
		"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_MER_THEODORIC_ANY",					
		"I don't see you that way."),

--------------------------------------------------------------------
-- Denounce
--------------------------------------------------------------------
		-- AI Denounced by Human
		("en_US", 
		"LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_MER_THEODORIC_ANY",					
		"You have some nerve, you uneducated fool."),
		-- AI Denounces
		("en_US", 
		"LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_MER_THEODORIC_ANY",					
		"You clearly lack any formal education, you're an idiot and your people are idiots for following you. (Denounces You)"),
		
--------------------------------------------------------------------
-- Trade Agreement with England
--------------------------------------------------------------------
		-- AI Accepts Deal
		("en_US", 
		"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_MER_THEODORIC_ANY",					
		"I agree to these terms."),
		-- AI Rejects Deal
		("en_US", 
		"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_MER_THEODORIC_ANY",					
		"Not this."),

--------------------------------------------------------------------
-- Other Diplo
--------------------------------------------------------------------
		-- AI Proposes Alliance
		("en_US", 
		"LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_MER_THEODORIC_ANY",					
		"Let our neighbours know we stand together."),
		
		-- AI warns player for border troops
		("en_US", 
		"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_MER_THEODORIC_ANY",					
		"Our walls stand strong against your shows of force."),

--------------------------------------------------------------------
-- War and Peace
--------------------------------------------------------------------
		-- Human declares war to the AI
		("en_US", 
		"LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_MER_THEODORIC_ANY",					
		"My people have toiled in war before, you're nothing to me."),
		
		-- AI declares war to Human
		("en_US", 
		"LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_MER_THEODORIC_ANYY",					
		"Discussion is over, we go to war."),
		
		-- AI accepts peace from Human
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_MER_THEODORIC_ANY",					
		"Fine, this will do for now."),
		-- AI rejects peace from Human
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_MER_THEODORIC_ANY",	-- this should be Reject_Peace probably?				
		"This would be a mistake."),
		-- AI asks for peace
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_MER_THEODORIC_ANY",					
		"Let us discuss terms for peace."),
		
		-- AI defeats human (hotseat)
		("en_US", 
		"LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_MER_THEODORIC_ANY",					
		"Just as i stood on the shoulders of a fallen empire, so shall you stand upon mine."),
		
		-- AI is defeated
		("en_US", 
		"LOC_DIPLO_DEFEAT_FROM_AI_LEADER_MER_THEODORIC_ANY",					
		"Just as i stood on the shoulders of a fallen empire, so shall you stand upon mine.");
		