CREATE DATABASE new_skater_database;

CREATE TABLE skaters(
  skater_id SERIAL PRIMARY KEY,
  skater_name VARCHAR(50) UNIQUE NOT NULL,
  dob DATE,
  home_club VARCHAR(50),
  gender VARCHAR(10),
  country VARCHAR(100),
  region VARCHAR(100)
);

CREATE TABLE results_500 (
    result_id SERIAL PRIMARY KEY,
    skater_id INT REFERENCES skaters(skater_id),
    all_time_500 DECIMAL(10, 3),
    season_500 DECIMAL(10, 3),
    all_time_location VARCHAR(50),
    all_time_competition_name VARCHAR(50),
    all_time_date TIMESTAMP,
    season_location VARCHAR(50),
    season_competition_name VARCHAR(50),
    season_date TIMESTAMP
);

CREATE TABLE results_1500 (
    result_id SERIAL PRIMARY KEY,
    all_time_1500 DECIMAL(10, 3),
    season_1500 DECIMAL(10, 3),
    all_time_location VARCHAR(50),
    all_time_competition_name VARCHAR(50),
    all_time_date TIMESTAMP,
    season_location VARCHAR(50),
    season_competition_name VARCHAR(50),
    season_date TIMESTAMP,
    skater_id INT REFERENCES skaters(skater_id)
);

CREATE TABLE results_1000 (
    result_id SERIAL PRIMARY KEY,
    all_time_1000 DECIMAL(10, 3),
    season_1000 DECIMAL(10, 3),
    all_time_location VARCHAR(50),
    all_time_competition_name VARCHAR(50),
    all_time_date TIMESTAMP,
    season_location VARCHAR(50),
    season_competition_name VARCHAR(50),
    season_date TIMESTAMP,
    skater_id INT REFERENCES skaters(skater_id)
);

-- Alter the table to add a new case-insensitive collation for skater_name
ALTER TABLE skaters
ALTER COLUMN skater_name TYPE VARCHAR(50) COLLATE "C";

-- Create a functional index for case-insensitive uniqueness
CREATE UNIQUE INDEX unique_skater_name ON skaters (LOWER(skater_name));