#!/bin/bash


# v1.1.0
#------------------------------------------------------------------------------
# creates a package from the relative file paths specified in the .dev file
#------------------------------------------------------------------------------
doTestCreateRelativePackage(){
	doLog " START : create-relative-package.test"

	doSpecCreateRelativePackage

	doHelpCreateRelativePackage
   
   set +x	
	# test the call with the include file of the current env - usually dev
   exit_code=0
	bash src/bash/wrapp/wrapp.sh -a create-relative-package
   export exit_code=$?
   doLog "INFO create-relative-package.test.sh exit_code: $exit_code"

   test $exit_code -ne 0 && exit $exit_code
   test $exit_code -ne 0 && doLog "this should not be seen becase I should exit"
   sleep 3
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	# test the call with the include file of the tst env
	bash src/bash/wrapp/wrapp.sh -a create-relative-package -i met/.tst.wrapp
   export exit_code=$?
   test $exit_code -ne 0 && exit $exit_code
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	# test the call with the include file of the prd env
	bash src/bash/wrapp/wrapp.sh -a create-relative-package -i met/.prd.wrapp
   export exit_code=$?
   test $exit_code -ne 0 && exit $exit_code
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	# test the call with the include file of the prd env
	bash src/bash/wrapp/wrapp.sh -a create-relative-package -i met/.git.wrapp
   export exit_code=$?
   test $exit_code -ne 0 && exit $exit_code
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	doLog " STOP  : create-relative-package.test"
}
#eof doCreateRelativePackage
