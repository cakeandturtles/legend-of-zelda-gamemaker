/// initialize game variables

global.gamepad = gamepad_is_connected(0);
global.room_width = 256;
global.room_height = 176;

enum enum_facing {
    up = 90,
    right = 0,
    down = 270,
    left = 180
}


