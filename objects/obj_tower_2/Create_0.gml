/// @description Insert description here
// You can write your code in this editor
event_inherited();

//	Variables with comments can be overwritten in the child object,
//	these are the ones you'll change to make your own towers!

atk_range = 300		// maximum range
show_atk_range = true	// whether to show radius on screen

atk_reload = 90	// time between attacks

shot_num_max = 3	// number of shots before reload

shot_cooldown = 5	// time between shots (if more than one)

shot_spd = 8		// speed of bullet

shot_follows = true	// if shot follows the target or just goes to the location

miss_chance = 10		// the % chance to miss
crit_chance = 20		// the % chance to critically hit

shot_splash = false	// if the bullet does damage in an area

shot_dmg_min = 15	// minimum damage of bullet
shot_dmg_max = 30	// maximum damage of bullet
shot_crit_mult = 2	// number damage is multiplied by on crit

shot_dmg_bonus = 10		// extra dmg per 10% hp missing
shot_dmg_bonus_apply = 0	// amount applied, calculated in Step