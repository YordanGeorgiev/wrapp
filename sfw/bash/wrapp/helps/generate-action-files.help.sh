# sfw/bash/wrapp/funcs/generate-action-files.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpGenerateActionFiles comments ...
# ---------------------------------------------------------
doHelpGenerateActionFiles(){

	doLog "DEBUG START doHelpGenerateActionFiles"
	
	cat docs/txt/wrapp/helps/generate-action-files.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpGenerateActionFiles"
}
# eof func doHelpGenerateActionFiles


# eof file: sfw/bash/wrapp/funcs/generate-action-files.help.sh
