CREATE TABLE Movies(
film VARCHAR(45),
movie_ID INTEGER, 
PRIMARY KEY (movie_ID)
)

CREATE TABLE Film_Performance(
year INTEGER,
film VARCHAR(45),
WorldwideBoxOffice FLOAT,
DomesticBoxOffice FLOAT,
InternationalBoxOffice FLOAT,
category VARCHAR(80),
name VARCHAR(150),
winner BOOLEAN,
nomination_count INTEGER,
nomination_ID INTEGER,
movie_ID INTEGER,
PRIMARY KEY(nomination_ID),
FOREIGN KEY (movie_ID) REFERENCES Movies (movie_ID)
)