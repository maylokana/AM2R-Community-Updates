//save_demo();

if (!trial_state){
    var sid = "shared/"+string(global.sta_iden);
    // make folders
    if (!directory_exists("shared/")) then directory_create("shared/");
    if (!directory_exists(sid)) then directory_create(sid);
    // open a txt for this
    var file = file_text_open_write(sid+"/replay_"+global.playerhandle+"_"+string(current_time));
    // write header, name, timestamp and version to txt
    // finish txt
    file_text_close(file);
    // set trial state so this doesn't happen again
    trial_state = 1;
}
