--Added by Rahul G
create database if not exists dl_stg_s1 location '/user/dl/stg/dl_stg_s1.db';
use dl_stg_s1;
create external table customers(custno string,
 firstname string, lastname string,gender string,
age string,profession string,contactNo string,
emailId string,
city string, state string,
isActive string ,createdDate string, UpdatedDate string)
row format delimited fields terminated by '|'
location '/user/dl/stg/dl_stg_s1.db/customers';