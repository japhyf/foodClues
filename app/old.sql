DROP TABLE IF EXISTS Food;

CREATE TABLE Food(
	Store VARCHAR(30),
	Lon DECIMAL(8,5),
	Lat DECIMAL(8,5),
	Address VARCHAR(30),
	City VARCHAR(30),
	State CHAR(2),
	Zip INTEGER,
	Zip4 INTEGER,
	County VARCHAR(30)
);

INSERT INTO Food(Store, Lon, Lat, Address, City, State, Zip, Zip4, County) 
VALUES ('Rose Market',-121.86597,37.347843,'1250 E Santa Clara St','San Jose', 'CA', 95116,2336,'Santa Clara');
