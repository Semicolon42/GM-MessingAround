// 
var _deck,_card_id;
_deck = argument0

if (!ds_list_empty(_deck)) {
    _card_id = ds_list_find_value(_deck, 0)
    ds_list_delete(_deck, 0)
	scr_console("Draw card from script: " + string(_card_id))
	return _card_id
} else {
	scr_console("Draw card: Deck Empty")
	return -1;
}
