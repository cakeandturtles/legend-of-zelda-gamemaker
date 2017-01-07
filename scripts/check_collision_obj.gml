var _vx, _vy, _collision;

_vx = argument[0];
_vy = argument[1];
_collision = false;

// Repeat over every pixel component of the speed to check for pixel perfect collision 
repeat (abs(max(abs(_vx), abs(_vy)))) {
    for (var i = 2; i < argument_count; i++) {
        if (place_meeting(x + sign(_vx), y + sign(_vy), argument[i])) {
            _collision = true;
            break;
        }
    }
    
    if (!_collision) {
        x += sign(_vx);
        y += sign(_vy);
    } else {
        break;
    }
}

return _collision;
