CREATE DATABASE FishSq;

--Initializes Names table, which contains unique identifying numbers for fish, linked to their common and scientific name
CREATE TABLE Names (
	FISHID int AUTO_INCREMENT --ID associated with each fish species (ex. Amphiprion percula = 1, Pterapogon kaudernii = 2)
	COMMONNAME varchar(255), --common name of the fish
	SCINAME varchar(255), --scientific name of the fish

	PRIMARY KEY (FISHID)
);

--Initializes Providers, where each row contains information about a singular supplier
CREATE TABLE SUPPLIER (
	NAME varchar(255) --Common name of supplier (ex. Golden Ina)
	SUPPLIERID int AUTO_INCREMENT--Unique ID # of supplier

	PRIMARY KEY (ID)

);

--Initializes shipments, where each row contains information about a singular shipment
CREATE TABLE SHIPMENTS (
	SHIPPINGID int AUTO_INCREMENT --unique shipping number specifically for that shipment. Primary Key
	ARRIVAL DATE --Date the shipment arrived
	LOCATION varchar(255)--shipping location (ex. Bali Lombok)
	SUPPLIERID int-- shipping supplier ID # (ex. Golden Ina)
	BOXES int -- # of boxes that came with the shipment
	STATUS ENUM(E, O, L) -- if the shipment came in Early (before arrival date), On time (on arrival), or Late (delayed)
	LOCAL ENUM (Y, N)  -- If the shipment was local (i.e. no freight charge, no box charge)

	PRIMARY KEY (SHIPPINGID)
);

#Initializes boxes, where each row contains information about a singular box
CREATE TABLE BOXES (
	BOXID int AUTO_INCREMENT--unique box ID, Primary Key
	SHIPPINGID int -- ID of the shipment the box came with
	FREIGHT double(255,2) --the price it took to ship the box freight
	SHIPPING double(255, 2) --the price it took to ship the box
	BAGS int -- # of bags that came with the shipment

	PRIMARY KEY(BOXID)
);

--initializes Arrivals, where each row contains information about a single arriving fish
CREATE TABLE ARRIVALS (
	BAGID int AUTO_INCREMENT-- Unique ID of the bag
	FISHID int -- ID associated with the fish species
	BASE double(255,2) -- the base price of the fish
	CIRCUMFERENCE int -- Circumference of the bag the fish was in
	HEIGHT int --Height of the bag the fish was in
	DEAD ENUM(Y, N) -- If the fish was (Y)es dead, or N(o) not dead


	PRIMARY KEY (BAGID)
);
