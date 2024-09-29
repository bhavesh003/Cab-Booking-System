CREATE DATABASE cab_booking;
use cab_booking;
show tables;
DESCRIBE intracab;
select * from intracab;
drop table intercity;
truncate table transport;

CREATE TABLE account (
    username VARCHAR(30),
    name VARCHAR(40),
    password VARCHAR(30),
    question VARCHAR(100),
    answer VARCHAR(50)
);

CREATE TABLE customer (
    username VARCHAR(30),
    id_type VARCHAR(20),
    number VARCHAR(20),
    name VARCHAR(30),
    gender VARCHAR(15),
    country VARCHAR(20),
    address VARCHAR(58),
    phone VARCHAR(20),
    email VARCHAR(40)
);

CREATE TABLE intercab (
    username VARCHAR(30),
    driver VARCHAR(20),
    source VARCHAR(20),
    destination VARCHAR(30),
    car VARCHAR(15),
    type VARCHAR(20),
    price VARCHAR(50),
    ref VARCHAR(20)
);

CREATE TABLE intercity (
    source VARCHAR(20),
    destination VARCHAR(20),
    type VARCHAR(20),
    driver VARCHAR(20),
    price VARCHAR(20),
    car VARCHAR(50)
);

CREATE TABLE intracab (
    username VARCHAR(30),
    driver VARCHAR(20),
    source VARCHAR(20),
    destination VARCHAR(30),
    car VARCHAR(15),
    price VARCHAR(50),
    ref VARCHAR(20)
);

CREATE TABLE intracity (
    source VARCHAR(20),
    destination VARCHAR(20),
    driver VARCHAR(20),
    price VARCHAR(20),
    car VARCHAR(50)
);

CREATE TABLE intransport (
    name VARCHAR(20),
    dname VARCHAR(20),
    source VARCHAR(20),
    destination VARCHAR(20),
    truck VARCHAR(20),
    weight VARCHAR(20),
    distance VARCHAR(20),
    price VARCHAR(20)
);

CREATE TABLE transport (
    source VARCHAR(20),
    destination VARCHAR(20),
    dname VARCHAR(20),
    price VARCHAR(20),
    truck VARCHAR(20),
    distance VARCHAR(5)
);

INSERT INTO account (username, name, password, question, answer) VALUES
('user1', 'Rahul Sharma', 'pass1', 'Your Lucky Number?', '7'),
('user2', 'Priya Gupta', 'pass2', 'Your Birth City?', 'Delhi'),
('user3', 'Amit Verma', 'pass3', 'Favorite Color?', 'Red'),
('user4', 'Sneha Iyer', 'pass4', 'Pet Name?', 'Tommy'),
('user5', 'Vikram Singh', 'pass5', 'Favorite Food?', 'Biryani'),
('user6', 'Anjali Mehta', 'pass6', 'Best Friend?', 'Neha'),
('user7', 'Karan Patel', 'pass7', 'High School?', 'St. Xavier’s'),
('user8', 'Riya Reddy', 'pass8', 'Favorite Movie?', '3 Idiots'),
('user9', 'Suresh Naik', 'pass9', 'Favorite Book?', 'The Alchemist'),
('user10', 'Nisha Roy', 'pass10', 'Dream Job?', 'Doctor');

