/// mus_intro_fanfare()
sfx_stop_all();
if (global.first_start){
    mus_play_once(musFanfare);
}else{
    mus_play_once(musFanfareFast);
}
with (oMusicV2) alarm[0] = 60;
