CREATE TABLE Movies(
movie_ID INTEGER, 
film VARCHAR(45),
PRIMARY KEY (movie_ID)
)

CREATE TABLE Film_Performance(
year INTEGER,
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