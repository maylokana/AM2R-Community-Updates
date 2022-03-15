var room_ = map_info[5,sel];
load_character_vars();
// this is a mess and it's just so i can run the game
global.ingame = 1;
global.save_x = 1;
global.save_y = 1;
global.myposx = 5;
global.mapoffsetx = 5;
global.myposy = 5;
global.mapoffsety = 5;
room_goto(room_);
