/// @description Insert description here
// You can write your code in this editor
var a = 0;
for (var i = 0; i < grid_columns; i += 1)
{
	for (var j = 0;	j < grid_rows; j += 1)
	{
		if ds_grid_get(ds_electrical_grid, i, j) == 1
		{
			//check to the left 
			if ds_grid_get(ds_electrical_grid, i - 1, j) == 1
			{
				arr_to_draw[a,0] = i * 32
				arr_to_draw[a,1] = j * 32
				arr_to_draw[a,2] = 180
				a += 1
			}
			//check to the right 
			if ds_grid_get(ds_electrical_grid, i + 1, j) == 1
			{
				arr_to_draw[a,0] = i * 32
				arr_to_draw[a,1] = j * 32
				arr_to_draw[a,2] = 0
				a += 1
			}
			//check to the top 
			if ds_grid_get(ds_electrical_grid, i, j - 1) == 1
			{
				arr_to_draw[a,0] = i * 32
				arr_to_draw[a,1] = j * 32
				arr_to_draw[a,2] = 90
				a += 1
			}
			//check to the bottom
			if ds_grid_get(ds_electrical_grid, i, j + 1) == 1
			{
				arr_to_draw[a,0] = i * 32
				arr_to_draw[a,1] = j * 32
				arr_to_draw[a,2] = 270
				a += 1
			}
			//add one to the grid value so you don't do it double
			ds_grid_add(ds_electrical_grid, i, j, 1)
		}
	}
}

count_to_draw = array_height_2d(arr_to_draw)