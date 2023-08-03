-- 10 new
CREATE TABLE file (
    file_id Int NOT NULL AUTO_INCREMENT ,
    file_date Datetime ,
    -- file_name Varchar (100) ,
    file_path Mediumtext ,
    file_status Int ,
    file_chapter Int ,
    project_id Varchar (8) ,
    PRIMARY KEY (file_id) ,
    FOREIGN KEY (project_id) REFERENCES project(project_id)
)AUTO_INCREMENT = 1;