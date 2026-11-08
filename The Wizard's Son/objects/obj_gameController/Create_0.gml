//Persistent stats that stays between rounds
global.player_xp = 0;
global.player_level = 1;
global.permanent_gold = 0; //Gold that saves after runs

// The current round stats
global.run_gold = 0;
global.current_floor = 0; //0 = Base, 1 = Floor 1, etc...

//Wheel Multipliers
global.modifiers = {

	gold_multiplier: 1.0,
	player_hp_multiplier: 1.0,
	enemy_hp_multiplier: 1.0,
	player_damage_multiplier: 1.0,
	enemy_damage_multiplier: 1.0,
	enemy_amount_multiplier: 1.0
	
}

//Wheel Pool
//Set up is as follows: Label, target variable, min, max multipliers
//I used Gemini AI to help understand how to set this up
persistence_wheel_pool = [
	{name: "Gold Multiplier", stat_key: "gold_multiplier", min_val: 0.5, max_val: 2.5},
	{name: "Health Multiplier", stat_key: "player_hp_multiplier", min_val: 0.5, max_val: 2.5},
	{name: "Enemy Health Multiplier", stat_key: "enemy_hp_multiplier", min_val: 0.5, max_val: 2.5},
	{name: "Damage Multiplier", stat_key: "player_damage_multiplier", min_val: 0.5, max_val: 2.5},
	{name: "Enemy Damage Multiplier", stat_key: "enemy_damage_multiplier", min_val: 0.5, max_val: 2.5},
	{name: "Enemy Multiplier", stat_key: "enemy_amount_multiplier", min_val: 0.5, max_val: 2.5}
];