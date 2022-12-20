editor_message("Saving...");
// abort if the level uses no objects
if (placed_objs == 0){
    editor_message("This level requires at least one object before it can be saved!");
    exit;
}
// abort if the level has no player start
var start_exists = 0;
with (oEditorSolid){
    if (solid_style == 11) then start_exists = 1;
}
if (start_exists == 0){
    editor_message("This level requires at least one player start before it can be saved!");
    exit;
}

// otherwise... let's crack into this egg
var file = file_text_open_write("stages/"+string_lower(string_lettersdigits(stage_name))+"_-_"+stage_id+".am2rials");

// new file system
file_text_write_string(file,"==== AM2R TIME TRIALS ===="); // header
file_text_writeln(file);
file_text_write_string(file,string(global.tt_verr)) // version number
file_text_writeln(file);
file_text_write_string(file,make_datetime(date_current_datetime()))// datetime
file_text_writeln(file);
file_text_write_string(file,stage_name); // stage name
file_text_writeln(file);
file_text_write_string(file,stage_auth); // stage auth
file_text_writeln(file);
file_text_write_string(file,stage_id); // stage id
file_text_writeln(file);
file_text_write_string(file,string(objs_hidden)); // are blocks hidden or are they shown?
file_text_writeln(file);

with (oEditorSolid){
    var p1 = string(x);
    var p2 = string(y);
    var p3 = string(solid_style);
    file_text_write_string(file,p1+"/"+p2+"/"+p3);
    file_text_writeln(file);
}

// legacy file system
/*
// name, author and id data
file_text_write_string(file,stage_name);
file_text_writeln(file);
file_text_write_string(file,stage_auth);
file_text_writeln(file);
file_text_write_string(file,stage_id);
file_text_writeln(file);
file_text_write_string(file,string(objs_hidden));
file_text_writeln(file);

// save all the objects. ALL. OF. THEM. and then pray it doesn't break
with (oEditorSolid){
    file_text_write_string(file,string(x));
    file_text_writeln(file);
    file_text_write_string(file,string(y));
    file_text_writeln(file);
    file_text_write_string(file,string(solid_style));
    file_text_writeln(file);
}
*/

// end saving
file_text_close(file);
editor_message("Save completed.");
// can i keep going? okay..
