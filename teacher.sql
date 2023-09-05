-- 1 new
CREATE TABLE teacher (
    teacher_id Int NOT NULL AUTO_INCREMENT,
    teacher_username Varchar (150) ,
    teacher_password Text ,
    position Varchar (50) ,
    firstname Varchar (150) ,
    lastname Varchar (150) ,
    email Varchar (150) ,
    phone Varchar (10) ,
    level_id Int ,
    PRIMARY KEY (teacher_id)
)AUTO_INCREMENT = 1;