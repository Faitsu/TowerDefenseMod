if room = rm_start {
	draw_set_color(c_white)
	draw_set_halign(fa_right)
	draw_text(200, 50,  "Buy your towers!")
	draw_text(500, 80, "Press the specified key to buy the tower you want")
	
	draw_set_color(c_yellow)
	draw_text(400, 50, "GOLD LEFT: " + string(CURRENCY_AMT))
	
	
	draw_set_color(c_gray)
	draw_set_alpha(0.5)
	draw_rectangle(50, 100, 620, 550, false)
	

	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_text(575, 580, "Once you're all set, press SPACEBAR to set up your towers!")
	
	draw_text(230, 125, "(1) WATER TOWERS: " + string(NUM_WATER_TOWERS))
	draw_text(230, 145, "(2)  FIRE TOWERS: " + string(NUM_FIRE_TOWERS))
	draw_text(230, 165, "(3) GRASS TOWERS: " + string(NUM_GRASS_TOWERS))
	
	draw_text(600, 125, "(Q) MINI WATER TOWERS: " + string(NUM_S_WATER_TOWERS))
	draw_text(600, 145, "(W)  MINI FIRE TOWERS: " + string(NUM_S_FIRE_TOWERS))
	draw_text(600, 165, "(E) MINI GRASS TOWERS: " + string(NUM_S_GRASS_TOWERS))


	draw_set_color(c_yellow)
	draw_sprite(spr_tower_water, -1, 130, 220)
	draw_text(157, 280, "10 GOLD")
	
	draw_sprite(spr_tower_fire, -1, 130, 340)
	draw_text(157, 400, "15 GOLD")

	draw_sprite(spr_tower_grass, -1, 130, 460)
	draw_text(157, 520, "20 GOLD")
	
	draw_sprite(spr_tower_water_s, -1, 475, 220)
	draw_text(504, 280, "5 GOLD")
	
	draw_sprite(spr_tower_fire_s, -1, 475, 340)
	draw_text(504, 400, "8 GOLD")

	draw_sprite(spr_tower_grass_s, -1, 475, 460)
	draw_text(504, 520, "10 GOLD")
	
	draw_set_color(c_white)
	draw_rectangle(640, 100, 1100, 300, false)
	
	draw_set_color(c_black)
	draw_text(790, 130, "SPECIAL EFFECTS")
	
	draw_set_color(make_color_rgb(229, 49, 22))
	draw_text(960, 165, "FIRE TOWERS apply temporary burns,")
	draw_text(987, 190, "dealing damage over time to an enemy.")
	
	draw_set_color(make_color_rgb(0, 127, 62))
	draw_text(951, 240, "GRASS TOWERS release spores which")
	draw_text(1083, 260, "temporarily slow down enemies in area of effect.")


} else if room == rm_game {
	
	draw_set_alpha(1)
	draw_set_color(c_yellow)
	draw_text(200, 50, "GOLD LEFT: " + string(CURRENCY_AMT))
	
	
	if not WAVE_START {
		
		draw_set_color(c_gray)
		draw_set_alpha(0.5)
		draw_rectangle(10, 20, 275, 280, false)
	
		draw_set_alpha(1)
	
		draw_set_color(c_yellow)

		draw_set_color(c_white)
		draw_text(230, 100, "(1) WATER TOWERS: " + string(NUM_WATER_TOWERS))
		draw_text(230, 120, "(2)  FIRE TOWERS: " + string(NUM_FIRE_TOWERS))
		draw_text(230, 140, "(3) GRASS TOWERS: " + string(NUM_GRASS_TOWERS))
	
		draw_text(250, 190, "(Q) MINI WATER TOWERS: " + string(NUM_S_WATER_TOWERS))
		draw_text(250, 210, "(W)  MINI FIRE TOWERS: " + string(NUM_S_FIRE_TOWERS))
		draw_text(250, 230, "(E) MINI GRASS TOWERS: " + string(NUM_S_GRASS_TOWERS))
		
		draw_text(310, 305, "Toggle between which tower type to")
		draw_text(325, 325, "place by clicking the specified key.")
		draw_text(290, 355, "Click on any provided location")
		draw_text(240, 375, "to place your tower.")
		
		draw_text(250, 405, "To remove a tower, just")
		draw_text(220, 425, "click on it again.")
		
		draw_text(230, 455, "Press SPACEBAR when")
		draw_text(230, 475, "Press SHIFT to reset game" )
		draw_text(230, 495, "you're ready to go!")
		
		if WATER_TOGGLED {
			tower_type = "WATER"
		} else if FIRE_TOGGLED {
			tower_type = "FIRE"
		} else if GRASS_TOGGLED {
			tower_type = "GRASS"
		} else if S_WATER_TOGGLED {
			tower_type = "MINI WATER"
		} else if S_FIRE_TOGGLED {
			tower_type = "MINI FIRE"
		} else if S_GRASS_TOGGLED {
			tower_type = "MINI GRASS"
		}
 
		
		draw_set_color(c_aqua)
		draw_text(240, 270, "TOGGLED: " + tower_type + " TOWER")
		
		draw_text(240, room_height - 100, "Press the LEFT ARROW key")
		draw_text(240, room_height - 80, "to visit the shop again!")


	} else {
		draw_set_color(c_white)
		draw_text(270, 90, "Press SPACEBAR to pause wave" )
		draw_text(270, 110, "Press SHIFT to reset game" )
	} 

	
	
}