/// @description intalizing character variables
// make any characters with these variables and change up the talks, it will count from #0 to max per array talk
randomize();

// talking states/friendship meter
friendship = 0;
chitchat = false;
bfchitchat = false;
newdialogue = false;
get_newdialogue = false;
stage = 0;
talking = false;
endfriend = false
hate = 0;


// name/ draw_sprite
intal[1] = Spr_testplayer;
char_name = 1;
image_index = 0;
image_speed = 0;


var save_stage = ds_map_find_value(game_int.save_data,save_data_get_key(obj_shaun,"stage"));
var save_dialogue = ds_map_find_value(game_int.save_data,save_data_get_key(obj_shaun,"dialogue"));
var save_friend = ds_map_find_value(game_int.save_data,save_data_get_key(obj_shaun,"friendship"));
var save_endfriend = ds_map_find_value(game_int.save_data,save_data_get_key(obj_shaun,"endfriend"));
var save_hate = ds_map_find_value(game_int.save_data,save_data_get_key(obj_shaun,"hate"));

if (!is_undefined(save_stage)){stage = save_stage;}
if (!is_undefined(save_hate)){hate = save_hate;}
if (!is_undefined(save_dialogue)){newdialogue = save_dialogue;}
if (!is_undefined(save_friend)){friendship = save_friend;}
if (!is_undefined(save_endfriend)){endfriend = save_endfriend;}

shaun_dialogue();