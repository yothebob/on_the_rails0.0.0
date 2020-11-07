
function npc_talk_state(){
	
	//stages of friendship
	randomize();
	s0 = 0;
	s1 = 30;
	s2 = 60;
	s3 = 100;
	
// if new dialogue you wont chitchat otherwize you will just talk chitchat
if newdialogue = false {chitchat = true;}
else if newdialogue = true { chitchat = false;}

// Basic friendship meter that will give you a new story dialogue when you hit the level

switch (friendship)
{
case s0: newdialogue = true; break;
case s1: newdialogue = true; break;
case s2: newdialogue = true; break;
case s3: newdialogue = true; break;
}
// if BFF's you can only have BFF chatting

if friendship > s3
{
chitchat = false;
bfchitchat = true;
newdialogue = false;
}
}


// NEW FUNCTION ----------------------------------------------------------------------------------------


function new_stage_dialogue(desired_stage,_character)	{

var clicked_on = place_meeting(x,y,omouse) and mouse_check_button_pressed(mb_left);

var xx = 160;
var yy = 650;

// if you are hitting a new stage, add a stage lvl and play the new dialogue
if stage == desired_stage and newdialogue == true and endfriend = false and !instance_exists(textbox) and _character.hate <=2
{
	if clicked_on and global.money >= 10{
		stage = stage + 1;
		global.money -= 10;
		get_newdialogue = true;
		newdialogue = false;
		friendship = friendship + 5;
		ds_map_replace(game_int.save_data,save_data_get_key(_character,"stage"),_character.stage);
		ds_map_replace(game_int.save_data,save_data_get_key(_character,"dialogue"),_character.newdialogue);
		ds_map_replace(game_int.save_data,save_data_get_key(_character,"friendship"),_character.friendship);
		 talking = true;
			with (instance_create_depth(xx,yy,-10000,textbox)){character = _character;} 
	}
}


// play BF chit chat.. no new stages left
else if clicked_on and bfchitchat == true and global.money >= 10 and !instance_exists(textbox) and _character.hate <=2
and endfriend = false and newdialogue != true{
	
	global.money -= 10;
		with (instance_create_depth(xx,yy,-10000,textbox)){
		character = _character;
		get_chitchat = true; 
		textbox.pick = irandom(character.amo_bfchit);}	 
}


// regular chitchat.. if in between stages
 else if clicked_on and global.money >= 10 and !instance_exists(textbox) and endfriend = false and newdialogue != true and _character.hate <=2
 {
	global.money -= 10;
	ds_map_replace(game_int.save_data,save_data_get_key(_character,"friendship"),_character.friendship);
		with (instance_create_depth(xx,yy,-10000,textbox)){
		character = _character;
		get_chitchat = true; 
		textbox.pick = irandom(character.amo_chit);}	 
}


// if you hit end friendship they will only talk mean chitchat now
 else if clicked_on and !instance_exists(textbox) and endfriend = true{
	ds_map_replace(game_int.save_data,save_data_get_key(_character,"endfriend"),_character.endfriend);
		with (instance_create_depth(xx,yy,-10000,textbox)){
		character = _character;
		get_chitchat = true; 
		textbox.pick = irandom(character.amo_mc);}	 
}
}