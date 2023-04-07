CREATE TABLE appoint (
    appoint_id Varchar (4) NOT NULL ,
    title Varchar (50) ,
    description Mediumtext ,
    group_id Varchar (4) ,
    PRIMARY KEY (appoint_id) , 
    FOREIGN KEY (group_id) REFERENCES groups(group_id)
) 