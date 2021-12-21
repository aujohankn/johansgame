grasscount = 0;

for (var i = 0; i < WORLD_SIZE; i++) {
	for (var j = 0; j < WORLD_SIZE; j++) {
		if i <= 2 or j <= 2 or i >= WORLD_SIZE-3 or j >= WORLD_SIZE-3 or WORLD_ARRAY[i,j] == 11 {
			//do nothing
		}
		else {
			if choose(false, true) and WORLD_ARRAY[i,j] >= 0
				WORLD_ARRAY[i,j] += choose(-1, 0, 1);
			//random smoothing (top-left to bot-right)
			randomize();
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
			
			if WORLD_ARRAY[i,j] == 1
				WORLD_ARRAY[i,j] = choose(0,1)
			if WORLD_ARRAY[i,j] == 5
				grasscount ++;
			//Final edge case handling
			if WORLD_ARRAY[i,j] < 0
				WORLD_ARRAY[i,j] = 0;
			if WORLD_ARRAY[i,j] > 11
				WORLD_ARRAY[i,j] = choose(10, 11);
		}
	}
}
iterations ++;

if (grasscount/(WORLD_SIZE*WORLD_SIZE))*100 < 10
	alarm[0] = 5;
else alarm[1] = 5;