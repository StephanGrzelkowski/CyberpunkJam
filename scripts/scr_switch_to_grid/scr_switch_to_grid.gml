/// @arg id_socket

var id_socket = argument0
var id_wire = instance_nearest(id_socket.x, id_socket.y, obj_wire)

var dir_init = point_direction(id_socket.x, id_socket.y, id_wire.x, id_wire.y)

id_electricity = instance_create_depth(id_wire.x, id_wire.y, 1, obj_electricity)
id_electricity.dir = dir_init 
ds_queue_enqueue(id_electricity.ds_queue_movement, id_wire)




