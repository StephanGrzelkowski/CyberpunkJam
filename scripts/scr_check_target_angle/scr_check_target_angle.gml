///@arg0 cur_dir
///@arg1 target_x 
///@arg2 target_y 

var cur_dir = argument0
var target_x = argument1
var target_y =  argument2

var vec_self = array_create(2)

switch cur_dir 
{
	case 0: 
		vec_self[0] = 1
		vec_self[1] = 0
		break
	case 90: 
		vec_self[0] = 0
		vec_self[1] = 1
		break
	case 180: 
		vec_self[0] = -1
		vec_self[1] = 0
		break
	case 270: 
		vec_self[0] = 0
		vec_self[1] = -1
		break
}

var vec_target = array_create(2)
vec_target[0] = target_x - x
vec_target[1] = -(target_y - y)

var dot_prod_arrays = dot_product(vec_self[0], vec_self[1], vec_target[0], vec_target[1] )
var len_vec_self = 1
var len_vec_target = point_distance(0, 0, vec_target[0], vec_target[1])
var cos_angle = dot_prod_arrays / (len_vec_self * len_vec_target)

return radtodeg(arccos(cos_angle))