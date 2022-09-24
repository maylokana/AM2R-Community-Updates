// goal_trial()
remove_persistent_objects();
global.ingame = 0;
if (oControl.widescreen){
    global.frame = sprite_create_from_surface(oControl.widescreen_surface,0,0,426,240,false,false,0,0);
}else{
    global.frame = sprite_create_from_surface(application_surface,0,0,372,240,false,false,0,0);
}
room_goto(trialclearroom);
