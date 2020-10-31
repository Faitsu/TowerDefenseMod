/// @description Insert description here
// You can write your code in this editor
if follow_enemy{
	if instance_exists(my_target){
		targ_x = my_target.x
		targ_y = my_target.y
		targ_type = my_target.enemType;
		
	}else{
		follow_enemy = false
	}
}
hspd = lengthdir_x(mspd,point_direction(x,y,targ_x,targ_y)) *GAME_SPD
vspd = lengthdir_y(mspd,point_direction(x,y,targ_x,targ_y)) *GAME_SPD

if miss_anim_on{
	y -= miss_anim_spd
	miss_anim_timer -=1
	if miss_anim_timer <= 0{
		instance_destroy()	
	}
}else{
	shotCollide()
}

if !shot_hit{
	if point_distance(x,y,targ_x,targ_y) < collide_range{
		if instance_exists(my_target){
			if my_tower.shot_splash{
				// for area of effect	
			}else{
				if collision_circle(x,y,collide_range,my_target,false,false){
					shot_hit = true
		
				}
	
			}
		}else{
			instance_destroy()	
		}

	}
}

if shot_hit{

	var _dmg = irandom_range(my_tower.shot_dmg_min,my_tower.shot_dmg_max)+ my_tower.shot_dmg_bonus_apply
	if(TypeMatchup(targ_type)){
		_dmg = _dmg * 1.25; //increase damage if we have super effective damage
	}
	else{
		_dmg = _dmg * .85; //decrease otherwise because the types are not very effective
	}
	
	//status effect code that might just be to balance out
	
	random_gen = irandom_range(1,20);
	//Chance to put on status effect
	
	if(random_gen >= 10){// 1/20 chance to put on a status effect
		if(bType == objType.FIRE){
			my_target.burn = true;
			}
		else if(bType == objType.GRASS){my_target.slow = true;}
		
	}
	
	var _miss_roll = random_range(0,100)
	var _crit_roll = random_range(0,100)
	if _miss_roll < my_tower.miss_chance{
		shot_missed = true	
	}else{
		if _crit_roll < my_tower.crit_chance{
			shot_crit = true	
		}
	}
	
	if shot_missed{
		miss_anim_on = true
		shot_hit = false
	}else
	if shot_crit{
		//effect_create_above(ef_smoke,x,y,1,c_teal)
		if(bType == objType.FIRE){effect_create_above(ef_explosion,x,y,1,c_orange)}
		else if(bType == objType.GRASS){effect_create_above(ef_firework,x,y,1,c_lime)}
		else if(bType == objType.WATER){effect_create_above(ef_ellipse,x,y,1,c_teal)}
		effect_create_above(ef_star,x,y,1,c_yellow)
		if(TypeMatchup(targ_type)){
			effect_create_above(ef_spark,x,y,1,c_white)
		}
		my_target.hp -= _dmg * my_tower.shot_crit_mult
		instance_destroy()
	}else{
		if(TypeMatchup(targ_type)){
			effect_create_above(ef_spark,x,y,1,c_white)
		}
		//effect_create_above(ef_smoke,x,y,1,c_teal)
		if(bType == objType.FIRE){effect_create_above(ef_explosion,x,y,1,c_orange)}
		else if(bType == objType.GRASS){effect_create_above(ef_firework,x,y,1,c_lime)}
		else if(bType == objType.WATER){effect_create_above(ef_ellipse,x,y,1,c_teal)}
		my_target.hp -= _dmg
		instance_destroy()
	}
	
	
}

for(i=0;i<num_trails;i+=1){
	
	trail_alpha[i] -= trail_fade
	if trail_alpha[i] <=0{
		trail_alpha[i] = 1
		trail_x[i]=x
		trail_y[i]=y
	}

}


