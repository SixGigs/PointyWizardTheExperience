// Get inputs
rightKey = keyboard_check(ord("D"));
leftKey  = keyboard_check(ord("A"));
upKey    = keyboard_check(ord("W"));
downKey  = keyboard_check(ord("S"));



// Player movement
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