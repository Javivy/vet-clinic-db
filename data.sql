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