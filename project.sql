-- 4
CREATE TABLE project (
    project_id Varchar (8) NOT NULL ,
    project_nameTH Varchar (500) ,
    project_nameENG Varchar (500) ,
    student_id1 Varchar (13) ,
    student_id2 Varchar (13) ,
    student_id3 Varchar (13) ,
    teacher_id1 Int ,
    teacher_id2 Int ,
    referee_id Int ,
    referee_id1 Int ,
    referee_id2 Int ,
    group_id Int ,
    boundary_path Mediumtext ,
    grade Varchar (2) ,
    year Int ,
    term Int ,
    PRIMARY KEY (project_id) ,
    FOREIGN KEY (student_id1) REFERENCES student(student_id) ,
    FOREIGN KEY (student_id2) REFERENCES student(student_id) ,
    FOREIGN KEY (student_id3) REFERENCES student(student_id) ,
    FOREIGN KEY (teacher_id1) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (teacher_id2) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (referee_id) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (referee_id1) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (referee_id2) REFERENCES teacher(teacher_id) ,
    FOREIGN KEY (group_id) REFERENCES groups(group_id) 
)