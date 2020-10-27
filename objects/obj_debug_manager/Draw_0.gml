draw_set_alpha(1)

draw_set_color(c_red)
draw_rectangle(hp_draw_x,hp_draw_y,
				hp_draw_x + hp_draw_w*(player_hp_disp/PLAYER_HP_MAX),
				hp_draw_y + hp_draw_h,
				false)

draw_set_color(c_lime)
draw_rectangle(hp_draw_x,hp_draw_y,
				hp_draw_x + hp_draw_w*(PLAYER_HP/PLAYER_HP_MAX),
				hp_draw_y + hp_draw_h,
				false)

draw_set_valign(fa_bottom)
if PLAYER_HP>0{
	draw_text(hp_draw_x,hp_draw_y-4,string(PLAYER_HP) + " / " + string(PLAYER_HP_MAX))
}else{
	draw_set_color(c_red)
	draw_text(hp_draw_x,hp_draw_y-4,"DEAD !!")
}

draw_set_color(c_yellow)
draw_rectangle(hp_draw_x,hp_draw_y,
				hp_draw_x + hp_draw_w,
				hp_draw_y + hp_draw_h,
				true)