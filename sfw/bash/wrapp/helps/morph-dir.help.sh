# sfw/bash/wrapp/funcs/morph-dir.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpMorphDir comments ...
# ---------------------------------------------------------
doHelpMorphDir(){

	doLog "DEBUG START doHelpMorphDir"
	
	cat docs/txt/wrapp/helps/morph-dir.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpMorphDir"
}
# eof func doHelpMorphDir


# eof file: sfw/bash/wrapp/funcs/morph-dir.help.sh
