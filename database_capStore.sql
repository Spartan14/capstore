create database capStore;

use capStore;

create table merchant(merchant_Id bigint primary key auto_increment,merchant_Name  varchar(40), merchant_Type varchar(15), phone_No varchar(10), email varchar(50),password varchar(15),govt_Proof_Type  varchar(10),govt_Proof varchar(16));

create table product(prod_Id bigint primary key auto_increment, prod_Name varchar(50), prod_Price double(10,2), prod_Quantity bigint, prod_Discount double(6,2), prod_Category varchar(50), prod_Desc varchar(500), prod_Image varchar(150), merchant_Id bigint references merchant(merchant_Id));

create table transaction(trans_Id bigint primary key auto_increment, price bigint, mode_Of_Payment varchar(15), dop date, prod_Id bigint references product(prod_Id), cust_Id bigint);

create table refund(trans_Id bigint, refunded_Money double(10,2));