create database mer_capStore;

use mer_capStore;

create table merchant(merchant_Id bigint primary key auto_increment,merchant_Name  varchar(40) not null, merchant_Type varchar(15) not null, phone_No varchar(10) not null, email varchar(50) unique not null, password varchar(15) not null,govt_Proof_Type varchar(10) not null, govt_Proof varchar(16) not null);

create table product(prod_Id bigint primary key auto_increment, prod_Name varchar(50) not null, prod_Price double(10,2) not null, prod_Quantity bigint not null, prod_Discount double(6,2) not null, prod_Category varchar(50) not null, prod_Desc varchar(500) not null, prod_Image varchar(150), merchant_Id bigint references merchant(merchant_Id));

create table transaction(trans_Id bigint primary key auto_increment, amount bigint not null, mode_Of_Payment varchar(15) not null, status_Of_Payment varchar(10), dop date not null, prod_Id bigint references product(prod_Id), cust_Id bigint not null);

create table refund(trans_Id bigint not null, refunded_Money double(10,2) not null);