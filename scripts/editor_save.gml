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
var file = file_text_open_write("stages/"+stage_id+".am2rials");

// name, author and id data
file_text_write_string(file,stage_name);
file_text_writeln(file);
file_text_write_string(file,stage_auth);
file_text_writeln(file);
file_text_write_string(file,stage_id);
file_text_writeln(file);
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

// end saving
file_text_close(file);
editor_message("Save completed.");
// can i keep going? okay..
