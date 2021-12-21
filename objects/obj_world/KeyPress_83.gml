///@description Smooth all

randomize();
grasscount = 0;
for (var i = 0; i < WORLD_SIZE; i++) {
	for (var j = 0; j < WORLD_SIZE; j++) {
		if i <= 2 or j <= 2 or i >= WORLD_SIZE-3 or j >= WORLD_SIZE-3 or WORLD_ARRAY[i,j] == 11 {
			//do nothing
		} else {
			//Black line around lava
			if WORLD_ARRAY[i-1,j] == 11 or WORLD_ARRAY[i,j-1] == 11 or WORLD_ARRAY[i+1,j] == 11 or
			WORLD_ARRAY[i,j+1] == 11 or WORLD_ARRAY[i-1,j-1] == 11 or WORLD_ARRAY[i+1,j-1] == 11 or
			WORLD_ARRAY[i-1,j+1] == 11 or WORLD_ARRAY[i+1,j+1] == 11
				WORLD_ARRAY[i,j] = 10;
			
			
			if choose(false, true) {
				avg = ceil((WORLD_ARRAY[i,j] +
							WORLD_ARRAY[i-1,j] + WORLD_ARRAY[i,j-1] + WORLD_ARRAY[i+1,j] + WORLD_ARRAY[i,j+1] +
							WORLD_ARRAY[i-1,j-1] + WORLD_ARRAY[i+1,j-1] + WORLD_ARRAY[i-1,j+1] + WORLD_ARRAY[i+1,j+1]
							)/9);
				WORLD_ARRAY[i,j] = avg;
			}
			//random smoothing (bot-right to top-left)
			randomize();
			var a = WORLD_SIZE - i - 1;
			var b = WORLD_SIZE - j - 1;
			if WORLD_ARRAY[a,b] != 11 and choose(false, true) {
				avg = ceil((WORLD_ARRAY[a,b] +
							WORLD_ARRAY[a-1,b] + WORLD_ARRAY[a,b-1] + WORLD_ARRAY[a+1,b] + WORLD_ARRAY[a,b+1] +
							WORLD_ARRAY[a-1,b-1] + WORLD_ARRAY[a+1,b-1] + WORLD_ARRAY[a-1,b+1] + WORLD_ARRAY[a+1,b+1]
							)/9);
				WORLD_ARRAY[a,b] = avg;
			}
			
			//Black line around lava (2)
			if WORLD_ARRAY[i-1,j] == 11 or WORLD_ARRAY[i,j-1] == 11 or WORLD_ARRAY[i+1,j] == 11 or
			WORLD_ARRAY[i,j+1] == 11 or WORLD_ARRAY[i-1,j-1] == 11 or WORLD_ARRAY[i+1,j-1] == 11 or
			WORLD_ARRAY[i-1,j+1] == 11 or WORLD_ARRAY[i+1,j+1] == 11
				WORLD_ARRAY[i,j] = 10;
			
			if WORLD_ARRAY[i,j] == 5
				grasscount ++;
		}
	}
}

alarm[2] = 5;