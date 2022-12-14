/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon',
        to_date('Feb-3-2020', 'mm-dd-yyyy'), 
        0, 
        true, 
        10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon',
        to_date('Nov-15-2018', 'mm-dd-yyyy'), 
        2, 
        true, 
        8);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Pikachu',
        to_date('Jan-7-2021', 'mm-dd-yyyy'), 
        1, 
        false, 
        15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon',
        to_date('May-12-2017', 'mm-dd-yyyy'), 
        5, 
        true, 
        11);
