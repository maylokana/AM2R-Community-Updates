//datetime(datetime);
var p = 0;
s_part[0] = "";
s_part[1] = "";
s_part[2] = "";
for (var i = 1; i < string_length(argument0)+1; ++i;){
    if (string_char_at(argument0,i) == "/"){
        ++p;
    }else{
        s_part[p] = s_part[p]+string_char_at(argument0,i);
    }
}

return date_create_datetime(s_part[0],s_part[1],s_part[2],s_part[3],s_part[4],0);
