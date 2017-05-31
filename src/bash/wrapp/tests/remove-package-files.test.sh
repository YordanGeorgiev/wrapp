# src/bash/wrapp/funcs/remove-package-files.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestRemovePackageFiles comments ...
# ---------------------------------------------------------
doTestRemovePackageFiles(){

	doLog "DEBUG START doTestRemovePackageFiles"
	
	cat doc/txt/wrapp/tests/remove-package-files.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doTestRemovePackageFiles"
}
# eof func doTestRemovePackageFiles


# eof file: src/bash/wrapp/funcs/remove-package-files.test.sh
