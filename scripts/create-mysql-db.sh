#!/bin/bash
#
# Example:
# bash mysql-db-create.sh dbname

EXPECTED_ARGS=1
E_BADARGS=65
MYSQL=`which mysql`
HOST='localhost'
USER='user'
PASSWORD='password'
DB=$1

Q1="CREATE DATABASE IF NOT EXISTS $DB;"
Q2="GRANT ALL ON *.* TO '$USER'@'$HOST' IDENTIFIED BY '$PASSWORD';"
Q3="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}"

if [ $# -ne $EXPECTED_ARGS ]
then
  exit $E_BADARGS
fi

$MYSQL -uroot -pvagrant -e "$SQL"
