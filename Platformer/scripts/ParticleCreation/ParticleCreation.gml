// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_particle(_sprite, _life, _size, _speed, _blend, _alpha){
	var part = part_type_create();
	part_type_life(part, _life, _life);
	part_type_alpha2(part, _alpha, 0);
	part_type_sprite(part, _sprite, 0, 0, 0);
	part_type_blend(part, _blend);
	part_type_size(part, _size,_size,0,0);
	return part;
}