-- 1 new
CREATE TABLE teacher (
    teacher_id Int NOT NULL AUTO_INCREMENT,
    teacher_username Varchar (50) ,
    teacher_password Text ,
    position Varchar (50) ,
    firstname Varchar (100) ,
    lastname Varchar (100) ,
    email Varchar (100) ,
    phone Varchar (10) ,
    level_id Int ,
    PRIMARY KEY (teacher_id)
)