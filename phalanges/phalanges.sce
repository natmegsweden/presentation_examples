## Experiment files and setup
scenario = "phalanges";
pcl_file = "phalanges.pcl";
active_buttons = 1;
button_codes = 256;
response_matching = simple_matching;
write_codes = true;
begin;

## define trials

trial {
					trial_duration = forever;
					trial_type = specific_response;
					terminator_button = 1;
		}
break_trial;

trial {
			trial_duration = 10000;
		}
chpi_trial;

