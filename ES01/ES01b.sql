CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

-- Creazione della tabella degli autori
CREATE TABLE IF NOT EXISTS autori (
    id_autore INT AUTO_INCREMENT PRIMARY KEY,
    name_autore VARCHAR(50) NOT NULL,
    naz VARCHAR(50),
    data_nascita DATE,
    data_morte DATE
);

-- Inserirmento di alcuni dati nella tabella degli autori
INSERT INTO autori (name_autore, naz, data_nascita, data_morte)
VALUES
    ('Dante Alighieri', 'Italiana', '1265-09-14', '1321-09-14'),
    ('Francesco Petrarca','Italiana','1304-07-20','1374-07-19'),
    ('Gabriele d Annunzio','Italiana','1863-03-12','1938-03-01');

-- Verificare il corretto inserimento dei dati
SELECT * FROM autori;

CREATE TABLE IF NOT EXISTS categorie (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    name_autore VARCHAR(50) NOT NULL
);

-- Inserirmento di alcuni dati nella tabella delle categorie
INSERT INTO categorie (name_autore)
VALUES
    ('Poema'),('Romanzo'),('Mistero'),('Fantascienza'),('Tragedia');

-- Verificare il il corretto inserimento dei dati
SELECT * FROM categorie ;

-- Creazione della tabella dei libri
CREATE TABLE IF NOT EXISTS libri (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titolo VARCHAR(100) NOT NULL,
    id_autore INT,
    id_categoria INT,
    anno_pubblicazione INT,
    FOREIGN KEY (id_autore) REFERENCES autori(id_autore),
    FOREIGN KEY (id_categoria) REFERENCES categorie(id_categoria)
);

-- Inserirmento di alcuni dati nella tabella dei libri
INSERT INTO libri (titolo, id_autore, id_categoria, anno_pubblicazione)
VALUES
    ('Divina Commedia',1,1,1472),
    ('il Canzoniere',2,1,1345),
    ('La figlia di Lorio',3,5,1904);

-- Verificare il corretto inserimento dei dati
SELECT * FROM libri;

SHOW TABLES;