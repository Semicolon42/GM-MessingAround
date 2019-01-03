/// @description Insert description here
// You can write your code in this editor
CARD_IMAGE_INDEX = 0

scr_cards_default_data()

card_id = 0;

enum face_state {
	up,
	down
}

facing_step_max = 6
facing_step = -facing_step_max
facing = face_state.down;
sprite_faceup = cards[card_id, CARD_IMAGE_INDEX];
sprite_facedown = sprite_index;

hovering = false


enum card_state {
 	normal,
	hovered_over
}
state = card_state.normal

diff_threshold = 1
diff_percent = .7
position_x = x
position_y = y

highlighted=false