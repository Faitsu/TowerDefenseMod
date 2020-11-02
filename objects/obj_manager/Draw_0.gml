event_inherited();

if room == rm_game {
	draw_set_halign(fa_right);
	draw_set_color(c_white);
	draw_text(room_width -10,40,"WAVE:"+string(NUM_WAVES));
}
