var _player,_card_id,_x,_y;
_player = argument0
_card_id = argument1
_x = argument2
_y = argument3

with(_player){
	
	// Create the card
	var _card;
	_card = instance_create_layer(deck_obj.x,deck_obj.y,"layer_cards",obj_card)
	_card.hand_object = id
	_card.facing=face_state.up
	_card.facing_step=_card.facing_step_max
	_card.card_id = _card_id
	
	// Add it to the player's hand
	with(hand_obj) {
	    cards[hand_size] = _card
	    hand_size += 1
	}
}