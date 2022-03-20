var room_ = global.trial_is;
load_character_vars();
// set other vars outside of character_vars
global.missiles = 0;
global.maxmissiles = 0;
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
room_change(room_,0); // go to the room designated by the var
