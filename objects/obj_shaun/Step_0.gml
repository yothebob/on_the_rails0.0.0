//running the friendship/chitchat state script
npc_talk_state();

if hate > 2 and !instance_exists(textbox)
{
endfriend =	true;
}

// if you hit a certian new stage and have new dialoge show a test message
new_stage_dialogue(0,obj_shaun);
new_stage_dialogue(1,obj_shaun);
new_stage_dialogue(2,obj_shaun);
new_stage_dialogue(3,obj_shaun);
new_stage_dialogue(4,obj_shaun);

if friendship >= 100
{
global.shaunkey = true;
}

