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

INSERT INTO Food VALUES ('dog', 3, 3, 'asdf', 'asdf', 'sdfsdf', 83455, 3544, 'asdfasdf')