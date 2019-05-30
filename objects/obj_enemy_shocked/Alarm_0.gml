/// @description Insert description here
// You can write your code in this editor
instance_destroy(self)

if !instance_exists(obj_enemy)
{
	instance_create_depth(1,1, 1, obj_game_end) 	
}