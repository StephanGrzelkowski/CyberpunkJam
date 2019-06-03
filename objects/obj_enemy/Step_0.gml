/// @description Insert description here
// You can write your code in this editor

if global.bol_in_grid == 0 
{
	spd = spd_normal
	image_speed = image_speed_normal
}
else
{
	spd = spd_normal * mod_in_grid
	image_speed = image_speed_normal * mod_in_grid
}

/// check if player is in sight
var hit_something = 0
var cur_check_x = x
var cur_check_y = y
while !hit_something
{
	if place_meeting(cur_check_x, cur_check_y, obj_player)
	{
		spd *= mod_see_player
		hit_something = 1
	}
	else if tilemap_get_at_pixel(collision_layer, cur_check_x, cur_check_y)
	{
		hit_something = 1
	}
	else 
	{
		cur_check_x += lengthdir_x(increment_step, direction)	
		cur_check_y += lengthdir_y(	increment_step, direction)
	}
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
