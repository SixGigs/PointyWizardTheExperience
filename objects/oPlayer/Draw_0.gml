// Draw the player
draw_self();

// Draw the weapon
// Get the weapon off the player's body
var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);

// Flip the weapon upright
var _weaponYscl = 1;
if aimDir > 90 && aimDir < 270
{
	_weaponYscl = -1;
}

draw_sprite_ext(sPointyWand, 0, x + _xOffset, centerY + _yOffset, 1, _weaponYscl, aimDir, c_white, 1);