draw_set_color(c_black);
draw_text(17, 17, "Iterations: " + string(iterations));
draw_set_color(c_white);
draw_text(16, 16, "Iterations: " + string(iterations));

draw_set_color(c_black);
draw_text(17, 33, "Grass (%): " + string((grasscount/(WORLD_SIZE*WORLD_SIZE))*100));
draw_set_color(c_white);
draw_text(16, 32, "Grass (%): " + string((grasscount/(WORLD_SIZE*WORLD_SIZE))*100));
draw_set_color(c_black);
draw_text(17, 49, string(alarm[2]));
draw_set_color(c_white);
draw_text(16, 48, string(alarm[2]));
