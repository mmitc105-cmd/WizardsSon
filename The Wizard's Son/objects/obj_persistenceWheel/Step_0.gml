if (is_spinning){
	
	//Spins the wheel at max speed if not near target angle
	if(abs(target_angle - image_angle) > 200) {
		image_angle += max_spin_speed;	
	} else {
		//Lerp moves the wheel 5% closer to our target per frame
		image_angle = lerp(image_angle, target_angle, 0.05);
	  }
	  
	  //Stop spinning and snap to correct space
	  if (abs(target_angle - image_angle) < 0.2) {
		  image_angle = target_angle;
		  is_spinning = false;
		  show_debug_message("Wheel has finished spinning");
	  }
}