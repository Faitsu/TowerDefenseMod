 //	Variables with comments can be overwritten in the child object,
//	these are the ones you'll change to make your own enemies!

hp_max = 850	// maximum health

mspd = 0.55	// movement speed

orig_mspd = mspd;
// enemy deals damage to play when it reaches the end of the road
// make these the same if you don't want randomness here
my_dmg_min = 5	// minimum dmg
my_dmg_max = 6	// maximum dmg


// make my_scale = 1 if you don't want the sprite to scale w/ hp
my_scale = hp_max/1000		

enemType = objType.GRASS;
original_sprite = spr_enemy_grass;
event_inherited();
