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

// name/ draw_sprite
intal[0] = "Shaun";
intal[1] = Spr_testplayer;
image_index = 0;
image_speed = 0;

global.shaunkey = save_data_get_key("friendship");

var save_stage = ds_map_find_value(game_int.save_data,save_data_get_key("stage"));
var save_dialogue = ds_map_find_value(game_int.save_data,save_data_get_key("dialogue"));
var save_friendship = ds_map_find_value(game_int.save_data,save_data_get_key("friendship"));
var save_endfriend = ds_map_find_value(game_int.save_data,save_data_get_key("endfriend"));

if (!is_undefined(save_stage)){stage = save_stage;}
if (!is_undefined(save_dialogue)){newdialogue = save_dialogue;}
if (!is_undefined(save_friendship)){friendship = save_friendship;}
if (!is_undefined(save_endfriend)){endfriend = save_endfriend;}

shaun_dialogue();