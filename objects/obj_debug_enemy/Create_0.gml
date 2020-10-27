 //	Variables with comments can be overwritten in the child object,
//	these are the ones you'll change to make your own enemies!

hp_max = obj_debug_menu.enemy_hp	// maximum health

mspd = obj_debug_menu.enemy_mspd	// movement speed

// enemy deals damage to play when it reaches the end of the road
// make these the same if you don't want randomness here
my_dmg_min = obj_debug_menu.enemy_dmg_min	// minimum dmg
my_dmg_max = obj_debug_menu.enemy_dmg_max	// maximum dmg


// make my_scale = 1 if you don't want the sprite to scale w/ hp
my_scale = hp_max/1000		





//________________________________
// Don't change these :)
hp = hp_max
hp_disp = hp_max

my_dmg = irandom_range(my_dmg_min,my_dmg_max)

path_start(choose(path_enemy_1,path_enemy_2),mspd,path_action_stop,false)

my_scale = clamp(my_scale,0.25,1.5)
image_xscale = my_scale
image_yscale = my_scale

hp_draw_w = 64*my_scale
hp_draw_h = 12*my_scale

hp_draw_x = x - hp_draw_w/2
hp_draw_y = y + 40*my_scale