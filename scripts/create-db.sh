#!/bin/bash

DB_NAME=mysql_migrate
DB_USER=travis

mysql -u root <<EOF
drop database if exists $DB_NAME;
create database $DB_NAME;
grant all on $DB_NAME.* to '$DB_USER'@'localhost' identified by '';
EOF
