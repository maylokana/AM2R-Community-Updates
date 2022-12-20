editor_message("Loading...");
var load = get_open_filename_ext("Level (.am2rials)|*.am2rials","",working_directory+"stage","Select Stage");

if (load != ""){
    // perish obj
    with (oEditorSolid){
        instance_destroy();
    }
    var file = file_text_open_read(load); // open file
    var header = file_text_read_string(file); // CHECK FOR HEADER
    if (header == "==== AM2R TIME TRIALS ===="){
        // continue as normal
        var version_incomp = 0;
        file_text_readln(file);
        if (real(file_text_read_string(file)) > global.tt_verr) then version_incomp = 1;
        file_text_readln(file);
        file_text_readln(file);

        // strings
        stage_name = file_text_read_string(file);
        file_text_readln(file);
        stage_auth = file_text_read_string(file);
        file_text_readln(file);
        stage_id = file_text_read_string(file);
        file_text_readln(file);
        objs_hidden = real(file_text_read_string(file));
        file_text_readln(file);

        // objs
        while (!file_text_eof(file)){
            // split objs
            var st = file_text_read_string(file);
            split_object_string(st);
            with (instance_create(real(s_part[0]),real(s_part[1]),oEditorSolid)){
                solid_style = real(other.s_part[2]);
            }
            file_text_readln(file);
        }   

        // end loading
        file_text_close(file);
        if (version_incomp){
            editor_message("Load complete, but level version seems higher than game's");
        }else{
            editor_message("Load complete.");
        }
    }else{
        file_text_close(file);
        editor_message("The file seems to be incorrect. Did you open the right one?");
    }
    /* legacy file system
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
    */
    placed_objs = get_obj_count();
}
