/// @description Spin
rot1 += rotspeed;
rot2 -= rotspeed * 2;
rot3 += rotspeed * 3;
draw_sprite_ext(spr_checkpoint, 0, x,y,1,1,rot1, c_white, 1);
draw_sprite_ext(spr_checkpoint, 0, x,y,1,1,rot1 - 10, c_white, 0.5);
draw_sprite_ext(spr_checkpoint, 0, x,y,1,1,rot1 - 20, c_white, 0.25);
if (activated){
	draw_sprite_ext(spr_checkpoint, 1, x,y,1,1,rot2, c_white, 1);
	draw_sprite_ext(spr_checkpoint, 1, x,y,1.2,1.2,rot3, c_white, 0.5);
	draw_sprite_ext(spr_checkpoint, 2, x,y,1,1,rot3, c_white, 1);
}
