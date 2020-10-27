if WAVE_START{
	if gen_wave{
		gen_wave = false
	
		enemy_to_gen = NUM_ENEMY
		gen_timer = 0
	}

	gen_timer -= 1*GAME_SPD
	if gen_timer<=0{
	
		if enemy_to_gen >0{ 
	
			instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
									gen_y + irandom_range(-gen_y_var,gen_y_var),
									0,obj_debug_enemy)
	
			enemy_to_gen -= 1
			gen_timer = time_btwn_gen
		}
	}
}

