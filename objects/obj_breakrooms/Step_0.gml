
	if place_meeting(x,y,omouse)
	{	
	image_index = 1;
		if mouse_check_button_pressed(mb_left) and breakroom == 1
			{room_goto(room1);
			global.breaktime -= 15;
			}
		if mouse_check_button_pressed(mb_left) and breakroom == 2
			{room_goto(room2);
			global.breaktime -= 15;
			}
		if mouse_check_button_pressed(mb_left) and breakroom == 3
			{room_goto(room3);
			global.breaktime -= 15;	
			}	
	}
	else
		{image_index = 0;}

	