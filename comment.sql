-- 11 new
CREATE TABLE comments (
    comment_id Int NOT NULL AUTO_INCREMENT,
    comment Mediumtext ,
    comment_time Datetime ,
    student_id Varchar (13) ,
    teacher_id Int ,
    file_id Int ,
    PRIMARY KEY (comment_id) ,
    FOREIGN KEY (student_id) REFERENCES student(student_id) ,
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (file_id) REFERENCES file(file_id)
) AUTO_INCREMENT = 1;