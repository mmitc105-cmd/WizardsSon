function scr_reset_run_state(){
	//reset run currency
	global.run_gold = 0;
	global.current_floor = 0;
	
	//resets all wheel multipliers
	global.modifiers.gold_multiplier = 1.0;
	global.modifiers.player_hp_multiplier = 1.0;
	global.modifiers.enemy_hp_multiplier = 1.0;
	global.modifiers.player_damage_multiplier = 1.0;
	global.modifiers.enemy_damage_multiplier = 1.0;
	global.modifiers.enemy_amount_multiplier = 1.0;
	
	//Send back to base
	room_goto(Base);
}