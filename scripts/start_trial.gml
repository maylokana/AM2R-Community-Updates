load_character_vars();
if (instance_exists(oDemoRecord)){
    with (oDemoRecord){
        instance_destroy();
    }
}
// set other vars outside of character_vars
global.missiles = 0;
global.maxmissiles = 1;
global.ingame = 1; // set global as "ingame"
oControl.mod_IGT = 0; // it won't leave me alone
// this is a mess of vars
global.save_x = 1;
global.save_y = 1;
global.myposx = 5;
global.mapoffsetx = 5;
global.myposy = 5;
global.mapoffsety = 5;
// don't worry about it
room_change(empty_room,1); // go to the room designated by the var
