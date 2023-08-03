-- 14 new
CREATE TABLE appoint (
    appoint_id Int NOT NULL AUTO_INCREMENT ,
    title Varchar (300) ,
    description Mediumtext ,
    appoint_date Datetime ,
    group_id Int ,
    PRIMARY KEY (appoint_id) , 
    FOREIGN KEY (group_id) REFERENCES groups(group_id)
) AUTO_INCREMENT = 1;