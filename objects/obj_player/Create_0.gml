/// @description Insert description here
// You can write your code in this editor
hand_obj = obj_player_hand
deck_obj = obj_player_deck

deck_ds = scr_deck_default_build()

for(var i=0;i<ds_list_size(deck_ds);i+=1){
	scr_console("Deck: Card "+string(i)+": "+string(ds_list_find_value(deck_ds,i)))
}