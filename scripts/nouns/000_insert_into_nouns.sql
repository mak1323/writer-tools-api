LOAD DATA LOCAL INFILE 'nouns-Sheet1.csv'
INTO TABLE nouns
FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(word, theme);