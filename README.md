Table: googlelogin Columns: ID varchar(40) PK FullName varchar(30) GivenName varchar(20) familyName varchar(20) ImageURL varchar(100) Email varchar(30) googleEmail varchar(30)

Table: kakaologin Columns: k_id varchar(100) PK k_nickname varchar(50) email varchar(50)

Table: member Columns: id varchar(20) PK pw varchar(20) name varchar(20) phone varchar(20) pphone varchar(11) birth date gender varchar(10) email varchar(50)

Table: naverlogin Columns: n_id varchar(100) PK n_birthday varchar(10) n_gender varchar(1) n_name varchar(20) n_nickName varchar(30) n_mobile varchar(20) n_birthyear varchar(10) n_email varchar(50) eamil varchar(50)

create table naverlogin( n_id varchar(100)primary key , n_birthday varchar(10), n_gender varchar(1), n_name varchar(20), n_nickName varchar(30), n_mobile varchar(20), n_birthyear varchar(10), n_email varchar(50) , id varchar(20), phone varchar(12), pphone varchar(12) );

create table kakaologin( k_id varchar(100)primary key , k_nickname varchar(50), email varchar(50) );
