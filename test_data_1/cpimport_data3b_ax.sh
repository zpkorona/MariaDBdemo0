#!/bin/sh
/usr/local/mariadb/columnstore/bin/cpimport -m 1 -s ',' -E '"' loans_ax loanstats LoanStats3b.csv
