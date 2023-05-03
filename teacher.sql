-- 1
CREATE TABLE teacher (
    teacher_id Varchar (13) NOT NULL ,
    teacher_pass Varchar (30) ,
    position Varchar (50) ,
    name Varchar (100) ,
    lastname Varchar (100) ,
    email Varchar (100) ,
    phone Varchar (10) ,
    level_id Int ,
    PRIMARY KEY (teacher_id)
)