-- 14 new
CREATE TABLE appoint (
    appoint_id Int NOT NULL AUTO_INCREMENT ,
    title Varchar (50) ,
    description Mediumtext ,
    group_id Int ,
    PRIMARY KEY (appoint_id) , 
    FOREIGN KEY (group_id) REFERENCES groups(group_id)
) 