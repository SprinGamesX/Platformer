collapse_cd = seconds(time);
state = WALLSTATE.STABLE;
vsp = 0;
grv = 0.2;
ox = x;
oy = y;
// Particles
part_system = part_system_create();
part_emitter = part_emitter_create(part_system);
part_emitter_region(part_system, part_emitter, x - 8, x + 8, y - 8, y + 8, ps_shape_rectangle, ps_distr_linear);
part_break = create_particle(spr_fragile_wall, seconds(1), 0.1, 0, 0, 1);
part_type_gravity(part_break, 0.2, 270);
alarm[0] = 5;

enum WALLSTATE{

	STABLE,
	BREAKING,
	FALLING
}
