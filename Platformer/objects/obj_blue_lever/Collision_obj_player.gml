if (keyboard_check_pressed(ord("E"))){
	if (!activated){
		obj_blue_lever.activated = true;
	}
	else {
		obj_blue_lever.activated = false;
	}
}