if room == rm_start {
	
	if keyboard_check_pressed(ord("1")) {
	
		if CURRENCY_AMT - WATER_TOWER_PRICE >= 0 {
			CURRENCY_AMT -= WATER_TOWER_PRICE
			NUM_WATER_TOWERS += 1
		}
		
	} else if keyboard_check_pressed(ord("2")) {
		
		if CURRENCY_AMT - FIRE_TOWER_PRICE >= 0 {
			CURRENCY_AMT -= FIRE_TOWER_PRICE
			NUM_FIRE_TOWERS += 1
		}

	} else if keyboard_check_pressed(ord("3")) {
		if CURRENCY_AMT - GRASS_TOWER_PRICE >= 0 {
			CURRENCY_AMT -= GRASS_TOWER_PRICE
			NUM_GRASS_TOWERS += 1
		}
	} else if keyboard_check_pressed(ord("Q")) {
		if CURRENCY_AMT - S_WATER_TOWER_PRICE >= 0 {
			CURRENCY_AMT -= S_WATER_TOWER_PRICE
			NUM_S_WATER_TOWERS += 1
		}
	} else if keyboard_check_pressed(ord("W")) {
		if CURRENCY_AMT - S_FIRE_TOWER_PRICE >= 0 {
			CURRENCY_AMT -= S_FIRE_TOWER_PRICE
			NUM_S_FIRE_TOWERS += 1
		}
	} else if keyboard_check_pressed(ord("E")) {
		if CURRENCY_AMT - S_GRASS_TOWER_PRICE >= 0 {
			CURRENCY_AMT -= S_GRASS_TOWER_PRICE
			NUM_S_GRASS_TOWERS += 1
		}
	} 

} else if room == rm_game {
	
	// is there a better way to do this T __ T
	if keyboard_check_pressed(ord("1")) {
		obj_tower_type = obj_tower_1_water
		WATER_TOGGLED = true
		
		FIRE_TOGGLED = false
		GRASS_TOGGLED = false
		S_FIRE_TOGGLED = false
		S_WATER_TOGGLED = false
		S_GRASS_TOGGLED = false 
	} else if keyboard_check_pressed(ord("2")) {
		obj_tower_type = obj_tower_1_fire
		FIRE_TOGGLED = true
		
		WATER_TOGGLED = false
		GRASS_TOGGLED = false
		S_FIRE_TOGGLED = false
		S_WATER_TOGGLED = false
		S_GRASS_TOGGLED = false 
	} else if keyboard_check_pressed(ord("3")) {
		obj_tower_type = obj_tower_1_grass
		GRASS_TOGGLED = true
		
		FIRE_TOGGLED = false
		WATER_TOGGLED = false
		S_FIRE_TOGGLED = false
		S_WATER_TOGGLED = false
		S_GRASS_TOGGLED = false 
	} else if keyboard_check_pressed(ord("Q")) {
		obj_tower_type = obj_tower_2_water
		S_WATER_TOGGLED = true

		FIRE_TOGGLED = false
		WATER_TOGGLED = false
		GRASS_TOGGLED = false
		S_FIRE_TOGGLED = false
		S_GRASS_TOGGLED = false 

	} else if keyboard_check_pressed(ord("W")) {
		obj_tower_type = obj_tower_2_fire
		S_FIRE_TOGGLED = true
		
		FIRE_TOGGLED = false
		WATER_TOGGLED = false
		GRASS_TOGGLED = false
		S_WATER_TOGGLED = false
		S_GRASS_TOGGLED = false 
		
	} else if keyboard_check_pressed(ord("E")) {
		obj_tower_type = obj_tower_2_grass
		S_GRASS_TOGGLED = true
		
		FIRE_TOGGLED = false
		WATER_TOGGLED = false
		GRASS_TOGGLED = false
		S_WATER_TOGGLED = false
		S_FIRE_TOGGLED = false 
	} 
	
	
	
	if mouse_check_button_pressed(mb_left) and collision_circle(mouse_x, mouse_y, 10, obj_tower_location, false, false) 
		and not WAVE_START{
		nearest_location = instance_nearest(mouse_x, mouse_y, obj_tower_location)
	
		
		if not nearest_location.has_tower {
			if obj_tower_type = obj_tower_1_water and NUM_WATER_TOWERS > 0 {
				instance_create_depth(nearest_location.x, nearest_location.y, 0, obj_tower_type)
				NUM_WATER_TOWERS -= 1
			} else 	if obj_tower_type = obj_tower_1_fire and NUM_FIRE_TOWERS > 0 {
				instance_create_depth(nearest_location.x, nearest_location.y, 0, obj_tower_type)
				NUM_FIRE_TOWERS -= 1
			} else if obj_tower_type = obj_tower_1_grass and NUM_GRASS_TOWERS > 0 {
				instance_create_depth(nearest_location.x, nearest_location.y, 0, obj_tower_type)
				NUM_GRASS_TOWERS -= 1
			} else if obj_tower_type = obj_tower_2_water and NUM_S_WATER_TOWERS > 0 {
				instance_create_depth(nearest_location.x, nearest_location.y, 0, obj_tower_type)
				NUM_S_WATER_TOWERS -= 1
			} else if obj_tower_type = obj_tower_2_fire and NUM_S_FIRE_TOWERS > 0 {
				instance_create_depth(nearest_location.x, nearest_location.y, 0, obj_tower_type)
				NUM_S_FIRE_TOWERS -= 1
			} else if obj_tower_type = obj_tower_2_grass and NUM_S_GRASS_TOWERS > 0 {
				instance_create_depth(nearest_location.x, nearest_location.y, 0, obj_tower_type)
				NUM_S_GRASS_TOWERS -= 1
			}
			
			nearest_location.has_tower = true
			
		} else {
			
			nearest_tower = instance_nearest(mouse_x, mouse_y, obj_tower)
			if collision_circle(mouse_x, mouse_y, 10, obj_tower, false, false) {
				
				if nearest_tower.sprite_index == spr_tower_water {
					NUM_WATER_TOWERS += 1
				} else if nearest_tower.sprite_index == spr_tower_fire {
					NUM_FIRE_TOWERS += 1
				} else if nearest_tower.sprite_index == spr_tower_grass {
					NUM_GRASS_TOWERS += 1
				} else if nearest_tower.sprite_index == spr_tower_water_s {
					NUM_S_WATER_TOWERS += 1
				} else if nearest_tower.sprite_index == spr_tower_fire_s {
					NUM_S_FIRE_TOWERS += 1
				} else if nearest_tower.sprite_index == spr_tower_grass_s {
					NUM_S_GRASS_TOWERS += 1
				}
				
				instance_deactivate_object(nearest_tower)
				
			}
			nearest_location.has_tower = false


		}
	}
	
}