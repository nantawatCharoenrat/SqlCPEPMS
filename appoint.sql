-- 13
CREATE TABLE appoint (
    appoint_id Varchar (10) NOT NULL ,
    title Varchar (50) ,
    description Mediumtext ,
    group_id Varchar (10) ,
    PRIMARY KEY (appoint_id) , 
    FOREIGN KEY (group_id) REFERENCES groups(group_id)
) 