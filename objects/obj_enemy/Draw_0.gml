draw_self()

draw_set_alpha(1)

draw_set_color(c_red)
draw_rectangle(hp_draw_x,hp_draw_y,hp_draw_x + hp_draw_w*(hp_disp/hp_max),hp_draw_y +hp_draw_h,false)

draw_set_color(c_yellow)
draw_rectangle(hp_draw_x,hp_draw_y,hp_draw_x + hp_draw_w*(hp/hp_max),hp_draw_y +hp_draw_h,false)


draw_set_color(c_white)
draw_rectangle(hp_draw_x,hp_draw_y,hp_draw_x + hp_draw_w,hp_draw_y +hp_draw_h,true)