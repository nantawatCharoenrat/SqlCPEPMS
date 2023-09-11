-- 3
CREATE TABLE student (
    student_id Varchar (13) NOT NULL ,
    student_password Text ,
    firstname Varchar (150) ,
    lastname Varchar (150) ,
    year Int ,
    term Int ,
    email Varchar (150) ,
    phone Varchar (10) ,
    group_id Int ,
    grade Varchar (2) ,
    score FLOAT ,
    PRIMARY KEY (student_id) ,
    FOREIGN KEY (group_id) REFERENCES groups(group_id) 
)