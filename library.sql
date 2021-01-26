CREATE DATABASE app_school

CREATE TABLE book (
id int primary key,
title varchar(50) NOT NULL,
location_id int foreign key location,
gender_id int foreign key gender,
author_id foreign key author
)

CREATE TABLE user (
id int primary key,
date_debut varchar(50) NOT NULL,
date_fin varchar(50) NOT NULL,
user_id int foreign key user,
book_id int foreign key book,
emprunteur_id int foreign key emprunteur
)

CREATE TABLE emprunteur (
id int primary key,
firstname varchar(50) NOT NULL,
lastname varchar(50) NOT NULL,
book_id int foreign key book
)

CREATE TABLE author (
id int primary key,
name varchar(50) NOT NULL,
book_id int foreign key book
)

CREATE TABLE location (
id int primary key,
name varchar(50) NOT NULL,
book_id int foreign key book
gender_id int foreign key gender
)

CREATE TABLE gender (
id int primary key,
name varchar(50) NOT NULL,
book_id int foreign key book
location_id int foreign key location
)

