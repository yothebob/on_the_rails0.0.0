/// @description Insert description here
// You can write your code in this editor
if text = 1
{
if place_meeting(x,y,omouse) and mouse_check_button_pressed(mb_left)
{
global.lunch = false;
room_goto(rm_testing);
}
}

if text = 2
{
if place_meeting(x,y,omouse) and mouse_check_button_pressed(mb_left)
{
room_goto(rm_night);

}
}

if text = 3
{
if place_meeting(x,y,omouse) and mouse_check_button_pressed(mb_left)
{
game_int.button_check = false;
room_goto(rm_shaunBF);
global.shaundone = true;
}
}

if text = 4 
{
if place_meeting(x,y,omouse) and mouse_check_button_pressed(mb_left)
	{
	
	room_goto(rm_breakmap);
	}

}