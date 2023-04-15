switch(state){
	
	case WALLSTATE.STABLE:
		if (place_meeting(x, y - 4, obj_player)) state = WALLSTATE.BREAKING;
		break;

	case WALLSTATE.BREAKING:
		Shake(ox, oy, 0.2);
		collapse_cd--;
		if (collapse_cd == 0) state = WALLSTATE.FALLING;
		break;
	
	case WALLSTATE.FALLING:
		vsp += grv;
		y += vsp;
		var _inst = instance_position(x,y,all)
		if (_inst.object_index != object_index) instance_destroy();

		break;

}