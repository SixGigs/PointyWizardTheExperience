// Draw the weapon behind the player
if aimDir >= 45 && aimDir < 281.25
{
	draw_my_weapon();
}

// Draw the player
draw_self();

// Draw the weapon
if aimDir >= 281.25 && aimDir < 360 || aimDir >= 0 && aimDir < 45
{
	draw_my_weapon();
}