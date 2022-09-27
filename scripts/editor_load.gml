editor_message("Loading...");
var load = get_open_filename_ext("Level (.am2rials)|*.am2rials","",working_directory+"stage","Select Stage");

if (load != ""){
    // perish obj
    with (oEditorSolid){
        instance_destroy();
    }
    // strings
    var file = file_text_open_read(load);
    stage_name = file_text_read_string(file);
    file_text_readln(file);
    stage_auth = file_text_read_string(file);
    file_text_readln(file);
    stage_id = file_text_read_string(file);
    file_text_readln(file);
    var s = file_text_read_string(file);
    if (s == ""){
        objs_hidden = 1;
    }else{
        objs_hidden = real(s);
    }
    file_text_readln(file);

    // objs
    while (!file_text_eof(file)){
        var xx = file_text_read_real(file);
        file_text_readln(file);
        var yy = file_text_read_real(file);
        file_text_readln(file);
        var ty = file_text_read_real(file);
        file_text_readln(file);
        with (instance_create(xx,yy,oEditorSolid)){
            solid_style = ty;
        }
    }
    file_text_close(file);
    editor_message("Load complete.");
    placed_objs = get_obj_count();
}
