CREATE TABLE Gyms
(gym_id INT PRIMARY KEY,
 gym_name VARCHAR(30),
 address_gym VARCHAR(100),
 city VARCHAR(30),
 phone VARCHAR(30),
 email VARCHAR(30))

 CREATE TABLE Workout
(workout_id INT PRIMARY KEY,
 workout_name VARCHAR(50),
 workout_time VARCHAR(50),
 workout_date VARCHAR(50),
 description_w VARCHAR(100))

 CREATE TABLE Membership_type
(typem_id INT PRIMARY KEY,
 name_type VARCHAR(30),
 membership_period VARCHAR(30),
 membership_amount FLOAT(30),
 signup_fee FLOAT)

 CREATE TABLE Client
(client_id INT PRIMARY KEY,
 gym_id INT REFERENCES Gyms(gym_id),
 first_name VARCHAR (30),
 last_name VARCHAR (30),
 address_client VARCHAR(100),
 contact VARCHAR(50),
 email VARCHAR(60),
 age VARCHAR(3),
 gender VARCHAR(30),
 typem_id INT REFERENCES Membership_type(typem_id),
 workout_id INT REFERENCES Workout(workout_id))

 CREATE TABLE Employee 
(employee_id INT PRIMARY KEY,
 gym_id INT REFERENCES Gyms(gym_id),
 first_name VARCHAR (30),
 last_name VARCHAR (30),
 address_e VARCHAR(100),
 username VARCHAR(30),
 password_e VARCHAR(30) 
)


INSERT INTO Gyms (gym_id, gym_name, address_gym, city, phone, email)
VALUES(1,'Spice','Str. Carol','Alba','0712154641','ceamaitaresala@gmail.com')

INSERT INTO Gyms (gym_id, gym_name, address_gym, city, phone, email)
VALUES(2,'SuperGym','Str. Stil','Alba','0776854641','supergym@gmail.com')

INSERT INTO Gyms (gym_id, gym_name, address_gym, city, phone, email)
VALUES(3,'OldGym','Str. Vest','Alba','0798754641','oldgym@gmail.com')

INSERT INTO Workout(workout_id,workout_name,workout_time,workout_date,description_w)
VALUES (1, 'Cardio', '12:00', '12.06.2021', 'run and go on the bicycle')

INSERT INTO Workout(workout_id,workout_name,workout_time,workout_date,description_w)
VALUES (2, 'Fitness', '19:00', '17.06.2021', 'legs and abs')

INSERT INTO Workout(workout_id,workout_name,workout_time,workout_date,description_w)
VALUES (3, 'Fitness', '17:30', '19.06.2021', 'chest and back')

INSERT INTO Membership_type(typem_id,name_type,membership_period,membership_amount,signup_fee)
VALUES (1, 'all day', 'one week', 30, 25)

INSERT INTO Membership_type(typem_id,name_type,membership_period,membership_amount,signup_fee)
VALUES (2, 'all day', 'one month', 150, 30)

INSERT INTO Membership_type(typem_id,name_type,membership_period,membership_amount,signup_fee)
VALUES (3, 'half of day', '3 months', 300, 27)

INSERT INTO Employee(employee_id,gym_id,first_name,last_name,address_e,username,password_e)
VALUES(5, 1, 'David', 'Olga', 'Str. Tulnicului', 'olga5467', 'angajatullunii1')

INSERT INTO Employee(employee_id,gym_id,first_name,last_name,address_e,username,password_e)
VALUES(7, 1, 'Muntean', 'Mircea', 'Str. Detunata', 'mircea123', 'mntservice')

INSERT INTO Employee(employee_id,gym_id,first_name,last_name,address_e,username,password_e)
VALUES(9, 1, 'Jurj', 'Amalia', 'Str. Macului', 'jurjamalia', 'ghiocelmicalb')

INSERT INTO Client(client_id, gym_id,first_name,last_name,address_client,contact,email,age,gender,typem_id,workout_id)
VALUES(2, 1, 'Pop', 'Ana', 'Str. Victoriei 87', '0765432189','popana@yahoo.com', '17' ,'female' ,1, 1 )

INSERT INTO Client(client_id, gym_id,first_name,last_name,address_client,contact,email,age,gender,typem_id,workout_id)
VALUES(9,2,'Banica', 'Radu', 'Str. Florilor 34', '0798765432','radu65@yahoo.com', '25' ,'male' ,2,2)

INSERT INTO Client(client_id, gym_id,first_name,last_name,address_client,contact,email,age,gender,typem_id,workout_id)
VALUES(7,3, 'Ingrid', 'Ramona', 'Str. Lalelelor 3', '0798765987','ramona9@yahoo.com', '19' ,'female' ,3,3)

SELECT * FROM Gyms
SELECT * FROM Workout
SELECT * FROM Membership_type
SELECT * FROM Client
SELECT *FROM Employee