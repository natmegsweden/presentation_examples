# >> Files to be included for the experiment
scenario = "resting_state"; 
pcl_file = "resting_state.pcl";

# define defoult values for text and backgorund
default_background_color = 0,0,0; # black
default_text_color = 255,255,255; # white
default_font = "arial";
default_font_size = 48;
default_text_align = align_left;

# >> Experiment; config
active_buttons = 15;
button_codes = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15;
# << Experiment; config      


# >>Init Experiment *************************************
begin;
######## PICTURES: no surt pero ho entenc ########
#white screen
picture {
} p_Default;

#info screen (3 lines)
picture {
	text { caption = " "; } t_Info3La; x = 0; y = 80;
	text { caption = "Press [ENTER] to confirm or [Esc] to abort. "; } t_Info3Lb; x = 0; y = 0;
	text { caption = " "; } t_Info3Lc; x = 0; y = -80;
} p_Info3L;


#fixation cross (in color black)
picture {
	box { height = 5; width = 60; color = 255,255,255; } b_Horiz; x = 0; y = 0;
	box { height = 60; width = 5; color = 255,255,255; } b_Verti; x = 0; y = 0;
} p_Fixation;



#alt screen (3 lines)
picture {
	display_index = 2; 
	text { display_index = 2; caption = " "; } t_Alt3La; x = 0; y = 80;
	text { display_index = 2; caption = "Press [ENTER] to confirm or [Esc] to abort. "; } t_Alt3Lb; x = 0; y = 0;
	text { display_index = 2; caption = " "; } t_Alt3Lc; x = 0; y = -80;
} p_Alt3L;


picture {text {caption = "Tack!"; font_size=40; font_color = 255,255,0;}; x=0;y=0;} endOfTest;








