target_xview = (obj_player.x div global.room_width) * global.room_width;
target_yview = (obj_player.y div global.room_height) * global.room_height;

// when we first enter game, snap to player room
if (state_time == 0) {
    view_xview[0] = target_xview;
    view_yview[0] = target_yview;    
}

view_xview[0] = move_toward(view_xview[0], target_xview, 8);
view_yview[0] = move_toward(view_yview[0], target_yview, 8);

if (state_time > 5 && Input.start) state_switch(state_game_menu_trans);
