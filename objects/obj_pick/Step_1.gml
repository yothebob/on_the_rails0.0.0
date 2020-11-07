/// @description set off alarm

if place_meeting(x,y,omouse) and mouse_check_button_pressed(mb_left)
{ 
	instance_destroy(obj_pick);
}

if instance_exists(textbox)
{ if textbox.pick != 0 { instance_destroy(self); } }