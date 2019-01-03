/// @description Insert description here
// You can write your code in this editor


// Draw Hand Selector THing
if(!variable_instance_exists(self, "hand_boundary_width") or !variable_instance_exists(self, "hand_boundary_height")) {
	hand_boundary_width = 300 / 2
	hand_boundary_height = 150 / 2
	highlighted = false
}

if(mouse_x > hand_obj.x - hand_boundary_width and mouse_x < hand_obj.x + hand_boundary_width and
   mouse_y > hand_obj.y - hand_boundary_height and mouse_y < hand_obj.y + hand_boundary_height) {
draw_rectangle_color(hand_obj.x - hand_boundary_width,
                     hand_obj.y - hand_boundary_height,
                     hand_obj.x + hand_boundary_width,
                     hand_obj.y + hand_boundary_height,
                     c_aqua, c_aqua, c_aqua, c_aqua, false)
   } else {
draw_rectangle_color(hand_obj.x - hand_boundary_width,
                     hand_obj.y - hand_boundary_height,
                     hand_obj.x + hand_boundary_width,
                     hand_obj.y + hand_boundary_height,
                     c_teal, c_teal, c_teal, c_teal, false)
   }		 