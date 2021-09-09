# Oscars-vs-Box-Office
ETL Project

Project Description:
We aim to combine two disjoint datasets (about 700 rows, and 10000 rows to start): one that contains movies dating back to 1927, with their titles, year released, awards ceremony year, award category, nominee name, and win status, and another with worldwide box office statistics for movies dating back to 1939, with their title name, year released, and revenue split by domestic and international. The resulting database could be useful to anyone looking to analyze the relationship between box office and award show performance, since both metrics are highly valued in the film industry but not necessarily correlated indicators. 

Links to Datasets:

https://www.kaggle.com/kkhandekar/all-time-worldwide-box-office

https://www.kaggle.com/unanimad/the-oscar-award

Datasets are brought into pandas as .csvs and cleaned, strings standardized, uneeded columns dropped, etc. The Oscars data and Box Office data are merged on shared film name column after trimming the data sets to span the same time periods (1939 - 2019).
An additional table is made from the list of unique films, and the primary key from this Movie table is used as a foreign key in the larger table (Movie ID). The larger table has primary key "Nomination ID" since every row is for a unique nomination some film had (many films have multiple rows).

The two resulting dataframes are exported to pgAdmin to become PostgreSQL tables. 