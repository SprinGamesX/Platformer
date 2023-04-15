hp = 10;
vel = 2;
grv = 0.2;
hsp = 0;
vsp = 0;
vspJump = -4;
canJump = 0;
jumpBuffer = 5;
state = PLAYERSTATE.FREE;
frict = 0.1;
immune = false;

// Particles
trail = create_particle(spr_cube, seconds(0.5), 1, 0, 1, 0.5);
part_system = part_system_create();

enum PLAYERSTATE{

	FREE,
	STUN,
	PUSH

}
