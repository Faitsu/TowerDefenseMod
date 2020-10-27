if WAVE_START{
	if gen_wave{
		gen_wave = false
	
		enemy_to_gen = NUM_ENEMY
		gen_timer = 0
	}

	gen_timer -= 1*GAME_SPD
	if gen_timer<=0{
		random_gen_num  = irandom_range(1,4);
		if enemy_to_gen >0{ 
			
			if(random_gen_num <= 3 || boss_bois >= max_boss_bois){
				instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
										gen_y + irandom_range(-gen_y_var,gen_y_var),
										0,obj_enemy_1)
			}
			if(random_gen_num == 4 && (boss_bois < max_boss_bois)){
				instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
										gen_y + irandom_range(-gen_y_var,gen_y_var),
										0,obj_enemy_2)
				boss_bois += 1;
			}
			enemy_to_gen -= 1
			gen_timer = time_btwn_gen
		}
	}
}

if keyboard_check_pressed(vk_space){
	if WAVE_START{
		WAVE_START = false
		instance_destroy(obj_debug_bullet)
		instance_destroy(obj_debug_enemy)
	}else{
		WAVE_START = true
		gen_wave = true	
		PLAYER_HP = PLAYER_HP_MAX
		obj_debug_tower.alarm[1]=1	// reloads ammo
	}
}