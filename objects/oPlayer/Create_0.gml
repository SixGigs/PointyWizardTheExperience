//variables for movement
	moveDir = 0;
	moveSpd = 2;
	xSpd = 0;
	ySpd = 0;


// Sprite control
	centerYOffset = -34;
	centerY = y + centerYOffset;

	weaponOffsetDist = 0;
	aimDir = 0;

	face = 12;
	sprite[0]  = sPointy0;
	sprite[1]  = sPointy1;
	sprite[2]  = sPointy2;
	sprite[3]  = sPointy3;
	sprite[4]  = sPointy4;
	sprite[5]  = sPointy5;
	sprite[6]  = sPointy6;
	sprite[7]  = sPointy7;
	sprite[8]  = sPointy8;
	sprite[9]  = sPointy9;
	sprite[10] = sPointy10;
	sprite[11] = sPointy11;
	sprite[12] = sPointy12;
	sprite[13] = sPointy13;
	sprite[14] = sPointy14;
	sprite[15] = sPointy15;


// Weapon info
	bulletObj = oProjectile;
	shootTimer = 0;
	shootCooldown = 10;
	weaponLength = sprite_get_bbox_right(sPointyWand);