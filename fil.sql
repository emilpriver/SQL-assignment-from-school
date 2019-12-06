-- Uppgift 1 Skapa tabellerna:

CREATE TABLE Kund (
    fnamn varchar(100), -- Vi använder en max längd på 100 för de finns människor som kan ha väldigt långt namn ;)
	enamn varchar(100),
	persnr char(11), -- vi använder varchar för att ha mer flexibialitet eftersom att personumret kan innehålla ett -. max siffror utan - i ett personummer är 12 o 13 med -
	gatuadr varchar(255),
	postnr char(5), -- Vi använder Varchar på postnummer för att arbeta med flexibilitet o motarbeta fel ist för INT
	ort varchar(100), 
	rabatt int DEFAULT 0,
	kundID int NOT NULL IDENTITY,
	PRIMARY KEY(kundID)
);

CREATE TABLE Djur (
	namn Varchar(100),
	rasID int,
	kundID int,
	djurID int NOT NULL IDENTITY,
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

INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Camilla','Dalheim','581012-8125','Övägen 81',10186,'Bromma');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Ann-Kristin','Wireklint','590711-4870','Saxvägen 13',50109,'Borås');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Elisabeth','Kullén','550105-7347','Isakslundsvägen 14',70052,'Tierp');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Björn-Ove','Bergh','790816-6056','Stora gatan 3',30121,'Romma');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Birgitta','Sandin','840405-5430','Lilla vägen 15A',40112,'Göteborg');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Ann-Charlotte','Eskilsson','871101-3064','Backstugegränd 8B',41971,'Hisings Backa');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Anders','Wikström','931024-5583','Adamsgatan 16',11288,'Stockholm');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Claes','Bremer','711027-9825','Spikgatan 2B',75233,'Uppsala');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Carin','Råberus','980504-8738','Backstugegränd',91202,'Umeå');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Anna','Ljungblad','581221-6191','Storsvängen 19',20321,'Brimstad');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Anders','Olofsson','840527-9417','Stigen 8',41835,'Orust');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Agneta','Jangsten','790922-8563','Smedjegatan 19',45261,'Mölndal');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Christer','Bång','540222-1584','Spikgatan 9C',51561,'Skövde');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Dan','Jarling','671201-5587','Lilla vägen 22',47921,'Kungälv');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Carin','Thorén','881104-8313','Hagelvägen 4',45118,'Brännö');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Berit','Rihs','860324-7290','Enskiftesgatan 14',46213,'Hovås');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Christina','Sterner','651002-7485','Trollstigen 7',17913,'Bandhagen');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Cecilia','Kängström','900918-9521','Musserongränd 14',50812,'Falköping');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Anna','Nyhage','620711-7115','Koltrastvägen 9',92716,'Örnsköldsvik');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Anne-Louise','Suserud','980708-3661','Korallvägen 6',14121,'Täby');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Anders','Ekenstam','861224-5628','Eksätravägen 19',20121,'Malmö');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Ann-Sofie','Lindahl','711103-2734','Örnvägen 8',75113,'Uppsala');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Aleksandra','Andersson','590323-6376','Krusbärsvägen 7',91421,'Luleå');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Claes','Jonsson','730517-5286','Koltrastvägen 17A',23301,'Vellinge');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Ann-Britt','Magnusson','691223-8321','Andvägen 2',48116,'Mölndal Norra');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Angela','Axelsson','580815-2983','Tranbärsvägen 29C',11146,'Stockholm');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Reshma','Jaigerdar','720113-6532','Spiskummingatan 46C',13167,'Fisksätra');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Louise','Nilsson','691104-6529','Lagerfeldtsesplanaden 15D',41461,'Göteborg');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Jan','Williams','480613-6721','Stora skuggans väg 16',12101,'Stockholm');
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Indira','Singh','570303-7251','Linfältsvägen 103',20310,'Klagshamn');

