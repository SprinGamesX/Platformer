// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tiles(_amount){
	return 16 * _amount;
}

function recreate_wall(_x, _y){
	with(instance_create_layer(_x,_y,"Structure", obj_fragile_wall_regenerator)){
		alarm[0] = seconds(5);
	}
}