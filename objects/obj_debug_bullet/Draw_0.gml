if miss_anim_on{
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x,y,"MISS!")
	
	
}else{

	for(i=0;i<num_trails;i+=1){
		draw_sprite_ext(sprite_index,0,trail_x[i],trail_y[i],trail_alpha[i],trail_alpha[i],0,c_white,trail_alpha[i])
	
	}

	draw_self()
}