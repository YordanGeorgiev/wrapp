# src/bash/wrapp/funcs/log-test-run-entry.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestLogTestRunEntry comments ...
# ---------------------------------------------------------
doTestLogTestRunEntry(){

	doLog "DEBUG START doTestLogTestRunEntry"
	
	cat doc/txt/wrapp/tests/log-test-run-entry.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doTestLogTestRunEntry"
}
# eof func doTestLogTestRunEntry


# eof file: src/bash/wrapp/funcs/log-test-run-entry.test.sh
