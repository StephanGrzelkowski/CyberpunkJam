/// @description Insert description here
// You can write your code in this editor
spawn_x = other.x
spawn_y = other.y

instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy_shocked)

instance_destroy(other)
