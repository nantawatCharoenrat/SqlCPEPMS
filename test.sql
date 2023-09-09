-- 9 new
CREATE TABLE test (
    test_id Int NOT NULL AUTO_INCREMENT ,
    score FLOAT ,
    grade Varchar (2) ,
    student_id Varchar (13) ,
    PRIMARY KEY (test_id) , 
    FOREIGN KEY (student_id) REFERENCES student(student_id)
)AUTO_INCREMENT = 1;