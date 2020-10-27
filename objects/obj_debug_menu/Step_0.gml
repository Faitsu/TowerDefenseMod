if keyboard_check_pressed(vk_down){ cur_debug_sel +=1 }
if keyboard_check_pressed(vk_up){ cur_debug_sel -=1 }

if cur_debug_sel > total_debug{cur_debug_sel = 0}
if cur_debug_sel < 0 {cur_debug_sel = total_debug}


if keyboard_check(vk_shift){
	add_mod = 1
}else{ add_mod = 0}
if keyboard_check_pressed(vk_left){
	debug_setting[cur_debug_sel] -= debug_add[cur_debug_sel,add_mod]
}
if keyboard_check_pressed(vk_right){
	debug_setting[cur_debug_sel] += debug_add[cur_debug_sel,add_mod]
}


if keyboard_check_pressed(vk_space){
	if WAVE_START{
		WAVE_START = false
		instance_destroy(obj_debug_bullet)
		instance_destroy(obj_debug_enemy)
	}else{
		WAVE_START = true
		obj_debug_enemy_gen.gen_wave = true	
		PLAYER_HP = PLAYER_HP_MAX
		obj_debug_tower.alarm[1]=1	// reloads ammo
	}
}




//________________

z=0
PLAYER_HP_MAX = debug_setting[z]
z+=1
obj_debug_tower.atk_range = debug_setting[z]
z+=1
obj_debug_tower.atk_reload = debug_setting[z]
z+=1
obj_debug_tower.shot_num_max = debug_setting[z]
z+=1
obj_debug_tower.shot_cooldown = debug_setting[z]
z+=1
obj_debug_tower.shot_spd = debug_setting[z]
z+=1
obj_debug_tower.miss_chance = debug_setting[z]
z+=1
obj_debug_tower.crit_chance = debug_setting[z]
z+=1
obj_debug_tower.shot_crit_mult = debug_setting[z]
z+=1
obj_debug_tower.shot_dmg_min = debug_setting[z]
z+=1
obj_debug_tower.shot_dmg_max = debug_setting[z]
z+=1
obj_debug_tower.shot_dmg_bonus = debug_setting[z]

z+=1
enemy_hp = debug_setting[z]
z+=1
enemy_mspd = debug_setting[z]
z+=1
enemy_dmg_min = debug_setting[z]
z+=1
enemy_dmg_max = debug_setting[z]
z+=1
NUM_ENEMY = debug_setting[z]
z+=1
obj_debug_enemy_gen.time_btwn_gen = debug_setting[z]

