-- 5 new
CREATE TABLE document (
    document_id Int NOT NULL AUTO_INCREMENT,
    document_path Mediumtext ,
    document_name Varchar (300),
    document_date Datetime ,
    year Int ,
    term Int ,
    PRIMARY KEY (document_id) 
)AUTO_INCREMENT = 1;