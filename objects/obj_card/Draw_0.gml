/// @description Insert description here
// You can write your code in this editor

sprite_faceup = cards[card_id, CARD_IMAGE_INDEX];


w_scale = abs(facing_step) / facing_step_max
if (w_scale < .1) 
	w_scale = .1

if(highlighted) {
	draw_sprite_ext(sprite_facedown, 0, x, y, w_scale*1.1, 1.1, image_angle, c_yellow, 1)
}

if (facing_step < 0) {
	draw_sprite_ext(sprite_facedown, 0, x, y, w_scale, 1, image_angle, c_white, 1)
} else if(facing >= 0) {
	draw_sprite_ext(sprite_faceup, 0, x, y, w_scale, 1, image_angle, c_white, 1)
}


/*
 * DEBUG Drawing
 */
var _color = draw_get_color()
draw_set_color(c_green)

draw_text(x,y,card_id)

/*
draw_text(x,y,string(facing_step))
if(facing == face_state.up) {
	draw_text(x,y+10,string("UP"))
} else if (facing == face_state.down) {
	draw_text(x,y+10,string("DOWN"))
}
*/

draw_set_color(_color)
/*
*/