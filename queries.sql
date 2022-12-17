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

SELECT owners.full_name, name FROM animals INNER JOIN owners ON owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT species.name, animals.name FROM animals INNER JOIN species ON species_id = species.id WHERE species.name = 'Pokemon';
SELECT owners.full_name, name FROM animals RIGHT JOIN owners ON owner_id = owners.id;
SELECT species.name, COUNT(*) FROM animals INNER JOIN species ON species_id = species.id GROUP BY species.name;
SELECT owners.full_name, species.name, animals.name FROM animals INNER JOIN owners ON owner_id = owners.id JOIN species ON species_id = species.id WHERE owners.full_name = 'Jennifer Orwell' and species.name = 'Digimon';
SELECT animals.name, animals.escape_attempts FROM animals INNER JOIN owners ON owner_id = owners.id WHERE owners.full_name = 'Dean Winchester' and animals.escape_attempts = '0';
SELECT owners.full_name, COUNT(animals.name) FROM animals INNER JOIN owners ON owner_id = owners.id GROUP BY owners.full_name ORDER BY COUNT(animals.name) DESC;

SELECT animals.name, vets.name, date_of_visit FROM visits INNER JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id WHERE vets.name = 'William Tatcher' ORDER BY date_of_visit DESC LIMIT 1;
SELECT vets.name, COUNT(animals.name) FROM visits INNER JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id WHERE vets.name = 'Stephanie Mendez' GROUP BY vets.name;
SELECT vets.name, species.name FROM specializations JOIN species ON species.id = specializations.species_id RIGHT JOIN vets ON vets.id = vets_id;
SELECT animals.name, vets.name, date_of_visit FROM visits INNER JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id WHERE vets.name = 'Stephanie Mendez' and date_of_visit BETWEEN '2020-04-01' and '2020-08-30';
SELECT animals.name, COUNT(date_of_visit) FROM visits INNER JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id GROUP BY animals.name ORDER BY COUNT(date_of_visit) DESC LIMIT 1;
SELECT animals.name, vets.name, date_of_visit FROM visits INNER JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id WHERE vets.name = 'Maisy Smith' ORDER BY date_of_visit ASC LIMIT 1;
SELECT animals.name, animals.date_of_birth, animals.escape_attempts, animals.neutered, animals.weight_kg, vets.name, vets.age, vets.date_of_graduation, date_of_visit FROM visits INNER JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id ORDER BY date_of_visit ASC LIMIT 1;
SELECT COUNT(date_of_visit) FROM visits JOIN vets ON visits.vets_id = vets.id LEFT JOIN specializations ON specializations.vets_id = vets.id JOIN animals ON animals.id = animals_id WHERE animals.species_id != specializations.species_id OR specializations.species_id IS NULL;
SELECT species.name, COUNT(species.name) FROM visits JOIN vets ON visits.vets_id = vets.id JOIN animals ON animals.id = animals_id JOIN species ON animals.species_id = species.id WHERE vets.name = 'Maisy Smith' GROUP BY species.name ORDER BY COUNT(species.name) DESC LIMIT 1;