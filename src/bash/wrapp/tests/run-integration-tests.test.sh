# src/bash/wrapp/funcs/run-integration-tests.test.sh

# v1.3.0
doTestRunIntegrationTests(){

	doLog "DEBUG START doTestRunIntegrationTests"
	
	# Action !!!
   bash src/bash/wrapp/wrapp.sh -a run-integration-tests

	doLog "DEBUG STOP  doTestRunIntegrationTests"
}
# eof func doTestRunIntegrationTests


# eof file: src/bash/wrapp/funcs/run-integration-tests.test.sh
