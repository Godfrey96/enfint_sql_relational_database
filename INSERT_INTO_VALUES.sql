--insert values into client
INSERT INTO client
(client_id, client_name, address, industry)
VALUES
(1, "Mogau", "Cosmo city", "Financial"),
(2, "Khotlelelo", "Tsakane", "IT"),
(3, "Mpho", "Bothashoek", "Commercial"),
(4, "Skomane", "Soweto", "Marketing"),
(5, "Godfrey", "Tembisa", "HR")

-- insert values into participant
INSERT into participant
(participant_id, first_name, last_name, phone_no, client)
VALUES
(1, "John", "Maxwell", "0786853861", 2),
(2, "Sydney", "Hugh", "0843126264", 3),
(3, "Mary", "Mandy", "0671664527", 2),
(4, "Nick", "Fury", "0789565842", 1),
(5, "Jackson", "Hellen", "0714555214", 4)

--insert values into teacher
INSERT INTO teacher
(teacher_id, first_name, last_name, language_1, language_2, dob, tax_id, phone_no)
VALUES
(1, "Lucas", "Ntereng", "Eng", "Cam", "02-Feb-1990", 4401, "0112345678"),
(2, "Ezekiel", "Mashego", "Phy", "Sap", "17-Oct-1987", 4403, "0123456789"),
(3, "Eugen", "Mohlala", "Sts", "Acc", "10-Jan-1981", 4405, "0134567892"),
(4, "Daniel", "Thokozani", "Acc", "Eng", "11-May-1973", 4402, "0145678923"),
(5, "Sipho", "Simon", "Bsm", "Cam", "25-Jun-1977", 4403, "0156789123")

--insert values into course
INSERT INTO course
(course_id, course_name, language, level, course_length_weeks, start_date, in_school, teacher, client)
VALUES
(1, "English", "Eng", "05", 4, "15-Aug-21", 1, 2, 3),
(2, "Physics", "Phy", "03", 10, "01-May-19", 2, 1, 4),
(3, "Business", "Bsm", "01", 5, "25-Jun-20", 2, 4, 3),
(4, "Accounting", "Acc", "02", 8, "05-Jan-22", 3, 3, 2),
(5, "Stats", "Sts", "04", 12, "05-Apr-20", 4, 2, 1)

--insert values into takes_course
INSERT INTO takes_course
(participant_id, course_id)
VALUES
(2,1),
(3,3),
(2,4),
(4,2),
(5,3)















