if camera_get_view_width(cam) < 960 {
	cam_w = camera_get_view_width(cam);
	cam_h = camera_get_view_height(cam);
	cam_x = camera_get_view_x(cam);
	cam_y = camera_get_view_y(cam);
	camera_set_view_size(cam, cam_w+16/2, cam_h+9/2);
}