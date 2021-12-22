for (i = 0; i < WORLD_SIZE; i++) {
	for (j = 0; j < WORLD_SIZE; j++) {
		color = c_black;
		switch(WORLD_ARRAY[i,j]) {
			case 0:
				color = merge_color(c_black, c_blue, 0.5);
				break;
			case 1:
				color = c_blue;
				break;
			case 2:
				color = merge_color(c_blue, c_yellow, 0.25);;
				break;
			case 3:
				color = merge_color(c_yellow, c_white, 0.5);
				break;
			case 4:
				color = merge_color(c_yellow, c_green, 0.5);
				break;
			case 5:
				color = c_green;
				break;
			case 6:
				color = merge_color(c_green, c_black, 0.5);
				break;
			case 7:
				color = c_grey;
				break;
			case 8:
				color = c_dkgrey;
				break;
			case 9:
				color = c_white;
				break;
			case 10:
				color = c_black;
				break;
			case 11:
				color = c_red;
				break;
		}
		draw_sprite_ext(spr_world, 0, 210+i*wscale, j*hscale, wscale, hscale, 0, color, 1);
	}
}
if created
	draw_sprite_ext(spr_worldplayerspawn, 0, 210+l*wscale, a*hscale, wscale/8, hscale/8, 0, c_white, 1);