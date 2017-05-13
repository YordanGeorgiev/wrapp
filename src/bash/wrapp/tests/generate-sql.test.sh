# src/bash/wrapp/funcs/generate-sql.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestGenerateSQL comments ...
# ---------------------------------------------------------
doTestGenerateSQL(){

	doLog "DEBUG START doTestGenerateSQL"
	
	cat doc/txt/wrapp/tests/generate-sql.test.txt
	
	sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   bash src/bash/wrapp/wrapp.sh -a generate-sql

	doLog "DEBUG STOP  doTestGenerateSQL"
}
# eof func doTestGenerateSQL


# eof file: src/bash/wrapp/funcs/generate-sql.test.sh
