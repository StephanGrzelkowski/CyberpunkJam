/// @description Insert description here
// You can write your code in this editor
arr_sprites[0] = eff_lightning1
arr_sprites[1] = eff_lightning2
arr_sprites[2] = eff_lightning3
arr_sprites[3] = eff_lightning4
arr_sprites[4] = eff_lightning5

sprite_index = arr_sprites[irandom(4)]

image_angle = irandom(3) * 90

alarm[0] = 0.25 * room_speed