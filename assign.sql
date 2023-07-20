-- 12 new
CREATE TABLE assign (
    assign_id Int NOT NULL AUTO_INCREMENT ,
    date_post Datetime , 
    date_assign Datetime ,
    comment Mediumtext , 
    project_id Varchar (8) ,
    PRIMARY KEY (assign_id) , 
    FOREIGN KEY (project_id) REFERENCES project(project_id)
) AUTO_INCREMENT = 1;