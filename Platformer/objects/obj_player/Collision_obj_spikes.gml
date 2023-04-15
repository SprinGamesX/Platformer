/// @description Insert description here
if (!immune){
	make_immune(seconds(3));
	state = PLAYERSTATE.STUN;
	hsp *= -1;
	vsp *= -1;
	hp--;
}
	
