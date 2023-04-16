// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_immune(_time){
	immune = true;
	alarm[0] = _time;
}

function respawn(){
	x = checkpoint.x;
	y = checkpoint.y;
	hsp = 0;
	vsp = 0;
}