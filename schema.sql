/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
  id        INT GENERATED ALWAYS AS IDENTITY,
  name                VARCHAR(250),
  date_of_birth           DATE,
  escape_attempts              INT,
  neutered                     BOOLEAN,
  weight_kg                DECIMAL
);

ALTER TABLE animals
ADD species STRING;


CREATE TABLE owners(
  id INT GENERATED ALWAYS AS IDENTITY,
  full_name VARCHAR(40) NOT NULL,
  age INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE species(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(40),
  PRIMARY KEY (id)
);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species;
ALTER TABLE animals ADD owner_id INT;
ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owners;

CREATE TABLE vets(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  age INT,
  date_of_graduation DATE,
  PRIMARY KEY (id)
);

CREATE TABLE specializations(
  species_id INT,
  vets_id INT,
  FOREIGN KEY (species_id) REFERENCES species(id),
  FOREIGN KEY (vets_id) REFERENCES vets(id)
);