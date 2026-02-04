-- Active: 1769528388318@@127.0.0.1@3306@lms

-- Creating a Database
CREATE DATABASE LMS;

-- Using Database

USE LMS;

-- Creating a table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(20),
    country VARCHAR(10),
    score INT(10)
);

-- Showing all elements present in the table Students
SELECT *FROM students;


-- Inserting Values in the student table 
INSERT INTO students(id,name,country,score) VALUES(1,"Maria","Germany",350),(2,"JOHN","USA",900),(3,"Geory","UK",750),(4,"Martin","Germany",500),(5,"Peter","USA",0);

-- Changing table name 
