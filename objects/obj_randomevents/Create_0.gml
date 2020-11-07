
events = ds_list_create();
 totalevents = 10;

for (i = 0; i <= totalevents; i++) { events[| i] = i; }


event[0] = "event 0";
event[1] = "event 1";
event[2] = "event 2";
event[3] = "event 3";
event[4] = "event 4";
event[5] = "event 5";
event[6] = "event 6"; 
event[7] = "event 7";
event[8] = "event 8";
event[9] = "event 9";
event[10] = "event 10";

happened = ["","",""];

ii = -1;
pick = -1;
rng = 0;
tick = 0;
active = false;
tickset = 20;
timeon = false;