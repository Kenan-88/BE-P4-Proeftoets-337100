
DROP DATABASE IF EXISTS `be-p4-proeftoets-337100`;


CREATE DATABASE IF NOT EXISTS `be-p4-proeftoets-337100`;

Use `be-p4-proeftoets-337100`;
CREATE TABLE LesPakket (
    Id INT PRIMARY KEY,
    PakketNaam VARCHAR(50),
    AantalLessen INT,
    Rijbewijscategorie VARCHAR(10),
    Prijs DECIMAL(10, 2)
);

INSERT INTO LesPakket (Id, PakketNaam, AantalLessen, Rijbewijscategorie, Prijs)
VALUES
    (1, 'Personenauto Extra', 40, 'B', 2700),
    (2, 'Vrachtwagen Subliem', 60, 'C', 5400),
    (3, 'Bus Extraordinaire', 80, 'D', 7300),
    (4, 'Bromfiets Deluxe', 10, 'AM', 230);

CREATE TABLE LeerlingPerLesPakket (
    Id INT PRIMARY KEY,
    LesPakketId INT,
    LeerlingId INT,
    StartDatumRijlessen DATE,
    DatumRijbewijsBehaald DATE,
    FOREIGN KEY (LesPakketId) REFERENCES LesPakket (Id),
    FOREIGN KEY (LeerlingId) REFERENCES Leerling (Id)
);

INSERT INTO LeerlingPerLesPakket (Id, LesPakketId, LeerlingId, StartDatumRijlessen, DatumRijbewijsBehaald)
VALUES
    (1, 1, 5, '2023-05-23', NULL),
    (2, 4, 1, '2022-06-03', '2022-08-05'),
    (3, 1, 1, '2023-06-02', NULL),
    (4, 3, 4, '2023-01-01', NULL),
    (5, 1, 2, '2022-11-30', '2023-05-23'),
    (6, 2, 3, '2022-06-06', '2023-06-06');

CREATE TABLE Leerling (
    Id INT PRIMARY KEY,
    Voornaam VARCHAR(50),
    Tussenvoegsel VARCHAR(50),
    Achternaam VARCHAR(50),
    Mobiel VARCHAR(20)
);

INSERT INTO Leerling (Id, Voornaam, Tussenvoegsel, Achternaam, Mobiel)
VALUES
    (1, 'Bas', 'De', 'Bakker', '06-28493827'),
    (2, 'Terence', NULL, 'Draaijer', '06-39398734'),
    (3, 'Samuel', NULL, 'Werchter', '06-24383291'),
    (4, 'Sharida', NULL, 'Tetehuka', '06-48293823'),
    (5, 'Fatma', NULL, 'Yilmaz', '06-34291234');
