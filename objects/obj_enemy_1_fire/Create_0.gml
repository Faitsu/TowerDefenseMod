 //	Variables with comments can be overwritten in the child object,
//	these are the ones you'll change to make your own enemies!

hp_max = 500	// maximum health

mspd = 0.7	// movement speed

orig_mspd = mspd;

// enemy deals damage to play when it reaches the end of the road
// make these the same if you don't want randomness here
my_dmg_min = 3	// minimum dmg
my_dmg_max = 4	// maximum dmg


// make my_scale = 1 if you don't want the sprite to scale w/ hp
my_scale = hp_max/1000		

enemType = objType.FIRE;
original_sprite = spr_enemy_fire;
event_inherited();