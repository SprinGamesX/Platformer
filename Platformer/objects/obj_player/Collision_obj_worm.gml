/// @description Worm Damage
if (!immune){
	make_immune(seconds(3));
	state = PLAYERSTATE.STUN;
	respawn();
	//hsp *= -1;
	//vsp *= -1;
	hp--;
}