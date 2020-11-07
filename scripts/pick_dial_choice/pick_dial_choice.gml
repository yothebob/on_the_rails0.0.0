
function pick_dial_choice(_offset,_pick){
	
with(instance_create_depth(x + _offset,y,-10000,obj_pick)) // pick option 
	{
		if place_meeting(x,y,omouse) and mouse_check_button_pressed(mb_left)
			{
			other.picking = false;
			global.pause = false;
			other.pick = _pick;
			other.ii = 0;
			if _pick == 3
				{
				textbox.character.hate += 1;
				}
			instance_destroy(obj_pick);
			}
	}

}