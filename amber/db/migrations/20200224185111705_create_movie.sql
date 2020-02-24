-- +micrate Up
CREATE TABLE movies (
  id BIGSERIAL PRIMARY KEY,
  rank INT,
  title VARCHAR,
  description TEXT,
  runtime INT,
  genre VARCHAR,
  rating FLOAT,
  metascore INT,
  votes INT,
  gross_earning_on_million FLOAT,
  director VARCHAR,
  actor VARCHAR,
  year INT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- +micrate Down
DROP TABLE IF EXISTS movies;
