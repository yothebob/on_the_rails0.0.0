/// @description draw time

if global.timeon = true
{
var xoffset = 90;
var yii = 20;

	draw_set_font(fmain);
	draw_set_halign(fa_left);
	
	
	draw_text(x-xoffset,y-(yii *3),"time : " + string(global.hour) + ": " + string(global.minute) + "0");
	draw_text(x-xoffset,y-(yii *2), "Day: " + date_to_day(global.day));
	draw_text(x-xoffset,y-(yii), "Month: " + string(global.month));
	draw_text(x-xoffset ,y, "Year: " + string(global.year));


		if global.pm = true { draw_text(x+yii,y-(yii *3),"P.M"); }
		else { draw_text(x+yii ,y-(yii *3),"A.M");}
}