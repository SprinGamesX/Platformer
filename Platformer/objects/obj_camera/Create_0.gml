/// @description Insert description here
global.particle_system = part_system_create();
follow_target = obj_player;
camera = view_camera[0];
view_visible[0] = 1;
cam_height = camera_get_view_height(camera);
cam_width = camera_get_view_width(camera);
