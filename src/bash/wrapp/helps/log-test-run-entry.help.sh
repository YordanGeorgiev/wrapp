# src/bash/wrapp/funcs/log-test-run-entry.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpLogTestRunEntry comments ...
# ---------------------------------------------------------
doHelpLogTestRunEntry(){

	doLog "DEBUG START doHelpLogTestRunEntry"
	
	cat doc/txt/wrapp/helps/log-test-run-entry.help.txt
	
	sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpLogTestRunEntry"
}
# eof func doHelpLogTestRunEntry


# eof file: src/bash/wrapp/funcs/log-test-run-entry.help.sh
