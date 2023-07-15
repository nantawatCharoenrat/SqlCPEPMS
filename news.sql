-- 6
CREATE TABLE news (
    news_id Varchar (9) NOT NULL ,
    news_head Varchar (100) ,
    news_text Mediumtext ,
    news_date Datetime ,
    PRIMARY KEY (news_id)
)