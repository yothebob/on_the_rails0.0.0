
if global.timeon == true 
{
	tick = tick + 1;

		if tick == 30
		{
		pick = irandom(4);
		tick = 0;
		}

		if pick == 1 
		{

		pick = -1;
		spawnin = irandom_range(1,3);
		}

		switch (spawnin)
		{
		case 1:
			if !instance_exists(object1)
			{
			i = i + 30;
			instance_create_depth(x,y+ i,-10000,object1);
			spawnin = 0;
			}
		break;
		case 2:
			if !instance_exists(object2)
			{
			i = i + 30;
			instance_create_depth(x,y + i,-10000,object2);
			spawnin = 0;
			}
		break;
		case 3:
			if!instance_exists(object3)
			{
			i = i + 30;
			instance_create_depth(x,y + i,-10000,object3);
			spawnin = 0;
			}
		break;
		}
}