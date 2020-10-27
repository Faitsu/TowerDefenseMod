draw_set_alpha(1)
draw_set_color(bg_col)
draw_rectangle(0,0,room_width,room_height,false)


if room==rm_debug{
	draw_set_alpha(0.4)
	draw_set_color(c_red)
	draw_path(path_enemy_1,gen_x+2,gen_y,false)
	draw_path(path_enemy_2,gen_x-2,gen_y,false)
}