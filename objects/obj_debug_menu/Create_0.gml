depth = -1000

cur_debug_sel = 0

debug_x = 175
debug_y = 100
debug_yspc = 24


z=0
debug_setting_name[z] = "Player HP"
debug_setting[z] = PLAYER_HP_MAX
debug_add[z,0] = 1
debug_add[z,1] = 5

z+=1
debug_setting_name[z] = "Attack Range"
debug_setting[z] = obj_debug_tower.atk_range
debug_add[z,0] = 5
debug_add[z,1] = 25

z+=1
debug_setting_name[z] = "Reload Time"
debug_setting[z] = obj_debug_tower.atk_reload
debug_add[z,0] = 5
debug_add[z,1] = 30

z+=1
debug_setting_name[z] = "Shots per Attack"
debug_setting[z] = obj_debug_tower.shot_num_max
debug_add[z,0] = 1
debug_add[z,1] = 5

z+=1
debug_setting_name[z] = "Frames btwn Shots"
debug_setting[z] = obj_debug_tower.shot_cooldown
debug_add[z,0] = 5
debug_add[z,1] = 15

z+=1
debug_setting_name[z] = "Bullet Speed"
debug_setting[z] = obj_debug_tower.shot_spd
debug_add[z,0] = 2
debug_add[z,1] = 8

z+=1
debug_setting_name[z] = "Miss Chance"
debug_setting[z] = obj_debug_tower.miss_chance
debug_add[z,0] = 1
debug_add[z,1] = 10

z+=1
debug_setting_name[z] = "Crit Chance"
debug_setting[z] = obj_debug_tower.crit_chance
debug_add[z,0] = 1
debug_add[z,1] = 10

z+=1
debug_setting_name[z] = "Crit Multiplier"
debug_setting[z] = obj_debug_tower.shot_crit_mult
debug_add[z,0] = 1
debug_add[z,1] = 5

z+=1
debug_setting_name[z] = "Min Dmg"
debug_setting[z] = obj_debug_tower.shot_dmg_min
debug_add[z,0] = 5
debug_add[z,1] = 20

z+=1
debug_setting_name[z] = "Max Dmg"
debug_setting[z] = obj_debug_tower.shot_dmg_max
debug_add[z,0] = 5
debug_add[z,1] = 20

z+=1
debug_setting_name[z] = "Lost HP Bonus Dmg"
debug_setting[z] = obj_debug_tower.shot_dmg_bonus
debug_add[z,0] = 5
debug_add[z,1] = 20

//__________________
enemy_hp = 750
enemy_mspd = 0.5
enemy_dmg_min = 5
enemy_dmg_max = 5


z+=1
debug_setting_name[z] = "Enemy HP"
debug_setting[z] = enemy_hp
debug_add[z,0] = 25
debug_add[z,1] = 100

z+=1
debug_setting_name[z] = "Enemy Speed"
debug_setting[z] = enemy_mspd
debug_add[z,0] = 0.5
debug_add[z,1] = 2

z+=1
debug_setting_name[z] = "Enemy Dmg Min"
debug_setting[z] = enemy_dmg_min
debug_add[z,0] = 1
debug_add[z,1] = 5

z+=1
debug_setting_name[z] = "Enemy Dmg Max"
debug_setting[z] = enemy_dmg_max
debug_add[z,0] = 1
debug_add[z,1] = 5

z+=1
debug_setting_name[z] = "Enemies per Wave"
debug_setting[z] = NUM_ENEMY
debug_add[z,0] = 1
debug_add[z,1] = 5

z+=1
debug_setting_name[z] = "Time btwn Enemies"
debug_setting[z] = obj_debug_enemy_gen.time_btwn_gen
debug_add[z,0] = 5
debug_add[z,1] = 15

total_debug = z

add_mod = 0


















