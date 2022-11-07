CREATE TABLE teacher (
	teacher_id int not NULL,
  	first_name varchar(40),
  	last_name varchar(40),
  	language_1 varchar(3),
  	language_2 varchar(3),
  	dob date,
  	tax_id int,
  	phone_no varchar(20),
  	PRIMARY KEY (teacher_id)
);

CREATE TABLE client (
	client_id int NOT NULL,
  	client_name varchar(40),
  	address varchar(60),
  	industry varchar(20),
  	PRIMARY KEY (client_id)
);

CREATE TABLE course (
	course_id int,
  	course_name varchar(40),
  	language varchar(3),
  	level varchar(2),
  	course_length_weeks int,
  	start_date date,
  	in_school tinyint,
  	teacher int,
  	client int,
  	PRIMARY KEY (course_id),
  	FOREIGN KEY (teacher) REFERENCES teacher(teacher_id),
  	FOREIGN KEY (client) REFERENCES client(client_id)
);

CREATE TABLE participant (
	participant_id int NOT NULL,
  	first_name varchar(40),
  	last_name varchar(40),
  	phone_no varchar(20),
  	client int,
  	PRIMARY KEY (participant_id),
  	FOREIGN KEY (client) REFERENCES client(client_id)
);

CREATE TABLE takes_course (
	participant_id int NOT NULL,
  	course_id int NOT NULL,
  	FOREIGN KEY (participant_id) REFERENCES participant(participant_id),
  	FOREIGN KEY (course_id) REFERENCES course(course_id)
);


