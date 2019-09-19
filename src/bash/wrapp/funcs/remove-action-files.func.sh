# src/bash/wrapp/funcs/remove-action-files.func.sh

# v1.1.2
# ---------------------------------------------------------
# obs we assume that the caller is in the PRODUCT_INSTANCE_DIR
# simply delete each file which greps finds to match to the action
# name(s) cnfigured in the : 
# src/bash/wrapp/tests/rem-wrapp-actions.lst
# list file
# ---------------------------------------------------------
doRemoveActionFiles(){

	doLog "DEBUG START doRemoveActionFiles"
	
	# for each defined action 	
	while read -r act ; do (
		doLog "INFO STOP  :: removing action: $act"
		find . | grep $act | cut -c 3- | xargs rm -fv "{}"
      for env in `echo dev tst prd src`; do perl -pi -e 's/^.*?'$act'.*\n$//gm' "met/.$env.";done;
		
	); 
	done< <(cat "src/bash//tests/rem--actions.lst")

	doLog "DEBUG STOP  doRemoveActionFiles"
}
# eof func doRemoveActionFiles


# eof file: src/bash/wrapp/funcs/remove-action-files.func.sh
