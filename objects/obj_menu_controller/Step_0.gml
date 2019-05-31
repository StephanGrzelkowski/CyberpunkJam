/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E"))
{
	if pos_menu = 1
	{
		room_goto_next()
	}
	else 
	{
		game_end()	
	}	
}