// draw_timer(x,y)
draw_set_color(c_gray);
if (oTrialLogic.timer_started == 1) then draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text_border(argument0-12,argument1+3,time_string(oTrialLogic.timer));
// bye bye
/*
draw_set_halign(fa_left);
draw_text_border(argument0-12,argument1+3,time_string_ms(oTrialLogic.timer));
*/
