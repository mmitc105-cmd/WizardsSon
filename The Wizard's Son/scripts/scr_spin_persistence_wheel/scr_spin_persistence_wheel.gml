function scr_spin_persistence_wheel(){
	//Randomize the seed
	randomise();
	
	pool = obj_gameController.persistence_wheel_pool;
	
	random_index = irandom(array_length(pool)-1);
	chosen_slice = pool[random_index];
	
	rolled_multiplier = round(random_range(chosen_slice.min_val, chosen_slice.max_val) * 10) / 10;
	
	variable_struct_set(global.modifiers, chosen_slice.stat_key, rolled_multiplier);
	
	return "The Persistence Wheel selected: " + chosen_slice.name + " set to " + string(rolled_multiplier);
}