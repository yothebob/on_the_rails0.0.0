
if keyboard_check_pressed(ord(keys[ii]))
{
ii = ii + 1;
}

if ii == array_length(keys)
{
obj_spawnerr.i -= 30;
obj_spawnerr.spawning = false;	
global.money += 5;
instance_destroy();
}