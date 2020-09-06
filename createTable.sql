CREATE TABLE vimi2862.Klientas (
	AK			CHAR(11)	NOT NULL,
	Vardas		CHAR(12) 	NOT NULL,
	Pavarde		VARCHAR(20) NOT NULL,
	Gimimas		DATE,
	PRIMARY KEY (AK)
);

CREATE TABLE vimi2862.Naryste (
	Narystes_Nr	SERIAL		NOT NULL,
	Kaina 		SMALLINT 	NOT NULL CHECK (Kaina > 0),
	Trukme 		SMALLINT 	NOT NULL,
	Pradzia 	DATE	 	DEFAULT 	current_date,
	Pabaiga 	DATE 		NOT NULL,
	Nario_AK 	CHAR(11)	NOT NULL,
	PRIMARY KEY (Narystes_Nr),
	FOREIGN KEY (Nario_AK) REFERENCES vimi2862.Klientas		ON DELETE CASCADE
);

CREATE TABLE vimi2862.Treneris (
	Darbuotojo_Nr SMALLINT 	NOT NULL,
	Vardas VARCHAR(12) 		NOT NULL,
	Pavarde VARCHAR(20) 	NOT NULL,
	Atlyginimas DECIMAL(5,2) NOT NULL CONSTRAINT SkiriamasAtlyginimas CHECK(Atlyginimas > 0 AND Atlyginimas < 1000),
	PRIMARY KEY (Darbuotojo_Nr)
);

CREATE TABLE vimi2862.Treniruote (
	Pavadinimas VARCHAR(20) NOT NULL,
	Savaites_d 	CHAR(14) 	NOT NULL,
	Laikas 		TIME 		NOT NULL,
	Treneris 	SMALLINT 	NOT NULL,
	PRIMARY KEY (Pavadinimas),
	FOREIGN KEY (Treneris) REFERENCES vimi2862.Teneris 		ON DELETE CASCADE
);

CREATE TABLE vimi2862.Pasirinktos_Treniruotes (
	Nr 			SERIAL 		NOT NULL,
	Treniruote 	VARCHAR(30) NOT NULL,
	Narystes_Nr SMALLINT 	NOT NULL,
	Pradzia		DATE,
	Pabaiga 	DATE,
	PRIMARY KEY (Nr),
	FOREIGN KEY (Treniruote) REFERENCES vimi2862.Treniruote ON DELETE CASCADE,
	FOREIGN KEY (Narystes_Nr) REFERENCES vimi2862.Naryste 	ON DELETE CASCADE,
	CONSTRAINT 	TreniruotesPabaigaVeliau CHECK (Pabaiga > Pradzia)
);

