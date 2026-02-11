SELECT * FROM students;


-- Adding primary key to a relation 


-- Adding constraint UNIQUE to an existing attribute 
ALTER TABLE students ADD UNIQUE (name);


-- Adding an attribute to an existing table 
ALTER TABLE students ADD mob_no BIGINT(100);

-- Modifying datatype of an an attribute 
ALTER TABLE students MODIFY score BIGINT(100)

-- Modifying constraint of an attribute 
ALTER TABLE students MODIFY score BIGINT NOT NULL;

-- Adding default value to an attribute 

ALTER TABLE students MODIFY mob_no BIGINT DEFAULT '909';


-- Removing an attribute 
ALTER TABLE students DROP mob_no

-- Renaming an attribue 
ALTER TABLE students RENAME COLUMN scores TO score;
DESC students