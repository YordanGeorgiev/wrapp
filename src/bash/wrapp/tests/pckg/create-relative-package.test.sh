#!/bin/bash


# v1.1.0
#------------------------------------------------------------------------------
# creates a package from the relative file paths specified in the .dev file
#------------------------------------------------------------------------------
doTestCreateRelativePackage(){
	doLog " START : create-relative-package.test"

	doSpecCreateRelativePackage

	doHelpCreateRelativePackage
	
	# test the call with the include file of the current env - usually dev
	bash src/bash/wrapp/wrapp.sh -a create-relative-package
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	# test the call with the include file of the tst env
	bash src/bash/wrapp/wrapp.sh -a create-relative-package -i met/.tst.wrapp
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	# test the call with the include file of the prd env
	bash src/bash/wrapp/wrapp.sh -a create-relative-package -i met/.prd.wrapp
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	# test the call with the include file of the prd env
	bash src/bash/wrapp/wrapp.sh -a create-relative-package -i met/.git.wrapp
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	doLog " STOP  : create-relative-package.test"
}
#eof doCreateRelativePackage
