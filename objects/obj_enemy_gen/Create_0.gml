/// @description Insert description here
// You can write your code in this editor
event_inherited();

depth=1
bg_col = make_color_rgb(10,27,7)

globalvar WAVE_START;
WAVE_START = false

globalvar NUM_ENEMY;
NUM_ENEMY = 12

globalvar NUM_WAVES;
NUM_WAVES = 0;

random_gen_num = 0;

enemy_to_gen = 0
gen_wave = false
gen_timer = 0
time_btwn_gen = 120

max_boss_bois = 2;
boss_bois = 0;



gen_x = room_width/2
gen_y = -32

gen_x_var = 8
gen_y_var = 8
