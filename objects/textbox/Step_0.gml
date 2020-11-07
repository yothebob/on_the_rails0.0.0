/// @description incrimenting, choice picking

if is_string(_dial[pick,ii])
{	
	if tick < string_length(_dial[pick,ii])
	{
	inter = inter -1 ; if inter == 0 {inter = 2; tick = tick + 1;} // incrimenting text and typewriter
	}

	if global.pause == false // pause incrimenting if picking a choice
	{
		if mouse_check_button_pressed(mb_left) 
			{
			 if tick != string_length(_dial[pick,ii])
				{tick = string_length(_dial[pick,ii]);}
			
			else if tick == string_length(_dial[pick,ii])	
				{ii++; tick = 0;}
			}
	}
}

// picking a choice 
if picking == true
{
	pick_dial_choice(240,1);
	pick_dial_choice(300,2);
	pick_dial_choice(360,3);
}
else 
{
	exit;
instance_destroy(obj_pick);
}