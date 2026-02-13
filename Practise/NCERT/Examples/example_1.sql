-- Example 9.1 Create table STUDENT.

CREATE TABLE EXAMPLE_STUDENT (
    RollNumber INT,
    SName VARCHAR(20),
    SDateOfBirth DATE,
    GUID CHAR(12),
    PRIMARY KEY (RollNumber)
)

INSERT INTO example_student (`RollNumber`,`SName`,`SDateOfBirth`,GUID) VALUES
                            (3,'Aaliya','2002-12-09','9090')

SELECT * from example_student


ALTER TABLE example_student
ADD COLUMN fees INT ;                            


UPDATE example_student
SET fees = 4000
WHERE `RollNumber` = 3

ALTER TABLE example_student
ADD COLUMN mob_no BIGINT ;

UPDATE example_student
SET mob_no = 909090090
WHERE `RollNumber` = 2