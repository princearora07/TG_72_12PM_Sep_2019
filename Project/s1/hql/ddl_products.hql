create database if not exists stg_s1 location '/user/dl/stg/stg_s1';

use stg_s1;

create external table products(productno string  , productName string, Description string, isActive string,createdDate string, UpdatedDate string)

row format delimited fields terminated by '|'

location '/user/dl/stg/stg_s1/products';
