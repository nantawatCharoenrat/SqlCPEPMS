-- 7 new
CREATE TABLE topicSection (
    topic_section_id Int NOT NULL AUTO_INCREMENT,
    topic_section Varchar(150) ,
    topic_section_weight Int ,
    topic_section_level Int ,
    topic_section_status Int ,
    PRIMARY KEY (topic_section_id)
)AUTO_INCREMENT = 1;