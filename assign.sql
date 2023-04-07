CREATE TABLE assign (
    assign_id Varchar (6) NOT NULL ,
    date_post Datetime , 
    date_assign Datetime ,
    comment Mediumtext , 
    project_id Varchar (4) ,
    PRIMARY KEY (assign_id) , 
    FOREIGN KEY (project_id) REFERENCES project(project_id)
) 