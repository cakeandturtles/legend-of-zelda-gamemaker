m_speed = 4;
hud_ht = 56;
level_ht = 176;
total_ht = hud_ht + level_ht;

if (!menu_open) {
    hud_y_tgt = 0;
    hud_ht_tgt = total_ht;
    lvl_y_tgt = total_ht;
    lvl_ht_tgt = 0;
    
    if (view_hport[1] == total_ht) {
        menu_open = true;
        state_switch(state_game_in_menu);
    }
} else {
    hud_y_tgt = level_ht;
    hud_ht_tgt = hud_ht;
    lvl_y_tgt = hud_ht;
    lvl_ht_tgt = level_ht;
    
    if (view_hport[1] == hud_ht) {
        menu_open = false;
        state_switch(state_game_in_level);
    }
}   

// NOTE: move_toward(_start, _end, _trans_speed)
// HUD ***********************
// move the y position of the hud's view [176 <-> 0]
// [because the menu is actually a background in the room hidden away]
view_yview[1] = move_toward(view_yview[1], hud_y_tgt, m_speed);
// change the height of the hud's port [56 <-> 232]
view_hport[1] = move_toward(view_hport[1], hud_ht_tgt, m_speed);
// keep the height of the view equal to the height of the hud's port
// [to keep a 1:1 scale between view in room and visible port on screen]
view_hview[1] = move_toward(view_hview[1], hud_ht_tgt, m_speed);

// LEVEL *********************************
// change the height of the level's view [176 <-> 0]
view_hview[0] = move_toward(view_hview[0], lvl_ht_tgt, m_speed);
// change the onscreen y position of level's port [56 <-> 176]
view_yport[0] = move_toward(view_yport[0], lvl_y_tgt, m_speed);
// set the height of the level's port relative to hud's port height
view_hport[0] = total_ht - view_hport[1];
