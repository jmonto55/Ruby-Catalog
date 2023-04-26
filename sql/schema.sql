-- Create Database
CREATE DATABASE ruby_catalog;

-- Authors Table
CREATE TABLE author(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);

-- Games Table
CREATE TABLE game(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  publish_date DATE NOT NULL,
  multiplayer BOOLEAN NOT NULL,  
  last_played_at DATE NOT NULL 
);

-- Genres Table
CREATE TABLE genre(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255) NOT NULL
);

-- Music Albums Table
CREATE TABLE music_album(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  album_name VARCHAR(255) NOT NULL,
  on_spotify BOOLEAN NOT NULL,  
  publish_date DATE NOT NULL 
);
