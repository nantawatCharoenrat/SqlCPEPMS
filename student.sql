-- 2
CREATE TABLE student (
    student_id Varchar (13) NOT NULL ,
    student_password Text ,
    firstname Varchar (100) ,
    lastname Varchar (100) ,
    year Int ,
    term Int ,
    email Varchar (100) ,
    phone Varchar (10) ,
    group_id Varchar (10) ,
    PRIMARY KEY (student_id) ,
    FOREIGN KEY (group_id) REFERENCES groups(group_id) 
)