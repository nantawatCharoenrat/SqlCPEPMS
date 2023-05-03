-- 9
CREATE TABLE file (
    file_num Varchar (4) NOT NULL ,
    file_date Datetime ,
    file_name Varchar (50) ,
    file_path Mediumtext ,
    file¬_status Int ,
    file_chapter Int ,
    project_id Varchar (4) ,
    PRIMARY KEY (file_num) ,
    FOREIGN KEY (project_id) REFERENCES project(project_id)
)