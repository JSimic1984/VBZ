-- Tabelle erzeugen

CREATE TABLE `course-management`.Personen (
	PNr INT NOT NULL,
	Name varchar(20) NULL,
	Vorname varchar(15) NULL,
	FNr INT NULL,
	Lohnstufe INT NULL,
	CONSTRAINT Personen_PK PRIMARY KEY (PNr)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


ALTER TABLE `course-management`.Personen ADD CONSTRAINT Personen_FK FOREIGN KEY (FNr) REFERENCES `course-management`.Funktionen(FNr);


INSERT INTO `course-management`.Personen
(PNr, Name, Vorname, FNr, Lohnstufe)
VALUES(100001, 'Steffen', 'Felix', 3, 5),
(232452, 'M�ller', 'Hugo', 1, 1),
(334643, 'Meier', 'Hans', 2, 5),
(567231, 'Schmid', 'Beat', 3, 4),
(345727, 'Steiner', 'Ren�', 5, 5),
(233456, 'M�ller', 'Franz', 4, 7),
(132442, 'Osswald', 'Kurt', 1, 2),
(345678, 'Metzger', 'Paul', 1, 1),
(344556, 'Scherrer', 'Daniel', 2, 4),
(845622, 'Huber', 'Walter', 4, 8),
(625342, 'Gerber', 'Roland', 3, 4);