# sfw/bash/wrapp/funcs/tmux-common.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestTmuxCommon comments ...
# ---------------------------------------------------------
doTestTmuxCommon(){

	doLog "DEBUG START doTestTmuxCommon"
	
	cat docs/txt/wrapp/tests/tmux-common.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doTestTmuxCommon"
}
# eof func doTestTmuxCommon


# eof file: sfw/bash/wrapp/funcs/tmux-common.test.sh
