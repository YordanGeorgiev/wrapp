doRestartNetwork(){

	test -z ${USER:-} && export USER=$(echo $HOME|cut -d'/' -f 3)
	test `sudo -n -l -U $USER 2>&1 | egrep -c -i "not allowed to run sudo|unknown user"` -eq 0 \
		|| doLog "FATAL you need to have sudo to run this script !!!"

   sudo /etc/init.d/networking restart

}
