--This should run a script that reads a single column CSV titled 
--"NewSuppliers.csv" to create a
--temptable, which you can read and then put into the
--Supplier table
--can use an insert into clause
--combine w a sfw statement
--how to import csv into table?

--Assume the person has accessed the database already

CREATE TABLE tmp_table (
	NAME varchar(255)
);

LOAD DATA LOCAL INFILE 'NewSuppliers.csv'
INTO TABLE tmp_table 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROW
;

INSERT INTO SUPPLIERS (NAME)
SELECT * FROM tmp_table
;

DROP TABLE tmp_table; --remove table after running the script