INSERT INTO customer (username, id_type, number, name, gender, country, address, phone, email) VALUES
('user1', 'Aadhar', '1234 5678 9101', 'Rahul Sharma', 'Male', 'India', '123, MG Road, Delhi', '9876543210', 'rahul@example.com'),
('user2', 'PAN', 'ABCDE1234F', 'Priya Gupta', 'Female', 'India', '456, 2nd Cross, Bangalore', '8765432109', 'priya@example.com'),
('user3', 'Voter ID', 'XYZ1234567', 'Amit Verma', 'Male', 'India', '789, Jayanagar, Mumbai', '7654321098', 'amit@example.com'),
('user4', 'Aadhar', '2345 6789 1011', 'Sneha Iyer', 'Female', 'India', '321, Brigade Road, Bangalore', '6543210987', 'sneha@example.com'),
('user5', 'PAN', 'FGHIJ5678K', 'Vikram Singh', 'Male', 'India', '654, Connaught Place, Delhi', '5432109876', 'vikram@example.com'),
('user6', 'Voter ID', 'LMN1234567', 'Anjali Mehta', 'Female', 'India', '987, Andheri West, Mumbai', '4321098765', 'anjali@example.com'),
('user7', 'Aadhar', '3456 7890 1213', 'Karan Patel', 'Male', 'India', '159, Marine Drive, Mumbai', '3210987654', 'karan@example.com'),
('user8', 'PAN', 'JKL234567M', 'Riya Reddy', 'Female', 'India', '753, Hitech City, Hyderabad', '2109876543', 'riya@example.com'),
('user9', 'Voter ID', 'OPQ4567890', 'Suresh Naik', 'Male', 'India', '852, Banjara Hills, Hyderabad', '1098765432', 'suresh@example.com'),
('user10', 'Aadhar', '4567 8901 2345', 'Nisha Roy', 'Female', 'India', '456, Park Street, Kolkata', '0987654321', 'nisha@example.com');

INSERT INTO intercab (username, driver, source, destination, car, type, price, ref) VALUES
('user1', 'driver1', 'Delhi', 'Gurgaon', 'Swift', 'Intercity', '500', 'ref1'),
('user2', 'driver2', 'Mumbai', 'Navi Mumbai', 'Innova', 'Intracity', '800', 'ref2'),
('user3', 'driver3', 'Bangalore', 'Mysore', 'Verna', 'Intercity', '1000', 'ref3'),
('user4', 'driver4', 'Chennai', 'Pondicherry', 'XUV500', 'Intracity', '600', 'ref4'),
('user5', 'driver5', 'Hyderabad', 'Warangal', 'Brezza', 'Intercity', '700', 'ref5'),
('user6', 'driver6', 'Kolkata', 'Durgapur', 'Creta', 'Intracity', '750', 'ref6'),
('user7', 'driver7', 'Delhi', 'Agra', 'Fortuner', 'Intercity', '1200', 'ref7'),
('user8', 'driver8', 'Mumbai', 'Pune', 'Dzire', 'Intracity', '900', 'ref8'),
('user9', 'driver9', 'Bangalore', 'Coorg', 'Civic', 'Intercity', '1300', 'ref9'),
('user10', 'driver10', 'Chennai', 'Tirupati', 'Seltos', 'Intracity', '1100', 'ref10');

INSERT INTO intercity (source, destination, type, driver, price, car) VALUES
('Delhi', 'Gurgaon', 'Luxury', 'driver1', '1000', 'Innova'),
('Mumbai', 'Pune', 'Budget', 'driver2', '800', 'Swift'),
('Bangalore', 'Mysore', 'Economy', 'driver3', '1200', 'Verna'),
('Chennai', 'Madurai', 'Luxury', 'driver4', '1500', 'XUV500'),
('Hyderabad', 'Warangal', 'Economy', 'driver5', '900', 'Brezza'),
('Kolkata', 'Howrah', 'Standard', 'driver6', '500', 'Creta'),
('Delhi', 'Agra', 'Luxury', 'driver7', '1400', 'Fortuner'),
('Mumbai', 'Navi Mumbai', 'Standard', 'driver8', '600', 'Dzire'),
('Bangalore', 'Coorg', 'Economy', 'driver9', '1000', 'Civic'),
('Chennai', 'Pondicherry', 'Luxury', 'driver10', '1800', 'Seltos');

