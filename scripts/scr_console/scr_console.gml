// argument0 = the line of text to add

with(obj_console) {
	if (!variable_instance_exists(self, "output_list")) {
		output_list = ds_list_create()
		output_max_size = 20
		output_server = ""
		scr_console("Hello World")
	}
	
	ds_list_add(output_list, argument0)
	if (ds_list_size(output_list) > output_max_size)
		ds_list_delete(output_list, 0)

	output_server = ""
	for (var i = 0; i < ds_list_size(output_list); i += 1) {
		size = ds_list_size(output_list)
		temp = ds_list_find_value(output_list, i) 
		output_server += temp
		output_server += "\n"
	}
}