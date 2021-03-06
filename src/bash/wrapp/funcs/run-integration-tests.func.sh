# src/bash/wrapp/funcs/run-integration-tests.func.sh

doRunIntegrationTests(){
   test -z "${PROJ_INSTANCE_DIR-}" && PROJ_INSTANCE_DIR="$PRODUCT_INSTANCE_DIR"
   source $PROJ_INSTANCE_DIR/.env ; env_type=$ENV_TYPE
   doExportJsonSectionVars $PROJ_INSTANCE_DIR/cnf/env/$env_type.env.json '.env.db'
   doExportJsonSectionVars $PROJ_INSTANCE_DIR/cnf/env/$env_type.env.json '.env.app'

   bash src/bash/wrapp/wrapp.sh -a mojo-morbo-stop  
   bash src/bash/wrapp/wrapp.sh -a mojo-morbo-start 
   #test $? -ne 0 && return

   doLog "INFO make a backup of the current db - inserts only "
   bash src/bash/wrapp/wrapp.sh -a backup-postgres-db-inserts
	
   doLog "INFO re-create the $env_type db"
   bash src/bash/wrapp/wrapp.sh -a run-pgsql-scripts

   last_db_backup_file=$(find $PROJ_INSTANCE_DIR/dat/mix -name $postgres_db_name*insrts.dmp.sql | sort -n | tail -n 1)
   PGPASSWORD="${postgres_db_useradmin_pw:-}" psql -v ON_ERROR_STOP=1 -q -t -X -w \
      -h $postgres_db_host -p $postgres_db_port -U "${postgres_db_useradmin:-}" \
      -v postgres_db_name="$postgres_db_name" -f "$last_db_backup_file" -d "$postgres_db_name"
   ret=$? ; test $ret -ne 0 && doExit 1 "the integration tests failed on db restore .."

   doLog "INFO generating md docs"
   bash src/bash/wrapp/wrapp.sh -a generate-md-docs
   test $? -ne 0 && return
   
   doLog "INFO START integration testing - do run all the implemented action tests" 
   perl src/perl/wrapp/t/TestQto.pl
   test $? -ne 0 && return
	echo -e "\n\n\n" 
   
}

# eof file: src/bash/wrapp/funcs/run-integration-tests.func.sh
