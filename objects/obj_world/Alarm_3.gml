///@description Smooth last bits

grasscount = 0;
randomize();
doAgain = false;
for (var i = 1; i < WORLD_SIZE-1; i++) {
	for (var j = 1; j < WORLD_SIZE-1; j++) {
		if WORLD_ARRAY[i,j] < 9 and WORLD_ARRAY[i,j] >= 3 and
		WORLD_ARRAY[i,j] != WORLD_ARRAY[i-1,j] and
		WORLD_ARRAY[i,j] != WORLD_ARRAY[i+1,j] and
		WORLD_ARRAY[i,j] != WORLD_ARRAY[i,j-1] and
		WORLD_ARRAY[i,j] != WORLD_ARRAY[i,j+1] {
			WORLD_ARRAY[i,j] = choose(WORLD_ARRAY[i-1,j], WORLD_ARRAY[i+1,j], WORLD_ARRAY[i,j-1], WORLD_ARRAY[i,j+1]);
			doAgain = true;
		}
		if WORLD_ARRAY[i,j] == 5
			grasscount ++;
	}
}

if doAgain alarm[3] = 15;
else alarm[4] = 60;