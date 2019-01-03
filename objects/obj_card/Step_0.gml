/// @description Insert description here
// You can write your code in this editor

if(facing == face_state.down) {
	facing_step = max(-facing_step_max, facing_step - 1)
} else if (facing == face_state.up) {
	facing_step = min(facing_step_max, facing_step + 1)	
}

var diff
if (x != position_x) {
	diff = position_x - x
	if (diff < diff_threshold) {
		x = position_x
	} else {
		x += diff * diff_percent
	}
}
if (y != position_x) {
	diff = position_y - y
	if (diff < diff_threshold) {
		y = position_y
	} else {
		y += diff * diff_percent
	}
}