CREATE TABLE movies (
  id BIGSERIAL PRIMARY KEY,
  rank INT NOT NULL,
  title VARCHAR NOT NULL,
  description TEXT NOT NULL,
  runtime INT NOT NULL,
  genre VARCHAR NOT NULL,
  rating DECIMAL NOT NULL,
  metascore INT,
  votes INT NOT NULL,
  gross_earning_on_million DECIMAL,
  director VARCHAR NOT NULL,
  actor VARCHAR NOT NULL,
  year INT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);
