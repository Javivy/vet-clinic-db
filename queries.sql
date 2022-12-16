/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name like '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '01-01-2016' AND '12-31-2019';
SELECT name FROM animals WHERE escape_attempts < 3;
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

UPDATE animals SET species = 'digimon' WHERE name like '%mon';
UPDATE animals SET species = 'pokemon' WHERE species = '';

BEGIN TRANSACTION;
DELETE FROM animals; /* DELETE ALL THE ANIMALS */
ROLLBACK;

BEGIN TRANSACTION;
DELETE FROM animals WHERE date_of_birth > '01-01-2022';
SAVEPOINT after_delete;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO after_delete;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, SUM(escape_attempts) FROM animals GROUP BY neutered;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '1999-12-31' GROUP BY species;