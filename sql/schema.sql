-- Create Database
CREATE DATABASE ruby_catalog;

-- Authorts Table
CREATE TABLE author(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);

-- Games Table
CREATE TABLE game(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  publish_date DATE NOT NULL,
  archived BOOLEAN NOT NULL,
  multiplayer BOOLEAN NOT NULL,  
  last_played_at DATE NOT NULL 
);