-- Djur
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Ramses', 42,8);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Laura', 38,6);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Jansson', 10,22);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lilla Gubben', 11,13);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Missy', 29,23);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Willie', 35,5);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Clara', 14,13);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Mitouss', 1,25);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Casper', 44,9);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Mirre', 53,16);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Kalle', 22,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Bell', 22,5);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Smirran', 49,10);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Miro', 38,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Burris', 33,23);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Evora', 38,16);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Elsie', 59,13);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Alice', 34,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Sally', 27,9);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nadee', 17,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Shiraz', 7,4);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nebbiolo', 55,8);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Midoo', 1,2);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Doris', 38,13);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Tellin', 1,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lo', 52,23);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lee', 24,16);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Sara-Josefina', 12,18);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Isme', 1,7);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Louwin', 13,26);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nicko', 33,14);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Tobbe', 50,15);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Flimmer', 38,3);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Tonne', 43,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Anna', 30,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Millan', 53,27);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Tora', 10,21);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lissi', 12,16);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Grålle', 31,26);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Alice', 34,16);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Iren', 49,26);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Ophelia', 46,13);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Vanillie', 22,11);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Smirre', 9,22);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Minoe', 1,12);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Doussi', 1,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Matouf', 1,4);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Zaur', 40,6);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Forest', 55,20);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nala', 39,1);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Pollux', 51,24);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Ajax', 47,11);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Matrix', 15,3);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Buttrix', 14,27);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Phenix', 35,8);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Venus', 56,8);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Tarzan', 60,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Kiara', 31,21);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Isidor', 47,7);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Floyd', 27,15);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nellie', 10,3);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Metronome', 55,11);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Pixie', 56,17);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Sandra', 26,18);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Felizia', 14,16);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Elara', 55,9);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Alice', 8,24);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Pysj', 48,16);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Aslan', 21,6);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Enzo', 33,21);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nynke', 27,17);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Björne', 45,25);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lilla My', 41,5);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Björnelina', 49,5);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Milla', 51,4);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Ellie', 49,15);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Carl', 54,3);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Pip', 56,12);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lillen', 27,24);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Arne', 41,16);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Frasse', 54,24);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Timoteus', 27,10);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Leo', 53,24);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Darwin', 58,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Malla', 41,27);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Plutten', 11,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Ozzy', 16,13);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Findus', 13,19);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Aslan', 6,15);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Ivan', 39,5);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Alize', 41,4);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Maja', 38,12);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Frasse', 40,6);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Elise', 58,24);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Harlekin', 47,7);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Jimmie', 22,6);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Joanna', 53,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Fossie', 16,7);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Musse', 25,18);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nemo', 22,27);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Omega', 39,10);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Naida', 24,18);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Alexis', 16,22);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Gemmi', 14,26);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Luna', 42,22);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Sture', 41,25);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Linus', 13,14);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Fiona', 45,22);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Sixten', 34,29);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lovisa', 27,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Silly', 43,16);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Jumping Bean', 11,2);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lave', 30,7);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Enis', 43,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Gullan', 49,11);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Larsson', 26,6);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Simone', 37,2);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Matiss', 29,29);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Jori', 38,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Rasmus', 52,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nickelby', 27,10);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lewis', 42,5);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lilly', 7,4);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Naida', 49,18);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Adonis', 19,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Kaifas', 46,14);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lilla Adolf', 20,29);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Gimli', 34,21);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Grålle', 51,14);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Laban', 22,4);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Winni', 39,21);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Spirit', 21,11);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lucky Star', 31,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Raskens', 19,11);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Plutt', 52,28);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Spjutet', 28,9);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Findus', 17,21);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Saxi', 26,24);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Milou', 30,9);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Jilexa', 51,26);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Sammy', 37,15);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nossan', 25,14);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Hubert', 24,22);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Carlie', 38,20);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Nelly', 45,7);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Camilla', 18,19);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Cassandra', 23,30);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Alhambra', 27,12);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Niffy', 32,7);
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Konstantin', 19,16);

