var room_ = map_info[5,sel];
load_character_vars();
// set other vars outside of character_vars
global.missiles = 0;
global.maxmissiles = 0;
global.ingame = 1; // set global as "ingame"
// this is a mess of vars
global.save_x = 1;
global.save_y = 1;
global.myposx = 5;
global.mapoffsetx = 5;
global.myposy = 5;
global.mapoffsety = 5;
// don't worry about it
room_goto(room_); // go to the room designated by the var
