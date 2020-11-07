// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shaun_dialogue(){

// end friendship mad dialogue
madchat[0,0] = "why are you talking to me?";
madchat[1,0] = "what do you want?";
madchat[2,0] = "Please go away...";

amo_mc = array_length(madchat) -1;

//chitchat dialogue
chitchats[0,0] = "hey how is it going?";
chitchats[0,1] = "whats up?";
chitchats[1,0] = " you enjoying it here?";
chitchats[1,1] = " you wont get rich, but its stable";
chitchats[2,0] = " You been busy?";
chitchats[3,0] = " Thats what she said!";
chitchats[4,0] = "This system is so easy!";
chitchats[4,1] = "you just have to hard code everything and incorperate my 100 scripts!";
chitchats[4,2] = "your welcome :)";
chitchats[5,0] = "nanananananana nananananana BATMAN!";

amo_chit = array_length(chitchats) -1;

// when you max out friendship you can play this dialogue 
bfchitchats[0,0] = "Welcome to the best friend zone.. Get comfortable";
bfchitchats[0,1] = "I am your BFF?";
bfchitchats[1,0] = " Did the dialogue work?";
bfchitchats[1,1] = " I am glad it did, I had Faith *Eye Roll*";
bfchitchats[2,0] = " *Crosses Fingers the next text box comes up*";
bfchitchats[3,0] = " you know there is over 100 unique lines of dialogue in me?";
bfchitchats[3,1] = " JK there is probably more like 5 lol";
bfchitchats[4,0] = " For real, You can add as much dialogue you want";
bfchitchats[4,1] = "Just add to the array (stage 1-4 or chitchat off BFF chat)";
bfchitchats[4,2] = "BUT DONT FORGET TO UPDATE THE TOTAL AMOUNTS FOR THE CHIT CHAT AND BFF!!";

amo_bfchit = array_length(bfchitchats) -1;


//choices for dialogue
choice1 = ["Good", "Medium", "bad"];
choice2 = ["Good", "Medium", "bad"];
choice3 = ["Good", "Medium", "bad"];
choice4 = ["Good", "Medium", "bad"];

/* ---------------------------------------------------------
stage dialogue array structure
 0 = intial talk
 1 = choice 1
 2 = choice 2 
 3 = choice 3
 4 = image_index while talking
 5 = image_index choice 1
 6 = image_index choice 2
 7 = image_index choice 3
 ---------------------------------------------------------*/

// stage 1 "special talk" ----------------------------------------------------------------
stage_1[0,0] = "Hey, I really appreciate all the hard work" + "\n you have been putting in";
stage_1[0,1] = "Blah Blah Blah";
stage_1[0,2] = choice1;
stage_1[1,0] = "you picked the good option!";
stage_1[1,1] = "EKKK!";
stage_1[1,2] = "your so nice!";
stage_1[2,0] = "this is the medium choice";
stage_1[2,1] = "you have no strong feelings?";
stage_1[2,2] = "Are you sure?";
stage_1[3,0] = "your a meanie!";
stage_1[3,1] = "why did you pick the bad option?";
stage_1[3,2] = "Blahh :p";
stage_1[4,0] = 1;		// character image index for stage 1
stage_1[4,1] = 2;
stage_1[4,2] = 1;
stage_1[5,0] = 3;
stage_1[5,1] = 0;
stage_1[5,2] = 1;
stage_1[5,3] = 2;
stage_1[6,0] = 0;
stage_1[6,1] = 1;
stage_1[6,2] = 1;
stage_1[6,3] = 1;
stage_1[7,0] = 2;
stage_1[7,1] = 2;
stage_1[7,2] = 2;
stage_1[7,3] = 2;

// stage 2 "special talk" ---------------------------------------------------------------
stage_2[0,0] = "Wow thanks so much!";
stage_2[0,1] = "You are the best!";
stage_2[0,2] = choice2;
stage_2[1,0] = "choice 1";
stage_2[1,1] = "choice 1";
stage_2[2,0] = "choice 2";
stage_2[2,1] = "choice 2";
stage_2[3,0] = "choice 3";
stage_2[3,1] = "choice 3";
stage_2[4,0] = 1;
stage_2[4,1] = 1;
stage_2[5,0] = 1;
stage_2[5,1] = 1;
stage_2[6,0] = 1;
stage_2[6,1] = 1;
stage_2[7,0] = 1;
stage_2[7,1] = 1;

// stage 3 "special talk" -----------------------------------------------------------------
stage_3[0,0] = "This is a test";
stage_3[0,1] = "You are the best test!";
stage_3[0,2] = choice3;
stage_3[1,0] = "choice 1";
stage_3[1,1] = "choice 1";
stage_3[2,0] = "choice 2";
stage_3[2,1] = "choice 2";
stage_3[3,0] = "choice 3";
stage_3[3,1] = "choice 3";
stage_3[4,0] = 1;
stage_3[4,1] = 0;
stage_3[5,0] = 1;
stage_3[5,1] = 0;
stage_3[6,0] = 1;
stage_3[6,1] = 0;
stage_3[7,0] = 1;
stage_3[7,1] = 0;

// stage 4 "special talk" ------------------------------------------------------------------
stage_4[0,0] = "you made it!";
stage_4[0,1] = "this is the final talk!";
stage_4[0,2] = "we are besties now";
stage_4[0,3] = choice4;
stage_4[1,0] = "choice 1";
stage_4[1,1] = "choice 1";
stage_4[1,2] = "choice 1";
stage_4[2,0] = "choice 2";
stage_4[2,1] = "choice 2";
stage_4[2,2] = "choice 2";
stage_4[3,0] = "choice 3";
stage_4[3,1] = "choice 3";
stage_4[3,2] = "choice 3";
stage_4[4,0] = 0;
stage_4[4,1] = 2;
stage_4[4,2] = 3;
stage_4[5,0] = 0;
stage_4[5,1] = 2;
stage_4[5,2] = 3;
stage_4[6,0] = 0;
stage_4[6,1] = 2;
stage_4[6,2] = 3;
stage_4[7,0] = 0;
stage_4[7,1] = 2;
stage_4[7,2] = 3;
}