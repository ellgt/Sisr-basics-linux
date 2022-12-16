#!/bin/bash

readonly EXPECTED_ARGS=3
readonly E_BADARGS=65
readonly MYSQL=`which mysql`


readonly Q1="CREATE DATABASE IF NOT EXISTS $1;"
readonly Q2="GRANT ALL ON *.* TO '$2'@'localhost' IDENTIFIED BY '$3';"
readonly Q3="FLUSH PRIVILEGES;"
readonly SQL="${Q1}${Q2}${Q3}"


if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: $0 dbname dbuser dbpass"
  exit $E_BADARGS
fi


$MYSQL -r -e "$SQL"

echo "Database sisr and user usersisr created with a password pwsisr"
