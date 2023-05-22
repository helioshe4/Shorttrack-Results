CREATE DATABASE skater_database;

CREATE TABLE skaters(
  skater_id SERIAL UNIQUE PRIMARY KEY,
  skater_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE all_time_pbs(
  skater_id INT NOT NULL,
  skater_name VARCHAR NOT NULL,
  time TIMESTAMP,
  location VARCHAR(50),
  competition_name VARCHAR(50),
  date TIMESTAMP,
  FOREIGN KEY (skater_id)
    REFERENCES skaters (skater_id),
  FOREIGN KEY (skater_name)
    REFERENCES skaters (skater_name)
);

CREATE TABLE season_pbs(
  skater_id INT NOT NULL,
  skater_name VARCHAR NOT NULL,
  time TIMESTAMP,
  location VARCHAR(50),
  competition_name VARCHAR(50),
  date TIMESTAMP,
  FOREIGN KEY (skater_id)
    REFERENCES skaters (skater_id),
  FOREIGN KEY (skater_name)
    REFERENCES skaters (skater_name)
);
