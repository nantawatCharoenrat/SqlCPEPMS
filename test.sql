CREATE TABLE test (
    test_id Varchar (4) NOT NULL ,
    score_book Int ,
    score_present Int ,
    score_product Int ,
    score Int ,
    project_id Varchar (4) ,
    PRIMARY KEY (test_id) , 
    FOREIGN KEY (project_id) REFERENCES project(project_id)
)