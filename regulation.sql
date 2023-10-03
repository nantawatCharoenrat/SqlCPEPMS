-- 16
CREATE TABLE regulation (
    regulation_id Int NOT NULL AUTO_INCREMENT ,
    regulationFile_path	Mediumtext	,	
    regulation_text Varchar (300) ,
    year Int ,
    term Int ,
    PRIMARY KEY (regulation_id)
)AUTO_INCREMENT = 1;