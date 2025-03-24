####### INITIATION #######
scenario = "GoNoGo_freqTagging";
pcl_file = "GoNoGo_freqTagging.pcl";
active_buttons = 14;
button_codes = 1,2,3,4,5,6,7,8,9,0, 1, 1, 1, 1;
default_background_color = 0, 0, 0; default_font = "arial"; default_font_size = 24; default_text_color = 235, 235, 235; default_text_align = align_left;
response_logging = log_active;
response_matching = simple_matching;

begin;
######## PICTURES ########
#black screen
picture {
} p_Default;

# cross hair
picture {
	background_color = 0,0,0;
	box { height = 4; width = 30; color = 255,255,255; } b_Horiz1; x = 0; y = 0;
	box { height = 30; width = 4; color = 255,255,255; } b_Verti1; x = 0; y = 0;
} p_fx;



picture {
	background_color = 0,0,0;
	polygon_graphic {
		 sides = 3;
		 radius = 300;
		 #line_width =0;
		 fill_color = 255,0,0;
		 line_color = 255,0,0;
	} goShape; x = 0; y = 0;
	box { height = 4; width = 30; color = 255,255,255; } b_Horiz2; x = 0; y = 0;
	box { height = 30; width = 4; color = 255,255,255; } b_Verti2; x = 0; y = 0;
} p_GO;
		


picture {
	background_color = 0,0,0;
	polygon_graphic {
		 sides = 3;
		 radius = 300;
		 #line_width =0;
		 rotation = 180;
		 fill_color = 255,0,0;
		 line_color = 255,0,0;
	} noGoShape; x = 0; y = 0;
	box { height = 4; width = 30; color = 255,255,255; } b_Horiz3; x = 0; y = 0;
	box { height = 30; width = 4; color = 255,255,255; } b_Verti3; x = 0; y = 0;
} p_NOGO;
		

#alt screen (3 lines)

picture {
	#display_index = 2; 
	text { caption = " "; } t_Alt3La; x = 0; y = 80; #display_index = 2;
	text { caption = "Press [ENTER] to confirm or [Esc] to abort. "; } t_Alt3Lb; x = 0; y = 0;
	text { caption = " "; } t_Alt3Lc; x = 0; y = -80;
} p_Alt3L;


#info screen (3 lines)

picture {
	text { caption = " "; } t_Info3La; x = 0; y = 80;
	text { caption = "Press [ENTER] to confirm or [Esc] to abort. "; } t_Info3Lb; x = 0; y = 0;
	text { caption = " "; } t_Info3Lc; x = 0; y = -120;
} p_Info3L;



