#v1.0.5
#------------------------------------------------------------------------------
#  Purpose: 
#  export to_repl=<<the-string-to-replace-with>>
#------------------------------------------------------------------------------
doTestMorphDir(){
		
	doLog " INFO START : morph-dir.test"

	# doSpecMorphDir
	echo this function should not work without setting the following shell vars
	echo export dir_to_morph="<<the-dir-to-search-and-replace>>"
	echo to_srch="<<to_srch>>"
	echo to_repl="<<to_repl>>"

	sleep 1	
	bash sfw/bash/wrapp/wrapp.sh -a morph-dir
	echo now this test should succeed	
	mkdir -p /tmp/sfw/bash	
	cp -rv sfw/bash/wrapp /tmp/sfw/bash
	export dir_to_morph=/tmp/sfw/bash/wrapp
	export to_srch=wrapp
	export to_repl=new-app
	bash sfw/bash/wrapp/wrapp.sh -a morph-dir
	
	echo "and check the produced dir"
	find /tmp/sfw/bash/new-app -type f
	doLog " INFO STOP  : morph-dir.test"

}
#eof doMorphDir

#eof file: sfw/bash/wrapp/tests/dev/morph-dir.test.sh
