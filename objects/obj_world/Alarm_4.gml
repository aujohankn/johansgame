l = 6;
c = 0;
a = 6;
created = false;
while (!created) {
    if WORLD_ARRAY[l,a] == 5 {
		if c < 2 {
			c ++;
			a ++;
		}
		else {
			p = instance_create_depth(l*wscale, a*hscale, -1, obj_worldplayerspawn);
			camera_set_view_target(cam, p);
			created = true;
		}
	} else {
		a++;
		if a > WORLD_SIZE-1 {
			a = 6;
			l ++;
		}
	}
}

alarm[5] = 180;