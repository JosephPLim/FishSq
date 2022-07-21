CREATE DATABASE FishSq;

CREATE TABLE Names (
	COMMONNAME varchar(255), --common name of the fish
	SCINAME varchar(255), --scientific name of the fish
	FISHID int --ID associated with each fish species (ex. Ampiprion percula = 1, Pterapogon kaudernii = 2)
);

CREATE TABLE BOXES (
	BOXID int --ID of the box, Primary Key
	BOXPRICE double(255,2) --price of the box
	FREIGHTPRICE double(255, 2) --price of the freight for the box
	LOCATION varchar(255) --location of where the fish arrived from
	ARRIVAL DATE --what day the box arrived
	

);

CREATE TABLE ARRIVALS (
	BOXID int --ID of the box the fish came in
	FISHID int --ID associated with each fish species. See: names
	BASEPRICE double(255, 2) --the base price of the fish (what you see on transship lists)
	BAGID int --ID of the bag the fish came in, primary key
	CIRCUMFERNCE int --circumference of the bag
	HEIGHT int --height of the bag
	WEIGHT int --weight of the bag
	DEAD ENUM(Yes, No) --Is the fish dead?

	PRIMARY KEY (BAGID)
);