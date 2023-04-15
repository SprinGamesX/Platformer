// Controls
var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
var key_jump = keyboard_check(vk_space);

// General movement
if (state == PLAYERSTATE.FREE)
	hsp = (key_right - key_left) * vel;

vsp = vsp + grv;

if (canJump-- > 0) and (key_jump) and (state != PLAYERSTATE.STUN)
{
	vsp = vspJump;
	canJump = 0;
}

// Collision
if (place_meeting(x + hsp, y, obj_solid)){

	while(abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if(!place_meeting(x + hsp, y, obj_solid)) x += hsp;
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x,y + vsp, obj_solid)){
	if(vsp > 0) canJump = jumpBuffer;
	while(abs(vsp) > 0.2){
		vsp *= 0.5;
		if(!place_meeting(x,y+vsp,obj_solid)) y +=  vsp;
	}
	vsp = 0;
}
y += vsp;

// Movement with moving platforms
if (place_meeting(x,y + 2, obj_platform)){
	var plat = instance_place(x, y+2, obj_platform)
	if (plat.move) x += plat.vel;
}
// Movement with jumpads
if (state == PLAYERSTATE.STUN){
	if (hsp > 0) hsp -= frict;
	if (hsp < 0) hsp += frict;
	if (hsp == 0 && vsp == 0) state = PLAYERSTATE.FREE;
}
if (state == PLAYERSTATE.PUSH){
	if (hsp == 0) state = PLAYERSTATE.FREE;
	if (hsp > 0) hsp -= frict;
	if (hsp < 0) hsp += frict;
}
if (immune) sprite_index = spr_cube_immune;
else sprite_index = spr_cube;

// Particles
part_particles_create(part_system, x,y, trail, 1);
