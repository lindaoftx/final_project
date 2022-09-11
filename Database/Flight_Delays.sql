-- Creating tables

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

Create Table Delta (
	id INT NOT NULL,
	CarrierCode varchar NOT NULL,
	Date date NOT NULL,
	Flight_Number INT NOT NULL,
	Tail_Number varchar,
	Destination_Airport varchar NOT NULL,
	Scheduled_departure_time time NOT NULL,
	Actual_departure_time time NOT NULL,
	Scheduled_elapsed_time_in_minutes int NOT NULL,
	Actual_elapsed_time_in_minutes int NOT NULL,
	Departure_delay_in_minutes int NOT NULL,
	Wheels_off_time time NOT NULL,
	Taxi_Out_time_in_minutes int NOT NULL,
	Delay_Carrier_in_minutes int NOT NULL,
	Delay_Weather_in_minutes int NOT NULL,
	Delay_National_Aviation_System_in_minutes int NOT NULL,
	Delay_Security_in_minutes int NOT NULL,
	Delay_Late_Aircraft_Arrival_in_minutes int NOT NULL,
	PRIMARY KEY (id)
);

Create Table AmericanAirlines (
	id INT NOT NULL,
	CarrierCode varchar NOT NULL,
	Date date NOT NULL,
	Flight_Number varchar NOT NULL,
	Tail_Number varchar,
	Destination_Airport varchar NOT NULL,
	Scheduled_departure_time time NOT NULL,
	Actual_departure_time time NOT NULL,
	Scheduled_elapsed_time_in_minutes int NOT NULL,
	Actual_elapsed_time_in_minutes int NOT NULL,
	Departure_delay_in_minutes int NOT NULL,
	Wheels_off_time time NOT NULL,
	Taxi_Out_time_in_minutes int NOT NULL,
	Delay_Carrier_in_minutes int NOT NULL,
	Delay_Weather_in_minutes int NOT NULL,
	Delay_National_Aviation_System_in_minutes int NOT NULL,
	Delay_Security_in_minutes int NOT NULL,
	Delay_Late_Aircraft_Arrival_in_minutes int NOT NULL,
	PRIMARY KEY (id)
);

Create Table Frontier (
	id INT NOT NULL,
	CarrierCode varchar NOT NULL,
	Date date NOT NULL,
	Flight_Number varchar NOT NULL,
	Tail_Number varchar,
	Destination_Airport varchar NOT NULL,
	Scheduled_departure_time time NOT NULL,
	Actual_departure_time time NOT NULL,
	Scheduled_elapsed_time_in_minutes int NOT NULL,
	Actual_elapsed_time_in_minutes int NOT NULL,
	Departure_delay_in_minutes int NOT NULL,
	Wheels_off_time time NOT NULL,
	Taxi_Out_time_in_minutes int NOT NULL,
	Delay_Carrier_in_minutes int NOT NULL,
	Delay_Weather_in_minutes int NOT NULL,
	Delay_National_Aviation_System_in_minutes int NOT NULL,
	Delay_Security_in_minutes int NOT NULL,
	Delay_Late_Aircraft_Arrival_in_minutes int NOT NULL,
	PRIMARY KEY (id)
);

Create Table JetBlue (
	id INT NOT NULL,
	CarrierCode varchar NOT NULL,
	Date date NOT NULL,
	Flight_Number varchar NOT NULL,
	Tail_Number varchar,
	Destination_Airport varchar NOT NULL,
	Scheduled_departure_time time NOT NULL,
	Actual_departure_time time NOT NULL,
	Scheduled_elapsed_time_in_minutes int NOT NULL,
	Actual_elapsed_time_in_minutes int NOT NULL,
	Departure_delay_in_minutes int NOT NULL,
	Wheels_off_time time NOT NULL,
	Taxi_Out_time_in_minutes int NOT NULL,
	Delay_Carrier_in_minutes int NOT NULL,
	Delay_Weather_in_minutes int NOT NULL,
	Delay_National_Aviation_System_in_minutes int NOT NULL,
	Delay_Security_in_minutes int NOT NULL,
	Delay_Late_Aircraft_Arrival_in_minutes int NOT NULL,
	PRIMARY KEY (id)
);

Create Table Southwest (
	id INT NOT NULL,
	CarrierCode varchar NOT NULL,
	Date date NOT NULL,
	Flight_Number varchar NOT NULL,
	Tail_Number varchar,
	Destination_Airport varchar NOT NULL,
	Scheduled_departure_time time NOT NULL,
	Actual_departure_time time NOT NULL,
	Scheduled_elapsed_time_in_minutes int NOT NULL,
	Actual_elapsed_time_in_minutes int NOT NULL,
	Departure_delay_in_minutes int NOT NULL,
	Wheels_off_time time NOT NULL,
	Taxi_Out_time_in_minutes int NOT NULL,
	Delay_Carrier_in_minutes int NOT NULL,
	Delay_Weather_in_minutes int NOT NULL,
	Delay_National_Aviation_System_in_minutes int NOT NULL,
	Delay_Security_in_minutes int NOT NULL,
	Delay_Late_Aircraft_Arrival_in_minutes int NOT NULL,
	PRIMARY KEY (id)
);

Create Table Spirit (
	id INT NOT NULL,
	CarrierCode varchar NOT NULL,
	Date date NOT NULL,
	Flight_Number varchar NOT NULL,
	Tail_Number varchar,
	Destination_Airport varchar NOT NULL,
	Scheduled_departure_time time NOT NULL,
	Actual_departure_time time NOT NULL,
	Scheduled_elapsed_time_in_minutes int NOT NULL,
	Actual_elapsed_time_in_minutes int NOT NULL,
	Departure_delay_in_minutes int NOT NULL,
	Wheels_off_time time NOT NULL,
	Taxi_Out_time_in_minutes int NOT NULL,
	Delay_Carrier_in_minutes int NOT NULL,
	Delay_Weather_in_minutes int NOT NULL,
	Delay_National_Aviation_System_in_minutes int NOT NULL,
	Delay_Security_in_minutes int NOT NULL,
	Delay_Late_Aircraft_Arrival_in_minutes int NOT NULL,
	PRIMARY KEY (id)
);

Create Table United (
	id INT NOT NULL,
	CarrierCode varchar NOT NULL,
	Date date NOT NULL,
	Flight_Number varchar NOT NULL,
	Tail_Number varchar,
	Destination_Airport varchar NOT NULL,
	Scheduled_departure_time time NOT NULL,
	Actual_departure_time time NOT NULL,
	Scheduled_elapsed_time_in_minutes int NOT NULL,
	Actual_elapsed_time_in_minutes int NOT NULL,
	Departure_delay_in_minutes int NOT NULL,
	Wheels_off_time time NOT NULL,
	Taxi_Out_time_in_minutes int NOT NULL,
	Delay_Carrier_in_minutes int NOT NULL,
	Delay_Weather_in_minutes int NOT NULL,
	Delay_National_Aviation_System_in_minutes int NOT NULL,
	Delay_Security_in_minutes int NOT NULL,
	Delay_Late_Aircraft_Arrival_in_minutes int NOT NULL,
	PRIMARY KEY (id)
);