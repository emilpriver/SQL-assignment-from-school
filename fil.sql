-- Välj databas:
use DEV;

-- Uppgift 1 Skapa tabellerna:

CREATE TABLE Kund (
	kundID int NOT NULL IDENTITY,
    fnamn varchar(100), -- Vi använder en max längd på 100 för de finns människor som kan ha väldigt långt namn ;)
	enamn varchar(100),
	persnr varchar(13), -- vi använder varchar för att ha mer flexibialitet eftersom att personumret kan innehålla ett -. max siffror utan - i ett personummer är 12 o 13 med -
	gatuadr varchar(255),
	postnr varchar(100), -- Vi använder Varchar på postnummer för att arbeta med flexibilitet o motarbeta fel ist för INT
	ort varchar(100), 
	PRIMARY KEY(kundID)
);

CREATE TABLE Djur (
	djurID int NOT NULL,
	namn Varchar(100),
	rasID int,
	kundID int,
	PRIMARY KEY (djurID)
);

CREATE TABLE Ras (
	namn varchar(100),
	rasID int NOT NULL,
	artID int,
	PRIMARY KEY (rasID)
);

CREATE TABLE Art (
	namn varchar(100),
	artID int NOT NULL,
	PRIMARY KEY (artID)
);

-- Uppgift 2 importera data:

BULK INSERT Kund FROM '\\DC\Backups\SQL\Kund1.csv'
   WITH (
      FIELDTERMINATOR = ';',
      ROWTERMINATOR = '\n',
	  ERRORFILE = '\\DC\Backups\SQL\error.log' 
);

-- BULK INSERT Djur FROM '\\DC\Backups\SQL\Djur1.csv'
--   WITH (
--     FIELDTERMINATOR = ';',
--      ROWTERMINATOR = '\n',
--	  ERRORFILE = '\\DC\Backups\SQL\error.log' 
-- );

BULK INSERT Ras FROM '\\DC\Backups\SQL\Ras1.csv'
   WITH (
      FIELDTERMINATOR = ';',
      ROWTERMINATOR = '\n',
	  ERRORFILE = '\\DC\Backups\SQL\error.log' 
);

BULK INSERT Art FROM '\\DC\Backups\SQL\Art1.csv'
   WITH (
      FIELDTERMINATOR = ';',
      ROWTERMINATOR = '\n',
	  ERRORFILE = '\\DC\Backups\SQL\error.log' 
);

-- För DEV
use Northwind
