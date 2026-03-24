// Get inputs
rightKey = keyboard_check(ord("D"));
leftKey  = keyboard_check(ord("A"));
upKey    = keyboard_check(ord("W"));
downKey  = keyboard_check(ord("S"));
shootKey = mouse_check_button( mb_left );


// Player movement
#region
// Get the player movement direction
var _horizKey = rightKey - leftKey;
var _vertKey  = downKey  - upKey;
moveDir = point_direction(0, 0, _horizKey, _vertKey);

// Get the X & Y speeds
var _spd = 0;
var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
_inputLevel = clamp(_inputLevel, 0, 1);
_spd = moveSpd * _inputLevel;

xSpd = lengthdir_x(_spd, moveDir);
ySpd = lengthdir_y(_spd, moveDir);

// Collisions
if place_meeting(x + xSpd, y, oWall) { xSpd = 0; }
if place_meeting(x, y + ySpd, oWall) { ySpd = 0; }

// Move the player
x += xSpd;
y += ySpd;
// Depth
depth = -bbox_bottom; // bbox means Bounding Box

#endregion


// Player aiming
centerY = y + centerYOffset;

// Aim
aimDir  = point_direction(x, centerY, mouse_x, mouse_y);



// Sprite control
#region
// Make sure the player is facing the correct direction
face = round(aimDir / 22.5);
if face == 16 { face = 0; }

// Animate
if xSpd == 0 && ySpd == 0 {
	image_index = 0;
}

// Set the player sprite
sprite_index = sprite[face];
#endregion

// Weapon firing
#region
if(shootTimer > 0) { shootTimer--; }
if(shootKey && shootTimer <= 0)
{
	// Reset cooldown
	shootTimer = shootCooldown;
	
	// Spawn projectile and set its direction
	var spawnedProjectile = instance_create_depth(x, centerY, depth-100, oProjectile);
	with(spawnedProjectile)
	{
		dir = other.aimDir;
	}
}
#endregion