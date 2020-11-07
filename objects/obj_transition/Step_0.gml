/// @description Insert description here
// You can write your code in this editor

var _fade = .025;

if fadein == false
{
	a = a + _fade;
	if a == 1
		{
		room_goto(pickroom);
		instance_destroy();
		}
}
 if fadein == true
	{	
	a = a - _fade;
		if a == 0
		{
		if room = rm_game
		{
		global.timeon = false;
		}
			else
			{
			global.timeon = true;
			}
	instance_destroy();	
	}
	}