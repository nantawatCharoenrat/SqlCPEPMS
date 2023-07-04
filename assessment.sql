-- 12
CREATE TABLE assessment (
    topic_id Varchar (4) ,
    referee_id Int ,
    project_id Varchar (8) ,
    score Int ,
    FOREIGN KEY (project_id) REFERENCES project(project_id) ,
    FOREIGN KEY (referee_id) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (topic_id) REFERENCES topic(topic_id) 
)