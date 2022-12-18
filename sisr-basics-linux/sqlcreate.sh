#!/bin/bash
readonly EXPECTED_ARGS=3
readonly E_BADARGS=65
readonly MYSQL=`which mysql`
readonly Q1="CREATE DATABASE $1;"
readonly Q2="CREATE USER '$2'@'localhost' IDENTIFIED BY '$3';"
readonly Q3="GRANT ALL on $1.* TO '$2'@'localhost';"
readonly Q4="FLUSH PRIVILEGES;"
readonly SQL="${Q1}${Q2}${Q3}${Q4}"
if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: $0 dbname dbuser dbpass"
  exit $E_BADARGS
fi
$MYSQL -r -e "$SQL"
echo "Database $1 and user $2 created with a password $3"
