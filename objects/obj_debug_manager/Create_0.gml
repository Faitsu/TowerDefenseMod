room_speed = 60
depth = -500
randomize()


globalvar GAME_SPD;
globalvar CUR_GAME_SPD_SET;
GAME_SPD = 1
CUR_GAME_SPD_SET = 0
game_spd_set[0] = 1
game_spd_set[1] = 1.5
game_spd_set[2] = 2
game_spd_set[3] = 0



hp_draw_w = 256
hp_draw_h = 32

hp_draw_x = room_width - 12 - hp_draw_w
hp_draw_y = room_height - 12 - hp_draw_h

globalvar PLAYER_HP;
globalvar PLAYER_HP_MAX;
PLAYER_HP_MAX = 10
PLAYER_HP = PLAYER_HP_MAX
player_hp_disp = PLAYER_HP_MAX