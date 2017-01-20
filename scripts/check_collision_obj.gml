var _vx, _vy, _xCollision, _yCollision;

_vx = argument[0];
_vy = argument[1];
_xCollision = false;
_yCollision = false;

// Repeat over every pixel component of the speed to check for pixel perfect collision 

for (var i = 2; i < argument_count; i++) {
    if (place_meeting(x + _vx, y, argument[i])) {
        _xCollision = true;
    }
    
    if (place_meeting(x, y + _vy, argument[i])) {
        _yCollision = true;
    }
}

x += _vx;
y += _vy;
    
if (_xCollision) {
    x = (x div 8) * 8;
    if (sign(_vx) == -1) x += 8;
}

if (_yCollision) {
    y = (y div 8) * 8;
    if (sign(_vy) == -1) y += 8;
}

return _xCollision || _yCollision;
