event_inherited();

if room == rm_start {
	
	if keyboard_check_pressed(vk_space) {
		room_goto(rm_game)
	}
} else if room == rm_game {
	if keyboard_check_pressed(vk_left) {
		room_goto(rm_start)
		
		
	}
}
