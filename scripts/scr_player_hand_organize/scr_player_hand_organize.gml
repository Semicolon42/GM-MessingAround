var _hand,_highlight;
_hand=argument0
_highlight=argument1

with(_hand) {

	card_offset = 40
	var i;
	hand_offset = (hand_size - 1) * card_offset / 2
	rotation_step = 5
	rotation_start = (hand_size-1) * rotation_step / 2
	
	vertical_offset = hand_size
	
	for (i = 0; i < hand_size; i += 1) {
		if(_highlight = -1 or i == _highlight) {
			cards[i].position_x = x + i * card_offset - hand_offset
		} else if(i < _highlight) {
			cards[i].position_x = x + i * card_offset - hand_offset - 20
		} else if(i > _highlight) {
			cards[i].position_x = x + i * card_offset - hand_offset + 20
		}
		
		
		if(i >= hand_size / 2)
			cards[i].position_y = y - (hand_size - i - 1) * vertical_offset
		else 
			cards[i].position_y = y - i * vertical_offset
		cards[i].depth = -i
		cards[i].image_angle = rotation_start - rotation_step * i	
	}
	
}