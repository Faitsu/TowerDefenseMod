if keyboard_check_pressed(vk_escape){
	room_goto(rm_game)	
}

if keyboard_check_pressed(ord("1")){CUR_GAME_SPD_SET = 0}
if keyboard_check_pressed(ord("2")){CUR_GAME_SPD_SET = 1}
if keyboard_check_pressed(ord("3")){CUR_GAME_SPD_SET = 2}


GAME_SPD = game_spd_set[CUR_GAME_SPD_SET]

if PLAYER_HP<0{PLAYER_HP=0}
player_hp_disp = lerp(player_hp_disp,PLAYER_HP,0.05)