INSERT INTO intracab (username, driver, source, destination, car, price, ref) VALUES
('user1', 'driver1', 'Delhi', 'Gurgaon', 'Swift', '300', 'ref1'),
('user2', 'driver2', 'Mumbai', 'Dadar', 'Innova', '500', 'ref2'),
('user3', 'driver3', 'Bangalore', 'Indiranagar', 'Verna', '400', 'ref3'),
('user4', 'driver4', 'Chennai', 'T Nagar', 'XUV500', '350', 'ref4'),
('user5', 'driver5', 'Hyderabad', 'Banjara Hills', 'Brezza', '450', 'ref5'),
('user6', 'driver6', 'Kolkata', 'Salt Lake', 'Creta', '500', 'ref6'),
('user7', 'driver7', 'Delhi', 'Connaught Place', 'Fortuner', '600', 'ref7'),
('user8', 'driver8', 'Mumbai', 'Andheri', 'Dzire', '400', 'ref8'),
('user9', 'driver9', 'Bangalore', 'Koramangala', 'Civic', '550', 'ref9'),
('user10', 'driver10', 'Chennai', 'Anna Nagar', 'Seltos', '650', 'ref10');

INSERT INTO intracity (source, destination, driver, price, car) VALUES
('Delhi', 'Noida', 'driver1', '200', 'Swift'),
('Mumbai', 'Thane', 'driver2', '300', 'Innova'),
('Bangalore', 'Whitefield', 'driver3', '250', 'Verna'),
('Chennai', 'Tambaram', 'driver4', '180', 'XUV500'),
('Hyderabad', 'Secunderabad', 'driver5', '220', 'Brezza'),
('Kolkata', 'Dum Dum', 'driver6', '150', 'Creta'),
('Delhi', 'Ghaziabad', 'driver7', '280', 'Fortuner'),
('Mumbai', 'Malad', 'driver8', '230', 'Dzire'),
('Bangalore', 'Malleswaram', 'driver9', '260', 'Civic'),
('Chennai', 'Kotturpuram', 'driver10', '240', 'Seltos');

INSERT INTO intransport (name, dname, source, destination, truck, weight, distance, price) VALUES
('Transport1', 'driver1', 'Delhi', 'Gurgaon', 'Truck1', '500kg', '20km', '1500'),
('Transport2', 'driver2', 'Mumbai', 'Navi Mumbai', 'Truck2', '700kg', '25km', '1800'),
('Transport3', 'driver3', 'Bangalore', 'Mysore', 'Truck3', '300kg', '140km', '2000'),
('Transport4', 'driver4', 'Chennai', 'Pondicherry', 'Truck4', '600kg', '160km', '2300'),
('Transport5', 'driver5', 'Hyderabad', 'Warangal', 'Truck5', '800kg', '80km', '1700'),
('Transport6', 'driver6', 'Kolkata', 'Durgapur', 'Truck6', '400kg', '120km', '1600'),
('Transport7', 'driver7', 'Delhi', 'Agra', 'Truck7', '900kg', '200km', '2200'),
('Transport8', 'driver8', 'Mumbai', 'Pune', 'Truck8', '750kg', '150km', '1900'),
('Transport9', 'driver9', 'Bangalore', 'Coorg', 'Truck9', '500kg', '260km', '2100'),
('Transport10', 'driver10', 'Chennai', 'Tirupati', 'Truck10', '700kg', '300km', '2400');

INSERT INTO transport (source, destination, dname, price, truck, distance) VALUES
('Delhi', 'Gurgaon', 'driver1', '2000', 'Truck1', '30'),
('Mumbai', 'Navi Mumbai', 'driver2', '2500', 'Truck2', '40'),
('Bangalore', 'Mysore', 'driver3', '3000', 'Truck3', '140'),
('Chennai', 'Pondicherry', 'driver4', '2800', 'Truck4', '160'),
('Hyderabad', 'Warangal', 'driver5', '2400', 'Truck5', '80'),
('Kolkata', 'Durgapur', 'driver6', '2200', 'Truck6', '120'),
('Delhi', 'Agra', 'driver7', '3200', 'Truck7', '200'),
('Mumbai', 'Pune', 'driver8', '2700', 'Truck8', '150'),
('Bangalore', 'Coorg', 'driver9', '3500', 'Truck9', '260'),
('Chennai', 'Tirupati', 'driver10', '2900', 'Truck10', '300');
