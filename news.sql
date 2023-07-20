-- 6 new
CREATE TABLE news (
    news_id Int NOT NULL AUTO_INCREMENT ,
    news_head Varchar (100) ,
    news_text Mediumtext ,
    news_date Datetime ,
    PRIMARY KEY (news_id)
)AUTO_INCREMENT = 1;