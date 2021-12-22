//Initiate world
globalvar WORLD_SIZE;
globalvar WORLD_ARRAY;
iterations = 0;
lavacount = 0;
grasscount = 0;

WORLD_SIZE = 64;

wscale = room_height/WORLD_SIZE;
hscale = room_height/WORLD_SIZE;

for (var i = 0; i < WORLD_SIZE; i++) {
	for (var j = 0; j < WORLD_SIZE; j++) {
		WORLD_ARRAY[i,j] = 0;
	}
}


ri = irandom_range(6, WORLD_SIZE -7)
rj = irandom_range(6, WORLD_SIZE -7)
WORLD_ARRAY[ri,rj] = 11;
WORLD_ARRAY[ri+1,rj] = 11;
WORLD_ARRAY[ri+1,rj+1] = 11;
WORLD_ARRAY[ri,rj+1] = 11;

cam = view_camera[0];

alarm[0] = 10;

created = false;
l = 6;
c = 0;
a = 6;