/// @description Insert description here
// You can write your code in this editor
if pos_menu == 1
{
	draw_sprite(spr_start, 1, room_width / 2, room_height / 2 + 30 )
	draw_sprite(spr_exit, 0, room_width / 2, room_height / 2 + 80)
}
else 
{
	draw_sprite(spr_start, 0, room_width / 2, room_height / 2  + 30 )
	draw_sprite(spr_exit, 1, room_width / 2, room_height / 2 + 80 )
}

draw_sprite(spr_tutorial,0,  10, 10)