
if show_atk_range{
	draw_set_color(c_yellow)
	draw_set_alpha(0.02)
	draw_circle(x,y,atk_range,false)
	draw_set_alpha(0.1)
	draw_circle(x,y,atk_range,true)	
}

draw_set_alpha(1)
draw_self()
