-- Create carrier table
CREATE TABLE carrier (
carrier_code varchar(10) PRIMARY KEY NOT NULL,
carrier_name varchar(255) NOT NULL
)

-- Insert data into carrier table
INSERT INTO carrier (carrier_code, carrier_name) values ('AA','American Airlines');
INSERT INTO carrier (carrier_code, carrier_name) values ('WN','Southwest Airlines');
INSERT INTO carrier (carrier_code, carrier_name) values ('DL','Delta Airlines');
INSERT INTO carrier (carrier_code, carrier_name) values ('F9','Frontier Airlines');
INSERT INTO carrier (carrier_code, carrier_name) values ('NK','Spirit Airlines');
INSERT INTO carrier (carrier_code, carrier_name) values ('UA','United Airlines');
INSERT INTO carrier (carrier_code, carrier_name) values ('B6','Jetblue Airlines');

-- Create airports table
CREATE TABLE aiports (
airport_code varchar(20) PRIMARY KEY NOT NULL
)

-- Create test airport table
CREATE TABLE destination_airport_test (destination_airport VARCHAR(20));

-- Find unique data
select distinct destination_airport from destination_airport_test

-- Insert data in airports table from destination_airport_test
INSERT INTO airports 
SELECT DISTINCT (airport_code) 
FROM destination_airport_test;

-- Create flights table
CREATE TABLE flights (
                        carrier_code VARCHAR(10) NOT NULL,
                        flight_number INT NOT NULL,
                        tail_number VARCHAR(20),
                        destination_airport VARCHAR(10) NOT NULL,
                        scheduled_date DATE NOT NULL,
                        scheduled_departure_time TIME NOT NULL,
                        actual_departure_time TIME,
                        departure_delay INT,
                        wheels_off TIME,
                        taxi_out_time INT,
                        delay_carrier INT,
                        delay_weather INT,
                        delay_national_aviation_system INT,
                        delay_security INT,
                        delay_late_aircraft_arrival INT
);

-- Create index, constraints and foreign key
CREATE UNIQUE INDEX flights_un ON flights (carrier_code, flight_number, destination_airport, scheduled_departure_time);
ALTER TABLE flights
    ADD CONSTRAINT fk_airport_code FOREIGN KEY (destination_airport) REFERENCES airports (airport_code);

-- Create staging table for flights table to import and test data
CREATE TABLE air_travel_stage (
                        carrier_code VARCHAR(10) NOT NULL,
                        flight_number INT NOT NULL,
                        tail_number VARCHAR(20),
                        destination_airport VARCHAR(10) NOT NULL,
                        scheduled_date DATE NOT NULL,
                        scheduled_departure_time TIME NOT NULL,
                        actual_departure_time TIME,
                        departure_delay INT,
                        wheels_off TIME,
                        taxi_out_time INT,
                        delay_carrier INT,
                        delay_weather INT,
                        delay_national_aviation_system INT,
                        delay_security INT,
                        delay_late_aircraft_arrival INT
    
-- Import data from csv file
-- This was completed via Import/Export UI of PostgresSQL

-- Calculate delay time and test data
select carriercode, flight_number, actual_departure_time - scheduled_departure_time as delay_time
from air_travel_stage

select carriercode, flight_number, scheduled_departure_time, actual_departure_time
from air_travel_stage
where actual_departure_time - scheduled_departure_time > CAST('0:00' AS TIME)
-- and carriercode = 'AA'
-- and destination_airport = 'LAX'
    
-- During testing, there was a missing airport_destination 'ACY'
-- Added missing value to table
insert into airports (airport_code)
values ('ACY')

-- Insert data from air_travel_stage table to production flights table
insert into flights
select  carriercode, 
        flight_number,
        tail_number, 
        destination_airport,
        date,
        scheduled_departure_time,
        actual_departure_time,
        departure_delay_in_minutes,
        wheels_off_time,
        taxi_out_time_in_minutes,
        delay_carrier_in_minutes,
        delay_weather_in_minutes,
        delay_national_aviation_system_in_minutes,
        delay_security_in_minutes,
        delay_late_aircraft_arrival_in_minutes   
from air_travel_stage
    
-- Add departure_from column to flights table
-- Add foreign key to departure_from column
ALTER TABLE IF EXISTS public.flights
    ADD COLUMN IF NOT EXISTS departure_from VARCHAR(20);
    
    ALTER TABLE flights
    ADD CONSTRAINT fk_airport_code_departure FOREIGN KEY (departure_from) REFERENCES airports (airport_code);
 
-- Insert ATL value to airports table
insert into airports
values ('ATL')

-- Update departure_from column in flights table to ATL since all flights are orginating from ATL
UPDATE flights set departure_from = 'ATL'