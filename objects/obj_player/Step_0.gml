/// @description Insert description here
// You can write your code in this editor

if !global.bol_in_grid
{
	var arr_input = array_create(4, "")
	arr_input[0] = ord("D")
	arr_input[1] = ord("W") 
	arr_input[2] = ord("A")
	arr_input[3] = ord("S")

	var movedir_x = 0 
	var movedir_y = 0
	for (inp = 0; inp < 4; inp += 1) 
	{
		if keyboard_check(arr_input[inp])
		{
			cur_angle = inp * 90
			movedir_x += lengthdir_x(max_spd, cur_angle)
			movedir_y += lengthdir_y(max_spd, cur_angle)
		
		}
	
	}

	var moving = (point_distance(0, 0, movedir_x, movedir_y) > 0) 
	direction = point_direction(0,0,movedir_x, movedir_y)
	if moving 
	{
		x_target = x + movedir_x
		y_target = y + movedir_y
		if (tilemap_get_at_pixel(collision_layer, x_target + 6 * sign(movedir_x) + sign(movedir_x), y) = 0)
		{
			x = x_target		
		}
		if (tilemap_get_at_pixel(collision_layer, x, y_target + 11 * sign(movedir_y) + sign(movedir_y)) = 0)
		{
			y = y_target	
		}
		
		if direction <= 45 or direction > 315
		{
			sprite_index = spr_player_right	
		}


		if direction > 45 and direction <= 135
		{
			sprite_index = spr_player_up
		}

		if direction > 135 and direction <= 225
		{
			sprite_index = spr_player_left
		}

		if direction > 225 and direction <= 315
		{
			sprite_index = spr_player_down
		}

		image_speed = animation_speed
	}
	else
	{
		image_speed = 0
		image_index = 0	
	}

	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("E"))
	{
		
		id_closest_socket = instance_nearest(x, y, obj_socket)
		dist_to_socket = point_distance(x,y,id_closest_socket.x, id_closest_socket.y)
		if place_meeting(x,y,id_closest_socket)
		{
			audio_play_sound(sfx_grid, 100, 1)
			scr_switch_to_grid(id_closest_socket)	
			global.bol_in_grid = 1
		}
		
	}
}