
function doShot(_id,_x,_y,_enemy,_targ_x,_targ_y){
	
	var this_shot = instance_create_depth(_x,_y,0,tower_bullet_type)
	this_shot.my_tower = _id
	this_shot.my_target = _enemy
	
	this_shot.targ_x = _targ_x
	this_shot.targ_y = _targ_y
	
	this_shot.mspd = shot_spd
	this_shot.follow_enemy = shot_follows		// tell bullet to follow enemy if it should
	
}