create database if not exists stg_s1 location '/user/dl/stg/stg_s1';

use stg_s1;

create external table transactions(txnno string  , txndate string,custno string, amount string,productno string, spendby string )

row format delimited fields terminated by '|'

location '/user/dl/stg/stg_s1/transactions';
