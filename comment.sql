-- 11 new
CREATE TABLE comments (
    comment_id Int NOT NULL AUTO_INCREMENT,
    teacher_id Int ,
    project_id Varchar (8) ,
    comment Mediumtext ,
    comment_time Datetime ,
    comment_chapter Int ,
    PRIMARY KEY (comment_id) ,
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (project_id) REFERENCES project(project_id)
) AUTO_INCREMENT = 1;