-- 13 new
CREATE TABLE assessment (
    assessment Int NOT NULL AUTO_INCREMENT ,
    topic_id Int ,
    referee_id Int ,
    project_id Varchar (8) ,
    student_id Varchar (13) ,
    score Int ,
    PRIMARY KEY (assessment) ,
    FOREIGN KEY (project_id) REFERENCES project(project_id) ,
    FOREIGN KEY (referee_id) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (student_id) REFERENCES student(student_id) ,
    FOREIGN KEY (topic_id) REFERENCES topic(topic_id) 
)AUTO_INCREMENT = 1;