CREATE DATABASE skater_database;

CREATE TABLE skaters(
  skater_id SERIAL PRIMARY KEY,
  skater_name VARCHAR(50) UNIQUE NOT NULL,
  all_time_pb DECIMAL(10, 3),
  all_time_location VARCHAR(50),
  all_time_competition_name VARCHAR(50),
  all_time_date TIMESTAMP,
  season_pb DECIMAL(10, 3),
  season_location VARCHAR(50),
  season_competition_name VARCHAR(50),
  season_date TIMESTAMP
);

-- CREATE TABLE all_time_pbs(
--   skater_id INT NOT NULL,
--   skater_name VARCHAR NOT NULL,
--   time TIMESTAMP,
--   location VARCHAR(50),
--   competition_name VARCHAR(50),
--   date TIMESTAMP,
--   FOREIGN KEY (skater_id)
--     REFERENCES skaters (skater_id),
--   FOREIGN KEY (skater_name)
--     REFERENCES skaters (skater_name)
-- );

-- CREATE TABLE season_pbs(
--   skater_id INT NOT NULL,
--   skater_name VARCHAR NOT NULL,
--   time TIMESTAMP,
--   location VARCHAR(50),
--   competition_name VARCHAR(50),
--   date TIMESTAMP,
--   FOREIGN KEY (skater_id)
--     REFERENCES skaters (skater_id),
--   FOREIGN KEY (skater_name)
--     REFERENCES skaters (skater_name)
-- );
