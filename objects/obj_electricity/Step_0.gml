/// @description Insert description here
// You can write your code in this editor
image_angle = dir
if !ds_queue_empty(ds_queue_movement)
{	
	target_wire_id = ds_queue_head(ds_queue_movement)
	alarm[0] = -1
	
}
else if alarm[0] == -1
{
	alarm[0] = time_goodwill	
}
target_x = target_wire_id.x 
target_y = target_wire_id.y

// move to twards the point
if (point_distance(x, y, target_x, target_y) < spd)
{
	x = target_x 
	y = target_y
}
else
{
	dir_cur_move = point_direction(x, y, target_x, target_y)
	hspd = lengthdir_x(spd, dir_cur_move)
	vspd = lengthdir_y(spd, dir_cur_move)
	x += hspd
	y += vspd
}

/// get pressed input
press_right = keyboard_check_pressed(ord("D"))
press_up = keyboard_check_pressed(ord("W"))
press_left =  keyboard_check_pressed(ord("A"))
press_down =  keyboard_check_pressed(ord("S"))

if press_right
{
	pos_check_x = x + 32
	pos_check_y = y 
	dir_target = 0
	if (angle_difference(dir, dir_target) == 180) or (angle_difference(dir, dir_target) == -180)
	{
		pos_check_x = x + 16 
		id_check_closest_wire = instance_nearest(pos_check_x, pos_check_y, obj_wire)
		x_closest_wire = id_check_closest_wire.x
		y_closest_wire = id_check_closest_wire.y
		distance_closest_wire = point_distance(pos_check_x, pos_check_y, x_closest_wire, y_closest_wire)

		id_check_closest_socket = instance_nearest(pos_check_x, pos_check_y, obj_socket)
		x_closest_socket = id_check_closest_socket.x
		y_closest_socket = id_check_closest_socket.y
		distance_closest_socket = point_distance(pos_check_x, pos_check_y, x_closest_socket, y_closest_socket)
		ds_queue_dequeue(ds_queue_movement)
		if (distance_closest_wire - distance_closest_socket) >= 0 
		{
			ds_queue_enqueue(ds_queue_movement, id_check_closest_socket)
		}
		else
		{
			ds_queue_enqueue(ds_queue_movement, id_check_closest_wire)	
		}
		dir = dir_target
		bol_reversed_dir = 1
	}
}

if press_up 
{
	pos_check_x = x
	pos_check_y = y - 32 
	dir_target = 90
	if (angle_difference(dir, dir_target) == 180) or (angle_difference(dir, dir_target) == -180)
	{
		pos_check_y = y - 16 
		id_check_closest_wire = instance_nearest(pos_check_x, pos_check_y, obj_wire)
		x_closest_wire = id_check_closest_wire.x
		y_closest_wire = id_check_closest_wire.y
		distance_closest_wire = point_distance(pos_check_x, pos_check_y, x_closest_wire, y_closest_wire)

		id_check_closest_socket = instance_nearest(pos_check_x, pos_check_y, obj_socket)
		x_closest_socket = id_check_closest_socket.x
		y_closest_socket = id_check_closest_socket.y
		distance_closest_socket = point_distance(pos_check_x, pos_check_y, x_closest_socket, y_closest_socket)
		ds_queue_dequeue(ds_queue_movement)
		if (distance_closest_wire - distance_closest_socket) >= 0 
		{
			ds_queue_enqueue(ds_queue_movement, id_check_closest_socket)
		}
		else
		{
			ds_queue_enqueue(ds_queue_movement, id_check_closest_wire)	
		}
		dir = dir_target
		bol_reversed_dir = 1
	}
}

if	press_left
{
	pos_check_x = x - 32
	pos_check_y = y 
	dir_target = 180
	if (angle_difference(dir, dir_target) == 180) or (angle_difference(dir, dir_target) == -180)
	{
		pos_check_x = x - 16 
		id_check_closest_wire = instance_nearest(pos_check_x, pos_check_y, obj_wire)
		x_closest_wire = id_check_closest_wire.x
		y_closest_wire = id_check_closest_wire.y
		distance_closest_wire = point_distance(pos_check_x, pos_check_y, x_closest_wire, y_closest_wire)

		id_check_closest_socket = instance_nearest(pos_check_x, pos_check_y, obj_socket)
		x_closest_socket = id_check_closest_socket.x
		y_closest_socket = id_check_closest_socket.y
		distance_closest_socket = point_distance(pos_check_x, pos_check_y, x_closest_socket, y_closest_socket)
		ds_queue_dequeue(ds_queue_movement)
		if (distance_closest_wire - distance_closest_socket) >= 0 
		{
			ds_queue_enqueue(ds_queue_movement, id_check_closest_socket)
		}
		else
		{
			ds_queue_enqueue(ds_queue_movement, id_check_closest_wire)	
		}
		dir = dir_target
		bol_reversed_dir = 1
	}
}

