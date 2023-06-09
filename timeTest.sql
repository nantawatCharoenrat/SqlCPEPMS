-- 1
CREATE TABLE timeTest (
    timeTest_id Varchar (13) NOT NULL ,
    start_time Date ,
    stop_time Date ,
    room_number Varchar (10) ,
    project_id Varchar (4) ,
    PRIMARY KEY (timeTest_id) , 
    FOREIGN KEY (project_id) REFERENCES project(project_id)
)