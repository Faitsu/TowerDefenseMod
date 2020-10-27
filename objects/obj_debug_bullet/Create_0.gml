#region Don't Change
depth = -1000

my_tower = noone

mspd = 0

hspd = 0
vspd = 0
x_remainder = 0
y_remainder = 0

targ_x = x
targ_y = y


my_target = noone
follow_enemy = false

collide_range = 10

shot_hit = false
shot_missed = false
shot_crit = false

miss_anim_on = false
miss_anim_timer = 60
miss_anim_spd = 0.25

#endregion
//__________________________
num_trails = 10
for(i=0;i<num_trails;i+=1){
	trail_x[i]=x
	trail_y[i]=y
	trail_alpha[i] = 1 - i*(1/num_trails)

}
trail_fade = 0.2