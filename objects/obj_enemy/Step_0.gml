/// @description Insert description here
// You can write your code in this editor

if global.bol_in_grid == 0 
{
	spd = spd_normal
	image_speed = image_speed_normal
}
else
{
	spd = spd_normal * slow_factor_in_grid	
	image_speed = image_speed_normal * slow_factor_in_grid
}
path_speed = spd
if direction <= 45 or direction > 315
{
	sprite_index = spr_enemy_right	
}


if direction > 45 and direction <= 135
{
	sprite_index = spr_enemy_up
}

if direction > 135 and direction <= 225
{
	sprite_index = spr_enemy_left
}

if direction > 225 and direction <= 315
{
	sprite_index = spr_enemy_down
}
