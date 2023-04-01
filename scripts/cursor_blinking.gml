// cursor_blinking(variable,result)

if (oldMenuLogic){
    if (argument0 == argument1){
       if (cursor_blink < 60){
          var c = 255-cursor_blink;
       }else{
             var c = 195+(cursor_blink-60);
       }
       draw_set_color(make_color_rgb(c,c,c));
    }else{
          draw_set_color(c_gray);
    }
}else{
    if (cursor_blink < 60){
        var c = 255-cursor_blink;
    }else{
        var c = 195+(cursor_blink-60);
    }
    return make_color_rgb(c,c,c);
}
