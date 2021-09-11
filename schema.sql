CREATE TABLE Movies(
movie_ID INTEGER, 
film VARCHAR(45),
PRIMARY KEY (movie_ID)
);

CREATE TABLE Film_Performance(
nomination_ID INTEGER,
Year INTEGER,
WorldwideBoxOffice FLOAT,
DomesticBoxOffice FLOAT,
InternationalBoxOffice FLOAT,
category VARCHAR(80),
winner BOOLEAN,
nomination_count INTEGER,
movie_ID INTEGER,
PRIMARY KEY(nomination_ID),
FOREIGN KEY (movie_ID) REFERENCES Movies (movie_ID)
);