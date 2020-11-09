/// @description time

var sectomin = 60;
var mintohour = 6;
var daytomonth = 21;
var monthtoyear = 4;
var starttime = 8;
var closingtime = 5;
var lunch = 13;
var noon = 12;


if global.timeon = true
{
	global.sec = global.sec + 1;

	if global.sec = sectomin
		{
		global.minute = global.minute +1;
		global.sec = 0;
		global.sec = global.sec + 1; 
		}

	if global.minute = mintohour
		{
		global.hour = global.hour + 1;
		global.minute = 0;
		global.sec = 0;
		global.sec = global.sec +1;
		}
		
	if global.hour == noon 
		{ global.pm = true;
		global.timeon = false;
		global.breaktime = 60;
		global.lunch = true;
			with(instance_create_depth(room_width/2,room_height/2,-10000,obj_transition))
			{pickroom = rm_breakmap; fadein = false;}
		global.hour += 1;
		}

	if global.hour = lunch // on 13th hour, change to 1 oclock
		{
		global.hour = 1;
		}
		
	if global.hour = closingtime // end day, go home 
		{
		global.pick_event = true;
		global.day = global.day + 1;
			with(instance_create_depth(room_width/2,room_height/2,-10000,obj_transition))
			{pickroom = rm_night; fadein = false;}
		global.hour = starttime;
		global.pm = false;
		}


	if global.day = daytomonth
		{
		global.month = global.month + 1;
		global.day = 0;
		}

	if global.month = monthtoyear
		{
		global.year = global.year + 1;
		global.month = 0;
		}
}

	