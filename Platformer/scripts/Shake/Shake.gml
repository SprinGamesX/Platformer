// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shake(_ox, _oy, _force){
	if (x == _ox && y == _oy){
		var xx = _ox + random_range(-_force, _force);
		var yy = _oy + random_range(-_force, _force);
		x = xx;
		y = yy;
	}
	else x = _ox; y = _oy;
}