if press_down
{
	pos_check_x = x
	pos_check_y = y + 32
	dir_target = 270
	if (angle_difference(dir, dir_target) == 180) or (angle_difference(dir, dir_target) == -180)
	{
		pos_check_y = y + 16 
		id_check_closest_wire = instance_nearest(pos_check_x, pos_check_y, obj_wire)
		x_closest_wire = id_check_closest_wire.x
		y_closest_wire = id_check_closest_wire.y
		distance_closest_wire = point_distance(pos_check_x, pos_check_y, x_closest_wire, y_closest_wire)

		id_check_closest_socket = instance_nearest(pos_check_x, pos_check_y, obj_socket)
		x_closest_socket = id_check_closest_socket.x
		y_closest_socket = id_check_closest_socket.y
		distance_closest_socket = point_distance(pos_check_x, pos_check_y, x_closest_socket, y_closest_socket)
		ds_queue_dequeue(ds_queue_movement)
		if (distance_closest_wire - distance_closest_socket) >= 0 
		{
			ds_queue_enqueue(ds_queue_movement, id_check_closest_socket)
		}
		else
		{
			ds_queue_enqueue(ds_queue_movement, id_check_closest_wire)	
		}
		dir = dir_target
		bol_reversed_dir = 1
	}
}


// if press input check if its a viable position
if ((press_up + press_right + press_left + press_down) > 0) & !bol_reversed_dir
{
	id_check_closest_wire = instance_nearest(pos_check_x, pos_check_y, obj_wire)
	x_closest_wire = id_check_closest_wire.x
	y_closest_wire = id_check_closest_wire.y
	distance_closest_wire = point_distance(pos_check_x, pos_check_y, x_closest_wire, y_closest_wire)

	id_check_closest_socket = instance_nearest(pos_check_x, pos_check_y, obj_socket)
	x_closest_socket = id_check_closest_socket.x
	y_closest_socket = id_check_closest_socket.y
	distance_closest_socket = point_distance(pos_check_x, pos_check_y, x_closest_socket, y_closest_socket)
		
	if (distance_closest_wire < max_distance_check) or (distance_closest_socket < max_distance_check)
	{
		if (distance_closest_wire - distance_closest_socket) >= 0 
		{
			target_angle = scr_check_target_angle(dir,x_closest_socket, y_closest_socket)
			if target_angle < max_angle_back
			{
				if target_angle > 90
				{
					ds_queue_dequeue(ds_queue_movement)	
				}
				ds_queue_enqueue(ds_queue_movement, id_check_closest_socket)	
					
			}
			else
			{
				scr_destroy_electricity()	
			}
		}
		else 
		{
			target_angle = scr_check_target_angle(dir, x_closest_wire, y_closest_wire) 
			if target_angle < max_angle_back
			{
				if target_angle > 90
				{
					ds_queue_dequeue(ds_queue_movement)	
				}
				ds_queue_enqueue(ds_queue_movement, id_check_closest_wire)		
			}
			else
			{
				scr_destroy_electricity()	
			}
		}
		
		dir = dir_target
	}
	else
	{
		scr_destroy_electricity()	
	}
	
}
bol_reversed_dir = 0

//when you reach your current destination
if (x == target_x) & (y == target_y)
{
	scr_emit_lightning()
	ds_queue_dequeue(ds_queue_movement)
	new_grid_val = scr_check_grid_dir(target_wire_id, dir)	
	
	if new_grid_val > 0 
	{
		new_target_x = x + lengthdir_x(32, dir)
		new_target_y = y + lengthdir_y(32, dir)
		if new_grid_val == 3
		{
			instance_create_depth(new_target_x, new_target_y, 1, obj_shock)
			scr_destroy_electricity()
		}
		
		new_target_wire_id = instance_nearest(new_target_x, new_target_y, obj_wire)
		ds_queue_enqueue(ds_queue_movement, new_target_wire_id)
	}
}

