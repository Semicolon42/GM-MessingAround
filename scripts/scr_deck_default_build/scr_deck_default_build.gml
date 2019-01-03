var _deck;
_deck = ds_list_create()

var _temp_deck_array = [0, 1, 0, 0, 1, 1];
var _temp_size = array_length_1d(_temp_deck_array);

for(var i = 0; i<_temp_size; i+=1) {
    ds_list_add(_deck, _temp_deck_array[i])
}

return _deck
