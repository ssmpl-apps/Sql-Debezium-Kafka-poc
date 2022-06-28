#!/bin/bash
#
# Copyright Debezium Authors.
#
# Licensed under the Apache Software License version 2.0, available at http://www.apache.org/licenses/LICENSE-2.0
#
counter=1
while true
do
echo $counter
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P Flipkart*13 -Q insert into Persons "values($counter, 'Aparna','Palle',40);"
((counter++))
done
echo All done
