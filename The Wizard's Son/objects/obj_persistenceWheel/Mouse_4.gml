//SPIN THAT WHEEL
if(!is_spinning){
	spin_data = scr_spin_persistence_wheel();
	
	slice_center = (spin_data.category_index * degrees_per_slice) + (degrees_per_slice/2);
	
	target_angle = 1080 + (360 - slice_center);
	
	image_angle = 0;
	is_spinning = true;
	
	show_debug_message("Physical animation triggered for category index: " + string(spin_data.category_index));
}