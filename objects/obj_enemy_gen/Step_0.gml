if WAVE_START{
	if gen_wave{
		gen_wave = false
	
		enemy_to_gen = NUM_ENEMY
		gen_timer = 0
	}

	gen_timer -= 1*GAME_SPD
	if gen_timer<=0{
		random_gen_num  = irandom_range(1,15);
		if enemy_to_gen >0{ 
			if(NUM_WAVES == 0){
				if(random_gen_num <= 8 || boss_bois >= max_boss_bois){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_1_fire)
				}
				else if((random_gen_num > 8 and random_gen_num <= 13 )){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_2_grass)
				}
				else if((random_gen_num > 13 and random_gen_num <= 15 )&& (boss_bois < max_boss_bois)){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_3_water)
					boss_bois += 1;
				}
			}
			else if(NUM_WAVES == 1){
				if(random_gen_num <= 6 || boss_bois >= max_boss_bois){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_1_fire)
				}
				else if((random_gen_num > 6 and random_gen_num <= 11 )){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_2_grass)
				}
				else if((random_gen_num > 11 and random_gen_num <= 15 )&& (boss_bois < max_boss_bois)){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_3_water)
					boss_bois += 1;
				}
			}
			else if(NUM_WAVES == 2){
				if(random_gen_num <= 4 || boss_bois >= max_boss_bois){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_1_fire)
				}
				else if((random_gen_num > 4 and random_gen_num <= 9 )){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_2_grass)
				}
				else if((random_gen_num > 9 and random_gen_num <= 15 )&& (boss_bois < max_boss_bois)){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_3_water)
					boss_bois += 1;
				}
			}
			
			if(NUM_WAVES == 3){
				if(random_gen_num <= 2 || boss_bois >= max_boss_bois){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_1_fire)
				}
				else if((random_gen_num > 2 and random_gen_num <= 7 )){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_2_grass)
				}
				else if((random_gen_num > 7 and random_gen_num <= 15 )&& (boss_bois < max_boss_bois)){
					instance_create_depth(gen_x + irandom_range(-gen_x_var,gen_x_var),
											gen_y + irandom_range(-gen_y_var,gen_y_var),
											0,obj_enemy_3_water)
					boss_bois += 1;
				}
			}
			
			enemy_to_gen -= 1
			gen_timer = time_btwn_gen
		}
		
		else if(ENEMY_KILLED >= NUM_ENEMY  && NUM_WAVES < 3){
			ENEMY_KILLED = 0;
			NUM_WAVES = NUM_WAVES + 1;
			enemy_to_gen = NUM_ENEMY;
			boss_bois = 0;
			max_boss_bois += 2;
		}
	}
}


if keyboard_check_pressed(vk_space) and instance_exists(obj_tower){
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

if keyboard_check_pressed(vk_shift) and instance_exists(obj_tower){//reset game
	WAVE_START = false
	instance_destroy(obj_debug_bullet)
	instance_destroy(obj_debug_enemy)
	instance_destroy(obj_tower)
	PLAYER_HP = PLAYER_HP_MAX
	
		
	NUM_WAVES = 0;
	enemy_to_gen = NUM_ENEMY;
	boss_bois = 0;
	max_boss_bois = 2;
	
	if(CURRENCY_AMT < 60){ //leting player keep the amount of money they had 
		CURRENCY_AMT = 60;
	}
	
	//reset turrets kept
	NUM_WATER_TOWERS = 0
	NUM_FIRE_TOWERS = 0
	NUM_GRASS_TOWERS = 0

	NUM_S_WATER_TOWERS = 0
	NUM_S_FIRE_TOWERS = 0
	NUM_S_GRASS_TOWERS = 0
	
	
	
		
	
}