-- 10
CREATE TABLE comments (
    teacher_id Int ,
    project_id Varchar (8) ,
    comment Mediumtext ,
    comment_time Datetime ,
    comment_chapter Int ,
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (project_id) REFERENCES project(project_id)
) 