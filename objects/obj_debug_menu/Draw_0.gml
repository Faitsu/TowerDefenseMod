draw_set_alpha(1)
draw_set_valign(fa_top)
for(i=0;i<=total_debug;i+=1){
	draw_set_color(c_yellow)
	draw_set_halign(fa_left)
	draw_text(debug_x+16,debug_y+(debug_yspc*i),debug_setting[i])
	
	if i==cur_debug_sel{
		draw_set_color(c_white)
		draw_rectangle(debug_x-4,debug_y+(debug_yspc*i)+4,
						debug_x+4,debug_y+(debug_yspc*i)+18,
						false)
	}else
	if i<=11{
		draw_set_color(c_teal) // player/tower
	}else{
		draw_set_color(c_fuchsia) // enemies
	}
	
	draw_set_halign(fa_right)
	draw_text(debug_x-8,debug_y+(debug_yspc*i),debug_setting_name[i])
	
	draw_set_halign(fa_center)
	draw_text(debug_x,debug_y+(debug_yspc*i),":")
	
	
	
}
draw_set_color(c_white)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text(12,16,"Press UP and DOWN to select a setting.\nPress RIGHT to increase, LEFT to decrease.\nHold SHIFT to change by a larger amount.")


draw_set_valign(fa_bottom)
draw_text(12,room_height-16,"GAME SPEED : " + string(GAME_SPD) +string("x"))
draw_text(12,room_height-36,"Use 1-4 to change Game Speed")

draw_text(12,room_height-96,"press SPACE to turn enemies on/off")
if WAVE_START{
	draw_set_color(c_fuchsia)
	draw_text(12,room_height-76,"<< WAVE ACTIVE >>")
}