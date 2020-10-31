depth = -y

if slow {
	if(alarm[0] < 0){
		alarm[0] = 60;
	}
	sprite_index = spr_enemy;
	mspd = slowed_mspd;
}
else{
	sprite_index = original_sprite;
}

hp_disp = lerp(hp_disp,hp,0.05)
path_speed = mspd *GAME_SPD

if y > room_height{
	PLAYER_HP -= my_dmg
	effect_create_above(ef_ring,x,y,1,c_red)
	instance_destroy()

}
if burn{
	if(alarm[1] < 0){
		alarm[1] = 60; //one second
	}	
	sprite_index = spr_enemy;
	if(timer >= 2){
		hp = hp - 3;
		timer = 0;
	}
	else{
		timer = timer + 1;
	}
}
else{
	sprite_index = original_sprite;
}


hp_draw_x = x - hp_draw_w/2
hp_draw_y = y + 32*my_scale

if hp < 1{
	effect_create_above(ef_explosion,x,y,floor(my_scale),c_red)

	instance_destroy()
}