-- Ras
INSERT INTO Ras (namn, rasID, artID) VALUES ('korat',1,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('labrador',2,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('shetlandsponny',3,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('chinchilla',4,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('russian blue',5,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('golden retriever',6,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('shirehäst',7,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('engelsk vädur',8,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('burma',9,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('tax',10,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('arabiskt fullblod',11,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('rysk kanin',12,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('sibirisk katt',13,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('pudel',14,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('nordsvensk',15,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('dvärgvädur',16,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('siames',17,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('collie',18,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('basjkir',19,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('vit lantkanin',20,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('huskatt',21,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('kungspudel',22,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('fjordhäst',23,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('belgisk hare',24,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('perser',25,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('spansk vattenhund',26,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('islandshäst',27,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('belgisk jätte',28,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('egyptian mau',29,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('blandras (hund)',30,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('engelskt fullblod',31,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('jamora',32,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('abyssinier',33,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('schäfer',34,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('ardenner',35,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('satin',36,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('norsk skogkatt',37,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('airdale terrier',38,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('new forest',39,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('blå wiener',40,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('burmilla',41,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('skotte',42,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('conemara',43,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('alaska',44,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('devon rex',45,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('new foundland',46,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('andalusier',47,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('svensk pälskanin',48,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('cornish rex',49,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('flatcoated retriever',50,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('svenskt halvblod',51,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('japansk kanin',52,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('ocicat',53,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('bassett',54,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('welsh cob',55,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('liten tysk vädur',56,4);
INSERT INTO Ras (namn, rasID, artID) VALUES ('maine coon',57,1);
INSERT INTO Ras (namn, rasID, artID) VALUES ('pointer',58,2);
INSERT INTO Ras (namn, rasID, artID) VALUES ('quarter',59,3);
INSERT INTO Ras (namn, rasID, artID) VALUES ('engelsk sheck',60,4);

-- Art
INSERT INTO Art (namn, artID) VALUES ('Katt', 1);
INSERT INTO Art (namn, artID) VALUES ('Hund', 2);
INSERT INTO Art (namn, artID) VALUES ('Häst', 3);
INSERT INTO Art (namn, artID) VALUES ('Kanin', 4);

-- Uppgift 3 

-- Hämta alla djur samt ras o art med inner join
SELECT D.djurID as DjurID, D.namn as Namn, R.namn as Ras, A.namn as Art
FROM Djur D
INNER JOIN  Ras R ON D.rasID = R.rasID
INNER JOIN  Art A ON R.artID = A.artID
ORDER BY A.namn, R.namn, D.namn


-- Hämta alla djur samt ras o art med from where
SELECT D.djurID as DjurID, D.namn as Namn, R.namn as Ras, A.namn as Art
FROM Djur D, Ras R, Art A
WHERE (D.rasID = R.rasID AND R.artID = A.artID)
ORDER BY A.namn, R.namn, D.namn

-- Hämta Carls art via inner join
SELECT	D.namn, A.namn as Art
from Djur D
inner join ras R on R.rasID = D.rasID
inner join Art A on A.artID = R.artID
where D.djurID = 77

-- Hämta Carls art via from where
SELECT	D.namn, A.namn AS Art
FROM Djur D, Ras R, Art A
WHERE (D.djurID = 77 AND D.rasID = R.rasID AND R.artID = A.artID)


-- Hämta carls info via where/from
SELECT  D.namn as Namn, A.namn as Art
FROM Djur D, Ras R, Art A
WHERE (D.djurID = 77 and D.rasID = R.rasID AND R.artID = A.artID)

-- Räkna antal djur per person med inner join
SELECT K.fnamn as Fornamn, count(distinct D.djurID) as antalDjur 
from Kund K 
inner join Djur D on D.kundID = K.kundID
GROUP BY K.fnamn

-- Räkna antal djur med where/from
SELECT K.fnamn as Fornamn, count(distinct D.djurID) as TotaltAntalDjur
FROM Djur D, Kund K
WHERE (D.kundID = K.kundID)
GROUP BY K.fnamn

-- Räkna antal arter Louise har med inner join
SELECT k.fnamn, k.enamn, COUNT(*) as Arter, A.namn
FROM kund K
INNER JOIN djur D ON K.kundID = D.kundID
INNER JOIN ras R ON D.rasID = R.rasID
INNER JOIN art A ON A.artID = R.artID
WHERE K.kundID = 28
GROUP BY K.fnamn, K.enamn, R.artID, A.namn

-- Räkna antal arter Louse har med where/from
SELECT K.fnamn as Fornamn, count(*) as Arter, A.namn
FROM Djur D, Kund K, Art A, Ras R
WHERE (K.kundID = 28 AND D.kundID = K.kundID and D.rasID = R.rasID and A.artID = R.artID)
GROUP BY K.fnamn, K.enamn, R.artID, A.namn

-- UPPGIFT 4

-- Skapa constrains 
ALTER TABLE Djur
ADD CONSTRAINT rasIDUnique FOREIGN KEY (rasID) REFERENCES Ras (rasID)

ALTER TABLE Ras 
ADD CONSTRAINT artIDUnique FOREIGN KEY (artID) REFERENCES Art (artID)

-- UPPGIFT 5

-- Skapa en ny ras
INSERT INTO Ras (namn, rasID, artID) VALUES ('engelsk sheck',1200,17);

--  Skapa en art med "hund" namnet
INSERT INTO Art (namn, artID) VALUES ('Hund', 6)

-- Skapa en kund o djur
INSERT INTO Kund (fnamn, enamn, persnr, gatuadr, postnr, ort) VALUES ('Emil','Trandberg','570303-1253','Linfä2ltsvägen 103',30310,'Klagshamns');
select kundID FROM kund WHERE persnr = '570303-1253'
INSERT INTO Djur (namn, rasID, kundID) VALUES ('Lowa', 42,32);

-- Kontrollera med allt från kund samt djurets namn, rasens namn o artens namn för de nya djuret med INER JOIN
SELECT k.kundID, k.enamn, K.fnamn, k.gatuadr, K.ort, k.persnr, k.postnr, D.namn as Djur, R.namn as Ras, A.namn AS Art
FROM Kund K
INNER JOIN Djur D ON D.djurID = 152
INNER JOIN ras R ON R.rasID = D.rasID
INNER JOIN Art A ON A.artID = R.artID
WHERE K.kundID = 32
