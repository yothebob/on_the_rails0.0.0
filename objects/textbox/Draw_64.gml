/// @description draw textbox and text

#region // will draw textbox, character name, character photo, draw_text middle halign
var xx = ((sprite_get_width(spr_textbox)/2) *1.5)
var border = y + 16;
draw_set_halign(fa_middle);

if global.pause == false 
	{ 	
	draw_sprite(spr_textbox,0,x,y+8); 
	draw_sprite_ext(spr_nameback,0,x-20,y-10,.5,.5,0,c_white,1);
	}

#endregion


#region //check for stages and new dialogue and pick proper dialogue

//stage 1
play_stage_dialogue(1,character.stage_1,border,xx);

//stage 2
play_stage_dialogue(2,character.stage_2,border,xx);

//stage 3
play_stage_dialogue(3,character.stage_3,border,xx);

// stage 4
play_stage_dialogue(4,character.stage_4,border,xx);

// play BF chitchat
 if character.bfchitchat == true and get_chitchat == true and character.talking != true
{
 _dial = character.bfchitchats;
	if ii < array_length(_dial[pick])
	{
	typewriter = clamp(0,0,string_length(_dial[pick,ii]));
	draw_text(xx,border,string(string_copy(_dial[pick,ii],1,typewriter + tick)));
	draw_sprite_ext(character.intal[1],1,x-64,y-20,1,1,0,c_white,1); // draw face
	draw_text(x+20,y-10,find_name(character.char_name));
	}
		else 
		{
		character.friendship = character.friendship + 5;
		get_chitchat = false;
		character.talking = false;
		global.breaktime -= 15;
		instance_destroy(textbox);
		}
}

// play regular chitchat
else if get_chitchat == true and character.talking != true and character.endfriend = false
{
 _dial = character.chitchats;
	if ii < array_length(_dial[pick])
	{
	typewriter = clamp(0,0,string_length(_dial[pick,ii]));
	draw_text(xx,border,string(string_copy(_dial[pick,ii],1,typewriter + tick)));
	draw_sprite_ext(character.intal[1],1,x-64,y-20,1,1,0,c_white,1); // draw face
	draw_text(x+20,y-10,find_name(character.char_name));
	}
		else
		{
		character.friendship = character.friendship + 5;
		get_chitchat = false;
		character.talking = false;
		global.breaktime -= 15;
		instance_destroy(textbox);
		}
}

// playing mad chitchat dialogue
else if get_chitchat == true and character.talking != true and character.endfriend = true
{
 _dial = character.madchat;
	if ii < array_length(_dial[pick])
	{
	typewriter = clamp(0,0,string_length(_dial[pick,ii]));
	draw_text(xx,border,string(string_copy(_dial[pick,ii],1,typewriter + tick)));	
	draw_sprite_ext(character.intal[1],1,x-64,y-20,1,1,0,c_white,1); // draw face
	draw_text(x+20,y-10,find_name(character.char_name));
	}
		else
		{
		get_chitchat = false;
		character.talking = false;
		global.breaktime -= 15;
		instance_destroy(textbox);
		}
}
#endregion