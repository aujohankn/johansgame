cam = view_camera[0];
window_set_size(1920, 1080);
window_set_fullscreen(true);

switch(room) {
	case rm_worldgen:
		break;
	case rm_game:
		instance_create_depth(1000, 1000, 0, obj_player);
		
		break;
}