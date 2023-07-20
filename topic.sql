-- 8 new
CREATE TABLE topic (
    topic_id Int NOT NULL AUTO_INCREMENT ,
    topic_name Varchar (300) , 
    year Int , 
    term Int , 
    topic_weight Int ,
    topic_section_id Int ,
    PRIMARY KEY (topic_id) ,
    FOREIGN KEY (topic_section_id) REFERENCES topicSection(topic_section_id)
)AUTO_INCREMENT = 1;