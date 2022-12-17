/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon',
        to_date('02-3-2020', 'mm-dd-yyyy'), 
        0, 
        true, 
        10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon',
        to_date('11-15-2018', 'mm-dd-yyyy'), 
        2, 
        true, 
        8);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Pikachu',
        to_date('01-7-2021', 'mm-dd-yyyy'), 
        1, 
        false, 
        15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon',
        to_date('05-12-2017', 'mm-dd-yyyy'), 
        5, 
        true, 
        11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Charmander',
        to_date('02-08-2020', 'mm-dd-yyyy'), 
        0, 
        false, 
        11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Plantmon',
        to_date('11-15-2021', 'mm-dd-yyyy'), 
        2, 
        true, 
        5.7);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Squirtle',
        to_date('04-02-1993', 'mm-dd-yyyy'), 
        3, 
        false, 
        12.13);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Angemon',
        to_date('06-12-2005', 'mm-dd-yyyy'), 
        1, 
        true, 
        45);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Boarmon',
        to_date('06-07-2005', 'mm-dd-yyyy'), 
        7, 
        true, 
        20.4);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Blossom',
        to_date('10-13-1998', 'mm-dd-yyyy'), 
        3, 
        true, 
        17);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Ditto',
        to_date('05-14-2022', 'mm-dd-yyyy'), 
        4, 
        true, 
        22);

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon', 'Boarmon');

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, 'April 23, 2000');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 16, 'January 17, 2019');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, 'May 4, 1981');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, 'June 8, 2008');

INSERT INTO specializations(species_id, vets_id)
VALUES(1,1), (2,3), (1, 3), (2, 4);