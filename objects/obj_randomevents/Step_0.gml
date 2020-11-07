
if global.pick_event == true
{
	global.pick_event = false;
	var chances = 10;
		active = false;
		pick = -1;
		rng = irandom(chances); // 1 and 30 change to get an event 

	if rng == 5 and active = false
		{
		active = true;
		pick = irandom(totalevents);
		ii = ii + 1;
		happened[ii] = pick;
		}
}