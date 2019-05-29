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

	if moving 
	{
		x_target = x + movedir_x
		y_target = y + movedir_y
		if (tilemap_get_at_pixel(collision_layer, x_target, y) = 0)
		{
			x = x_target		
		}
		if (tilemap_get_at_pixel(collision_layer, x, y_target) = 0)
		{
			y = y_target	
		}
	
	}


	if keyboard_check_pressed(vk_space)
	{
		id_closest_socket = instance_nearest(x, y, obj_socket)
		dist_to_socket = point_distance(x,y,id_closest_socket.x, id_closest_socket.y)
		if dist_to_socket < max_dist_socket
		{
			scr_switch_to_grid(id_closest_socket)	
		}
		global.bol_in_grid = 1
	}
}