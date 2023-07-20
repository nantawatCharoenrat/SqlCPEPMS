-- 9 new
CREATE TABLE test (
    test_id Int NOT NULL AUTO_INCREMENT ,
    score Int ,
    grade Varchar (2) ,
    project_id Varchar (4) ,
    PRIMARY KEY (test_id) , 
    FOREIGN KEY (project_id) REFERENCES project(project_id)
)AUTO_INCREMENT = 1;