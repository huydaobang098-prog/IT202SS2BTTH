CREATE DATABASE BOOK;
USE BOOK;

CREATE TABLE BOOKS (
 bookId char(5) primary key,
 bookName varchar(200) not null,
 bookQuantity int check(bookQuantity >=0),
 bookPrice decimal(10,2) default 5000
);

CREATE TABLE BORROW_BOOKS (
	bookBorrowed int auto_increment primary key,
    bookId char(5) primary key,
    dayBorrowed date default (current_date)
);