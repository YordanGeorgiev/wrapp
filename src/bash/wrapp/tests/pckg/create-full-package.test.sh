#!/bin/bash 

#v1.1.0
#------------------------------------------------------------------------------
# tests the full package creation
#------------------------------------------------------------------------------
doTestCreateFullPackage(){
	cd $PRODUCT_INSTANCE_DIR
	doLog " INFO START : create-full-package.test"
	
	cat doc/txt/wrapp/tests/pckg/create-full-package.test.txt

	doSpecCreateFullPackage

	doHelpCreateFullPackage

   export exit_code=0
	bash src/bash/wrapp/wrapp.sh -a create-full-package
   export exit_code=$?
	doLog " create-relative-package.test-1 exit_code: $exit_code "
   sleep "$sleep_interval"
   test $exit_code -ne 0 && return

	bash src/bash/wrapp/wrapp.sh -a create-full-package -i $PRODUCT_INSTANCE_DIR/met/.tst.wrapp
   export exit_code=$?
	doLog " create-relative-package.test-1 exit_code: $exit_code "
   sleep "$sleep_interval"
   test $exit_code -ne 0 && return
	
	bash src/bash/wrapp/wrapp.sh -a create-full-package -i $PRODUCT_INSTANCE_DIR/met/.prd.wrapp
   export exit_code=$?
	doLog " create-relative-package.test-1 exit_code: $exit_code "
   sleep "$sleep_interval"
   test $exit_code -ne 0 && return
	
	bash src/bash/wrapp/wrapp.sh -a create-full-package -i $PRODUCT_INSTANCE_DIR/met/.git.wrapp
   export exit_code=$?
	doLog " create-relative-package.test-1 exit_code: $exit_code "
   sleep "$sleep_interval"
   test $exit_code -ne 0 && return
	

	doLog " INFO STOP  : create-full-package.test"
}
#eof test doCreateFullPackage
