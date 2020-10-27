depth = -y


hp_disp = lerp(hp_disp,hp,0.05)
path_speed = mspd *GAME_SPD

if y > room_height{
	PLAYER_HP -= my_dmg
	effect_create_above(ef_ring,x,y,1,c_red)
	instance_destroy()

}

hp_draw_x = x - hp_draw_w/2
hp_draw_y = y + 32*my_scale

if hp < 1{
	effect_create_above(ef_explosion,x,y,floor(my_scale),c_red)

	instance_destroy()
}