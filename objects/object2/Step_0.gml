if x < atcounter
{
x = x + 3;
}

if x >= atcounter and i > 0 
{

x = x;
	
tick = tick + 1;
	if tick >= angry
	{
	global.workrep -= 1;	
	instance_destroy();
	}
	 if keyboard_check_pressed(ord(keys[pick2]))
	{i = i -1;}
}

if i == 0
	{
	i = -1;
	global.workrep += 1;
	return_part(lf);
	}
	
if i == -1
	{
	x = x + 3;
	}
	
	if x > 900
	{instance_destroy();}