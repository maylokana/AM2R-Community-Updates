// difficulty_string()
var c = c_gray;
var t = "???";
var o = 1;
switch (argument0){
       case 0:
       o = 0;
       break;
       case 1:
       c = c_white;
       t = "*";
       break;
       case 2:
       c = c_white;
       t = "**";
       break;
       case 3:
       c = c_white;
       t = "***";
       break;
       case 4:
       c = c_yellow;
       t = "****";
       break;
       case 5:
       c = c_yellow;
       t = "*****"
       break;
       case 6:
       c = c_orange;
       t = "******";
       break;
       case 7:
       c = c_red;
       t = "*******";
       break;
}
draw_set_color(c);
draw_text_border(300,190+o,t);
