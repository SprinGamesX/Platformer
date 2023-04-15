if(moving){

	if (x == rx && vel == 1) {
		alarm[0] = 120;
		move = false;
		vel = -1;
	}
	if (x == lx && vel == -1) {
		alarm[0] = 120;
		move = false;
		vel = 1;
	}
	if (move) x += vel;
	
	


}