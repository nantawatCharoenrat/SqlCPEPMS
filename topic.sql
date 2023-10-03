-- 8 new
CREATE TABLE topic (
    topic_id Int NOT NULL AUTO_INCREMENT ,
    topic_name Varchar (100) , 
    topic_section_id Int ,
    topic_status Int ,
    PRIMARY KEY (topic_id) ,
    FOREIGN KEY (topic_section_id) REFERENCES topicSection(topic_section_id)
)AUTO_INCREMENT = 1;