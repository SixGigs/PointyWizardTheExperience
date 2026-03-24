velocityX = lengthdir_x(baseSpeed, dir);
velocityY = lengthdir_y(baseSpeed, dir);

// Translate projectile frame independantly
deltaSeconds = delta_time / 1000000;
x += velocityX * deltaSeconds;
y += velocityY * deltaSeconds;

// Destroy conditions
// Wall collision
if (place_meeting(x, y, oSolidWall))
{	
	shouldDestroy = true;
}

// Max distance
if (point_distance(xstart, ystart, x, y) > maxDistance)
{
	shouldDestroy = true;
}

if (shouldDestroy)
{
	instance_destroy();
}