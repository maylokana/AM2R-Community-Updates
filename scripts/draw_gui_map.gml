/// draw_gui_map(x, y)
/*
draw_background(bgGUIMapBG, argument0, argument1 + 4);
if (oControl.m1 != "0") draw_mapblock(argument0 + 16, argument1 + 12, string_char_at(oControl.m1, 1), string_char_at(oControl.m1, 2), string_char_at(oControl.m1, 3), string_char_at(oControl.m1, 4), string_char_at(oControl.m1, 5), string_char_at(oControl.m1, 6), oControl.dm1, string_char_at(oControl.m1, 7));
if (oControl.m2 != "0") draw_mapblock(argument0, argument1 + 4, string_char_at(oControl.m2, 1), string_char_at(oControl.m2, 2), string_char_at(oControl.m2, 3), string_char_at(oControl.m2, 4), string_char_at(oControl.m2, 5), string_char_at(oControl.m2, 6), oControl.dm2, string_char_at(oControl.m2, 7));
if (oControl.m3 != "0") draw_mapblock(argument0 + 8, argument1 + 4, string_char_at(oControl.m3, 1), string_char_at(oControl.m3, 2), string_char_at(oControl.m3, 3), string_char_at(oControl.m3, 4), string_char_at(oControl.m3, 5), string_char_at(oControl.m3, 6), oControl.dm3, string_char_at(oControl.m3, 7));
if (oControl.m4 != "0") draw_mapblock(argument0 + 16, argument1 + 4, string_char_at(oControl.m4, 1), string_char_at(oControl.m4, 2), string_char_at(oControl.m4, 3), string_char_at(oControl.m4, 4), string_char_at(oControl.m4, 5), string_char_at(oControl.m4, 6), oControl.dm4, string_char_at(oControl.m4, 7));
if (oControl.m5 != "0") draw_mapblock(argument0 + 24, argument1 + 4, string_char_at(oControl.m5, 1), string_char_at(oControl.m5, 2), string_char_at(oControl.m5, 3), string_char_at(oControl.m5, 4), string_char_at(oControl.m5, 5), string_char_at(oControl.m5, 6), oControl.dm5, string_char_at(oControl.m5, 7));
if (oControl.m6 != "0") draw_mapblock(argument0 + 32, argument1 + 4, string_char_at(oControl.m6, 1), string_char_at(oControl.m6, 2), string_char_at(oControl.m6, 3), string_char_at(oControl.m6, 4), string_char_at(oControl.m6, 5), string_char_at(oControl.m6, 6), oControl.dm6, string_char_at(oControl.m6, 7));
if (oControl.m7 != "0") draw_mapblock(argument0, argument1 + 12, string_char_at(oControl.m7, 1), string_char_at(oControl.m7, 2), string_char_at(oControl.m7, 3), string_char_at(oControl.m7, 4), string_char_at(oControl.m7, 5), string_char_at(oControl.m7, 6), oControl.dm7, string_char_at(oControl.m7, 7));
if (oControl.m8 != "0") draw_mapblock(argument0 + 8, argument1 + 12, string_char_at(oControl.m8, 1), string_char_at(oControl.m8, 2), string_char_at(oControl.m8, 3), string_char_at(oControl.m8, 4), string_char_at(oControl.m8, 5), string_char_at(oControl.m8, 6), oControl.dm8, string_char_at(oControl.m8, 7));
if (oControl.m9 != "0") draw_mapblock(argument0 + 24, argument1 + 12, string_char_at(oControl.m9, 1), string_char_at(oControl.m9, 2), string_char_at(oControl.m9, 3), string_char_at(oControl.m9, 4), string_char_at(oControl.m9, 5), string_char_at(oControl.m9, 6), oControl.dm9, string_char_at(oControl.m9, 7));
if (oControl.m10 != "0") draw_mapblock(argument0 + 32, argument1 + 12, string_char_at(oControl.m10, 1), string_char_at(oControl.m10, 2), string_char_at(oControl.m10, 3), string_char_at(oControl.m10, 4), string_char_at(oControl.m10, 5), string_char_at(oControl.m10, 6), oControl.dm10, string_char_at(oControl.m10, 7));
if (oControl.m11 != "0") draw_mapblock(argument0, argument1 + 20, string_char_at(oControl.m11, 1), string_char_at(oControl.m11, 2), string_char_at(oControl.m11, 3), string_char_at(oControl.m11, 4), string_char_at(oControl.m11, 5), string_char_at(oControl.m11, 6), oControl.dm11, string_char_at(oControl.m11, 7));
if (oControl.m12 != "0") draw_mapblock(argument0 + 8, argument1 + 20, string_char_at(oControl.m12, 1), string_char_at(oControl.m12, 2), string_char_at(oControl.m12, 3), string_char_at(oControl.m12, 4), string_char_at(oControl.m12, 5), string_char_at(oControl.m12, 6), oControl.dm12, string_char_at(oControl.m12, 7));
if (oControl.m13 != "0") draw_mapblock(argument0 + 16, argument1 + 20, string_char_at(oControl.m13, 1), string_char_at(oControl.m13, 2), string_char_at(oControl.m13, 3), string_char_at(oControl.m13, 4), string_char_at(oControl.m13, 5), string_char_at(oControl.m13, 6), oControl.dm13, string_char_at(oControl.m13, 7));
if (oControl.m14 != "0") draw_mapblock(argument0 + 24, argument1 + 20, string_char_at(oControl.m14, 1), string_char_at(oControl.m14, 2), string_char_at(oControl.m14, 3), string_char_at(oControl.m14, 4), string_char_at(oControl.m14, 5), string_char_at(oControl.m14, 6), oControl.dm14, string_char_at(oControl.m14, 7));
if (oControl.m15 != "0") draw_mapblock(argument0 + 32, argument1 + 20, string_char_at(oControl.m15, 1), string_char_at(oControl.m15, 2), string_char_at(oControl.m15, 3), string_char_at(oControl.m15, 4), string_char_at(oControl.m15, 5), string_char_at(oControl.m15, 6), oControl.dm15, string_char_at(oControl.m15, 7));
draw_set_colour_write_enable(true, true, true, false)
draw_sprite_ext(sMapHilight, -1, argument0 + 16, argument1 + 12, 1, 1, 0, -1, oControl.malpha);
draw_set_colour_write_enable(true, true, true, true)
if (global.mapmarker) {
    if (oControl.moffx >= -2 && oControl.moffx <= 2 && oControl.moffy >= -1 && oControl.moffy <= 1) draw_sprite(sMapMarker, oControl.markfr, argument0 + 16 + oControl.moffx * 8, argument1 + 12 + oControl.moffy * 8);
    if (oControl.moffx > 2 && oControl.moffy >= -1 && oControl.moffy <= 1) draw_sprite(sHUDMapMarkA, oControl.markfr, argument0 + 32, argument1 + 12 + oControl.moffy * 8);
    if (oControl.moffx < -2 && oControl.moffy >= -1 && oControl.moffy <= 1) draw_sprite_ext(sHUDMapMarkA, oControl.markfr, argument0 + 8, argument1 + 12 + oControl.moffy * 8, -1, 1, 0, -1, 1);
    if (oControl.moffy < -1 && oControl.moffx >= -2 && oControl.moffx <= 2) draw_sprite_ext(sHUDMapMarkA, oControl.markfr, argument0 + 24 + oControl.moffx * 8, argument1 + 12, -1, 1, -90, -1, 1);
    if (oControl.moffy > 1 && oControl.moffx >= -2 && oControl.moffx <= 2) draw_sprite_ext(sHUDMapMarkA, oControl.markfr, argument0 + 16 + oControl.moffx * 8, argument1 + 20, -1, 1, 90, -1, 1);
    if (oControl.moffy < -1 && oControl.moffx > 2) draw_sprite(sHUDMapMarkB, oControl.markfr, argument0 + 32, argument1 + 4);
    if (oControl.moffy < -1 && oControl.moffx < -2) draw_sprite_ext(sHUDMapMarkB, oControl.markfr, argument0 + 8, argument1 + 4, -1, 1, 0, -1, 1);
    if (oControl.moffy > 1 && oControl.moffx > 2) draw_sprite_ext(sHUDMapMarkB, oControl.markfr, argument0 + 32, argument1 + 28, 1, -1, 0, -1, 1);
    if (oControl.moffy > 1 && oControl.moffx < -2) draw_sprite_ext(sHUDMapMarkB, oControl.markfr, argument0 + 8, argument1 + 28, -1, -1, 0, -1, 1);
}
*/
draw_set_font(fontGUITrials);
// clock
draw_set_color(c_gray);
if (oTrialLogic.timer_started == 1) then draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text_border(argument0+5,argument1+3,time_string(oTrialLogic.timer));
// speedometer
draw_set_color(c_white);
draw_set_halign(fa_right);
var sp = abs(round(oCharacter.xVel*100));
draw_text_border(argument0+5,argument1+13,string(sp));
// speedboost (rainbow if 100)
var sb = round(oCharacter.speedboost_steps/1.1);
if (sb >= 100){
    sb = 100;
    draw_set_color(make_color_hsv((oTrialLogic.timer*9) % 255,180,240));
}
if (oCharacter.speedboost == 1) then sb = 100;
draw_text_border(argument0+5,argument1+23,string(sb));
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_border(argument0+10,argument1+3,"TIME");
draw_text_border(argument0+10,argument1+13,"F/s");
// do the same check here because i'm too lazy to do something better
if (sb >= 100){
    draw_set_color(make_color_hsv((oTrialLogic.timer*9) % 255,180,240));
}
draw_text_border(argument0+10,argument1+23,"%");
