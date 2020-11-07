draw_self();
draw_set_halign(fa_center);
var mouse_check = place_meeting(x,y,omouse);

if mouse_check and breakroom == 1
	{
	draw_text(x,y+70,"Out Back");
	}
if mouse_check and breakroom == 2
	{
	draw_text(x,y+70,"Warehouse");
	}
if mouse_check and breakroom == 3
	{
	draw_text(x,y+70,"lunchroom");
	}	
