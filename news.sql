-- 6 new
CREATE TABLE news (
    news_id Int NOT NULL AUTO_INCREMENT ,
    news_head Varchar (300) ,
    news_text Mediumtext ,
    news_date Datetime ,
    year Int ,
    term Int ,
    PRIMARY KEY (news_id)
)AUTO_INCREMENT = 1;