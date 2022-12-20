//convert_level(filename);
//show_debug_message("Attempting to convert level "+string(argument0));
var ver_num = -1;
var file_check = file_text_open_read("stages/"+argument0); // open file for checking version
if (file_text_read_string(file_check) == "==== AM2R TIME TRIALS ===="){ // v0.3+
    file_text_readln(file_check);
    ver_num = real(file_text_read_string(file_check));
}else{ // v0.1/v0.2
    ver_num = 0;
}
file_text_close(file_check);

if (ver_num > global.tt_verr){
    //show_debug_message("Level version is higher than game version! Aborting..");
    exit;
}

if (ver_num == global.tt_verr){
    //show_debug_message("Level version is same as game version. Aborting..");
    exit;
}

if (ver_num < 2){ // v0.1/v0.2 conversions
    //show_debug_message("Converting file using v0.1/v0.2 to v0.3 conversion");
    var file1 = file_text_open_read("stages/"+argument0); // read file (for file 2)
    var file2 = file_text_open_write("stages/"+argument0); // write file
    
    // get info on this stage
    var na = file_text_read_string(file1);
    file_text_readln(file1);
    var au = file_text_read_string(file1);
    file_text_readln(file1);
    var in = file_text_read_string(file1);
    file_text_readln(file1);
    var bl = file_text_read_string(file1);
    file_text_readln(file1);

    // write it to file2
    file_text_write_string(file2,"==== AM2R TIME TRIALS ====");
    file_text_writeln(file2);
    file_text_write_string(file2,"2");
    file_text_writeln(file2);
    file_text_write_string(file2,na);
    file_text_writeln(file2);
    file_text_write_string(file2,au);
    file_text_writeln(file2);
    file_text_write_string(file2,in);
    file_text_writeln(file2);
    file_text_write_string(file2,bl);
    file_text_writeln(file2);

    // object conversion
    while (!file_text_eof(file1)){
        var p1 = file_text_read_string(file1);
        file_text_readln(file1);
        var p2 = file_text_read_string(file1);
        file_text_readln(file1);
        var p3 = real(file_text_read_string(file1));
        if (p3 >= 6 && p3 <= 8) then p3 += 22;
        file_text_readln(file1);
        file_text_write_string(file2,p1+"/"+p2+"/"+string(p3));
        file_text_writeln(file2);
    }

    file_text_close(file1); // close file1
    file_text_close(file2); // overwrite file1 with file2
}

if (ver_num < 3){
    var file1 = file_text_open_read("stages/"+argument0); // read file (for file 2)
    var file2 = file_text_open_write("stages/"+argument0); // write file

    // do the boring stuff
    file_text_readln(file1);
    file_text_readln(file1);
    var name = file_text_read_string(file1);
    file_text_readln(file1);
    var auth = file_text_read_string(file1);
    file_text_readln(file1);
    var sta_id = file_text_read_string(file1);
    file_text_readln(file1);
    var obj_hide = file_text_read_string(file1);
    file_text_readln(file1);
    file_text_write_string(file2,"==== AM2R TIME TRIALS ====");
    file_text_writeln(file2);
    file_text_write_string(file2,"3");
    file_text_writeln(file2);
    // here's why we're here
    file_text_write_string(file2,make_datetime(date_current_datetime()));
    file_text_writeln(file2);
    // carry on..
    file_text_write_string(file2,name);
    file_text_writeln(file2);
    file_text_write_string(file2,auth);
    file_text_writeln(file2);
    file_text_write_string(file2,sta_id);
    file_text_writeln(file2);
    file_text_write_string(file2,obj_hide);
    file_text_writeln(file2);
    // convert everything else over
    while (!file_text_eof(file1)){
        file_text_write_string(file2,file_text_read_string(file1));
        file_text_writeln(file2);
        file_text_readln(file1);
    }

    file_text_close(file1); // close file1
    file_text_close(file2); // overwrite file1 with file2
}

//show_debug_message("Conversion complete");
