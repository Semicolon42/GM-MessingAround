/// @description Insert description here
// You can write your code in this editor

// ADD CARD TEST
if(keyboard_check_pressed(ord("A"))) {
	scr_player_hand_add_card(id, 0, 0, 0)
}

// DRAW CARD TEST
if(keyboard_check_pressed(ord("D"))) {
	var _id_card_drawn;
	_id_card_drawn = scr_deck_draw_card(deck_ds)
	scr_console("Draw card: " + string(_id_card_drawn))
	if(_id_card_drawn >= 0) {
		scr_player_hand_add_card(id, _id_card_drawn, deck_obj.x, deck_obj.y)
	}
}

// UPDATE THE DECK IMAGE BASED ON THE NUMBER OF CARDS
deck_obj.image_speed = 0
if (ds_list_size(deck_ds) >= sprite_get_number(deck_obj.sprite_index))
	deck_obj.image_index = 0 
else
	deck_obj.image_index = sprite_get_number(deck_obj.sprite_index) - 1 - ds_list_size(deck_ds)
	
	
// Card Selection Stuff	
if(!variable_instance_exists(self, "hand_boundary_width") or !variable_instance_exists(self, "hand_boundary_height")) {
	hand_boundary_width = 300 / 2
	hand_boundary_height = 300 / 2
}

scr_console("step")
if(hand_obj.hand_size > 0) {
	scr_console("hand size")
	with(obj_card) { highlighted = false }
	if(mouse_x > hand_obj.x - hand_boundary_width and mouse_x < hand_obj.x + hand_boundary_width and
       mouse_y > hand_obj.y - hand_boundary_height and mouse_y < hand_obj.y + hand_boundary_height) {
        var xx = mouse_x-hand_obj.x + hand_boundary_width;
	    var ww = hand_boundary_width * 2 / hand_obj.hand_size
	    var ii = ( xx div ww ) mod hand_obj.hand_size
		scr_console("Selecting: "+string(ii))
		hand_obj.cards[ii].highlighted = true
		scr_player_hand_organize(hand_obj,ii)
    } else {
		scr_player_hand_organize(hand_obj,-1)
	}
}
