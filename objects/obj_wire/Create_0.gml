/// @description adds itself to the ds_electricity_grid 
// You can write your code in this editor

pos_x_grid = floor(x / 32); 
pos_y_grid = floor(y / 32); 

ds_grid_add(obj_wire_system.ds_electrical_grid, pos_x_grid, pos_y_grid, 1)
