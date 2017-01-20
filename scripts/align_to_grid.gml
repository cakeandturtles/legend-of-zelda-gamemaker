/// align_to_grid(val, alignTo);

var val = argument0;
var alignTo = argument1;

var diff = val mod alignTo; /// returns number between 0 and alignTo-1
var halfway = (alignTo - 1) div 2;

if (diff > halfway) {
    return alignTo - diff;
} else {
    return -diff;
}

