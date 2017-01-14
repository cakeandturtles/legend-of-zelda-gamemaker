if (state_time > 5 && Input.start) {
    room_goto(rm_select);
    state_switch(state_game_select);
}

if (state_time > 5 * room_speed) {
    room_goto(rm_prologue);
    state_switch(state_game_prologue);
}
