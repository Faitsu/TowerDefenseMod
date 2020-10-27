if !WAVE_START{
	have_target = false	
}

if !shot_ok{	// timer between bullets
	shot_cooldown_timer -= 1*GAME_SPD
	if shot_cooldown_timer<=0{	
		shot_ok = true	
	}
}

if !atk_ok{		// timer for reloading
	atk_reload_timer -= 1*GAME_SPD
	if atk_reload_timer<=0{	
		atk_ok = true
		shot_num = shot_num_max
	}
}


shot_dmg_bonus_apply = (1-(PLAYER_HP/PLAYER_HP_MAX))*10*shot_dmg_bonus

if have_target{
	
	if instance_exists(my_target){
		if atk_ok{
			if shot_ok{
				if shot_num > 0{
					doShot(id,x,y,my_target,my_target.x,my_target.y)
					shot_num -= 1
					shot_cooldown_timer = shot_cooldown
					shot_ok = false
					if shot_num < 1{
						atk_ok = false
						atk_reload_timer = atk_reload
					}
				}
			}
		}
		
		if point_distance(x,y,my_target.x,my_target.y) > atk_range{
			have_target = false	
		}
	}else{
		my_target = noone
		have_target = false
	}
	
}else{
	if collision_circle(x,y,atk_range,obj_debug_enemy,false,false){
		my_target = instance_nearest(x,y,obj_debug_enemy)
		have_target = true
	}	
}