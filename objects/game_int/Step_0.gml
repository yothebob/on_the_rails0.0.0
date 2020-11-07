
// if friendship = > 100 it unlocks a one time special encounter with NPC
if room = rm_night
{
	if global.shaunkey == true and global.shaundone == false and button_check == false
	{
	button_check = true;
		with(instance_create_depth(670,445,-10000,obj_button))
		{text = 3;}
	}
}

//if time runs out transition back to work
if global.lunch == true and global.breaktime <= 0
	{
	global.lunch = false;
		with(instance_create_depth(room_width/2,room_height/2,-10000,obj_transition))
			{pickroom = rm_testing; fadein = false;}
	}