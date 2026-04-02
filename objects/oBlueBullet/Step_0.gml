//move
	xSpd = lengthdir_x(spd, dir);
	ySpd = lengthdir_y(spd, dir);

	x += xSpd;
	y += ySpd;


//cleanup
	//destroy
	if destroy { instance_destroy(); }

	//collision
	if place_meeting(x, y, oSolidWall) { destroy = true; }

	//bullet out of range
	if point_distance(xstart, ystart, x, y) > maxDist { destroy = true; }