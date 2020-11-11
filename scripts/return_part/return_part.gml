
function return_part(_num)
{
switch(pick1)
	{
	case -1: break;
	case 0: global.whiterail -=lf; break;
	case 1: global.cedarrail -=lf;break;
	case 2: global.blackrail -=lf;break;
	case 3: global.stainlessrail -= lf;break;
	}
	switch(pick2)
	{
	case -1: break;
	case 4: global.picket -= lf;break;
	case 5: global.cable -= lf;break;
	case 6: global.glass -= lf;break;
	}
	switch(pick3)
	{
	case -1: break;
	case 7: global.cedarddecking -= lf;break;
	case 8: global.compositedecking -= lf;break;
	}
}