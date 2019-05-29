///@arg0 id_wire
///@arg1 dir
var wire_id = argument0
var dir = argument1

switch dir 
{
	case 0: 
		var target_x_grid = wire_id.pos_x_grid + 1
		var target_y_grid = wire_id.pos_y_grid
		break
		
	case 90: 
		var target_x_grid = wire_id.pos_x_grid 
		var target_y_grid = wire_id.pos_y_grid - 1
		break
		
	case 180: 
		var target_x_grid = wire_id.pos_x_grid -1
		var target_y_grid = wire_id.pos_y_grid
		break
		
	case 270:
		var target_x_grid = wire_id.pos_x_grid 
		var target_y_grid = wire_id.pos_y_grid + 1
		break
		
}
var target_grid_value = ds_grid_get(obj_wire_system.ds_electrical_grid, target_x_grid, target_y_grid);  
return target_grid_value