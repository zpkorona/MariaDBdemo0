create database if not exists loans_ax;

use loans_ax;

drop table if exists loanstats;

create table loanstats ( 
id int,
loan_amnt int,
funded_amnt int,
funded_amnt_inv decimal,
term char(10),
int_rate char(7),
installment decimal,
grade char(1),
sub_grade char(2),
issue_d date,
loan_status varchar(255),
addr_state char(2) ) engine=columnstore;
