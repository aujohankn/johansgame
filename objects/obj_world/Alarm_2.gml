///@description Smooth coast line

randomize();
doAgain = false;
for (var i = 1; i < WORLD_SIZE-1; i++) {
	for (var j = 1; j < WORLD_SIZE-1; j++) {
		//Too steep
		if WORLD_ARRAY[i,j] > 3 and
		(WORLD_ARRAY[i-1,j] < 3 or WORLD_ARRAY[i+1,j] < 3 or WORLD_ARRAY[i,j-1] < 3 or WORLD_ARRAY[i,j+1] < 3) {
			WORLD_ARRAY[i,j] = 3;
			doAgain = true;
		}
		//Sand
		if WORLD_ARRAY[i,j] < 3 and
		(WORLD_ARRAY[i-1,j] > 3 or WORLD_ARRAY[i+1,j] > 3 or WORLD_ARRAY[i,j-1] > 3 or WORLD_ARRAY[i,j+1] > 3) {
			WORLD_ARRAY[i,j] = 3;
			doAgain = true;
		}
		if WORLD_ARRAY[i,j] < 3 and
		(WORLD_ARRAY[i-1,j] == 3 and WORLD_ARRAY[i+1,j] == 3 and WORLD_ARRAY[i,j-1] == 3 and WORLD_ARRAY[i,j+1] == 3) {
			WORLD_ARRAY[i,j] = 3;
			doAgain = true;
		}
		//Water
		if WORLD_ARRAY[i,j] < 3 {
			if (WORLD_ARRAY[i-1,j] == 3 or WORLD_ARRAY[i+1,j] == 3 or WORLD_ARRAY[i,j-1] == 3 or WORLD_ARRAY[i,j+1] == 3) {
				WORLD_ARRAY[i,j] = 2;
				//doAgain = true;
			}
			else WORLD_ARRAY[i,j] = 1;
		}
		if WORLD_ARRAY[i,j] == 1 and
		(WORLD_ARRAY[i-1,j] <= 1 and WORLD_ARRAY[i+1,j] <= 1 and WORLD_ARRAY[i,j-1] <= 1 and WORLD_ARRAY[i,j+1] <= 1) {
			WORLD_ARRAY[i,j] = 0;
		}
		
	}
}

if doAgain alarm[2] = 5;
else alarm[3] = 5;