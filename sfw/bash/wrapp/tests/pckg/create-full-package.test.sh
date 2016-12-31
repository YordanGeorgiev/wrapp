#!/bin/bash 

#v1.1.0
#------------------------------------------------------------------------------
# tests the full package creation
#------------------------------------------------------------------------------
doTestCreateFullPackage(){
	cd $product_instance_dir
	doLog " INFO START : create-full-package.test"
	
	cat docs/txt/wrapp/tests/pckg/create-full-package.test.txt

	doSpecCreateFullPackage

	doHelpCreateFullPackage

	bash sfw/bash/wrapp/wrapp.sh -a create-full-package
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"

	bash sfw/bash/wrapp/wrapp.sh -a create-full-package -i $product_instance_dir/meta/.tst.wrapp
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"
	
	bash sfw/bash/wrapp/wrapp.sh -a create-full-package -i $product_instance_dir/meta/.prd.wrapp
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"
	
	bash sfw/bash/wrapp/wrapp.sh -a create-full-package -i $product_instance_dir/meta/.git.wrapp
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"

	doLog " INFO STOP  : create-full-package.test"
}
#eof test doCreateFullPackage
