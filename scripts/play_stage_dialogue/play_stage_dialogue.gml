
function play_stage_dialogue(_snum,stage_array,_border,_xx){
	
if character.stage == _snum and character.get_newdialogue = true and character.endfriend = false
{
_dial = stage_array;
	if ii < array_length(_dial[pick])
	{
			if is_string(_dial[pick,ii])
			{
			typewriter = clamp(0,0,string_length(_dial[pick,ii]));
			draw_text(_xx,_border,string(string_copy(_dial[pick,ii],1,typewriter + tick)));
			//character.image_index = _dial[pick + 4,ii]; // draw character pose
			draw_sprite_ext(character.intal[1],_dial[pick + 4,ii],x-64,y-20,1,1,0,c_white,1); // draw face
			draw_text(x+20,y-10,find_name(_dial[pick + 4,ii]));
			}
				else if !is_string(_dial[pick,ii]) 
				{	
				global.pause = true;
				picking = true;
				draw_text(_xx-70,_border,string(character.choice1[0]));
				draw_text(_xx ,_border,string(character.choice1[1]));
				draw_text(_xx + 60,_border,string(character.choice1[2]));
				}		
	}
		else
		{
		character.image_index = 0;
		character.get_newdialogue = false;
		character.talking = false;
		global.breaktime -= 15;
		instance_destroy(textbox);
		}	
}
}