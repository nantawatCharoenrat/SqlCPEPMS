-- 14
CREATE TABLE timeTest (
    timeTest_id Varchar (10) NOT NULL ,
    timeTest_date Date ,
    start_time Varchar (10) ,
    stop_time Varchar (10) ,
    room_number Varchar (10) ,
    project_id Varchar (8) ,
    PRIMARY KEY (timeTest_id) , 
    FOREIGN KEY (project_id) REFERENCES project(project_id)
)