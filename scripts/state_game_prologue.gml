if (state_time == 0) {
    obj_prologue_screen.y = 233; // push to the bottom of the screen;
}

if (state_time > 5 && Input.start) {
    room_goto(rm_select);
    state_switch(state_game_select);
}

if (!audio_is_playing(snd_music_intro)) {
    room_goto(rm_title);
    state_switch(state_game_title);
}

move_speed = .5;

if (state_time >= 150 && obj_prologue_screen.y > 0) {
    obj_prologue_screen.y -= move_speed;
}

if (state_time >= 900 && obj_prologue_screen.y > 232 - obj_prologue_screen.sprite_height) {
    obj_prologue_screen.y -= move_speed;
}
