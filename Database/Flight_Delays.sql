-- Creating Airlines table

Create Table Airlines (
	id INT NOT NULL,
	Airline Varchar NOT NULL,
	Flight INT NOT NULL,
	AirportFrom VARCHAR NOT NULL,
	AirportTo VARCHAR NOT NULL,
	DayOfWeek INT NOT NULL,
	Time INT NOT NULL,
	Length INT NOT NULL,
	Delay INT NOT NULL,
	PRIMARY KEY (id)
);

Select * from Airlines