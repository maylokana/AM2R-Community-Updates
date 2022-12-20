//get_stage_data(file_name);
custom_level_file[custom_levels] = argument0;
var open = file_text_open_read("stages/"+argument0);
repeat (3) file_text_readln(open);
custom_level_name[custom_levels] = file_text_read_string(open);
file_text_readln(open);
custom_level_auth[custom_levels] = file_text_read_string(open);
file_text_close(open);
++custom_levels; // inc custom_levels
