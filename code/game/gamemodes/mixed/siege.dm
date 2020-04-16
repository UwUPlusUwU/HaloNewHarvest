/datum/game_mode/siege
	name = "Mercenary & Revolution"
	config_tag = "siege"
	round_description = "Getting stuck between a rock and a hard place, maybe the nice visitors can help with your internal security problem?"
	extended_round_description = "GENERAL QUARTERS! OH GOD WE GAVE THE REVOLUTIONARIES GUNS!"
	votable = 0
	required_players = 20
	required_enemies = 5
	end_on_antag_death = 0
	auto_recall_shuttle = 0
	shuttle_delay = 2
	antag_tags = list(MODE_REVOLUTIONARY, MODE_LOYALIST, MODE_MERCENARY)
	require_all_templates = 1
