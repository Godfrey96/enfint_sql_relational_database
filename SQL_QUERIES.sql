-- a
SELECT course_id, course_name
from course
WHERE start_date < '12-12-2021';

-- b
SELECT client_id, client_name 
from client
WHERE address LIKE '%a%';

-- c
SELECT COUNT(*)
from course;

SELECT COUNT(*)
from teacher;

SELECT COUNT(*)
from participant;

-- d
select MAX(course_length_weeks)
FROM course;

-- e
select MIN(course_length_weeks)
FROM course
WHERE level = 4;

--f
SELECT p.participant_id, p.first_name, p.last_name, p.phone_no, c.client_id, c.client_name
from client c
JOIN participant p
ON c.client_id = p.client;

-- g
SELECT teacher.first_name, teacher.last_name, teacher.phone_no
from course
INNER JOIN teacher ON course.teacher = teacher.teacher_id
WHERE course_id = 4;

-- h
SELECT participant.first_name As participant_first_name, participant.last_name As participant_last_name, course_name, teacher.first_name As teacher_first_name, teacher.last_name As teacher_last_name
FROM course
INNER join takes_course ON course.course_id = takes_course.course_id
INNER JOIN participant ON takes_course.participant_id = participant.participant_id
INNER JOIN teacher ON course.teacher = teacher.teacher_id
WHERE course.course_id = 2;












-- a
SELECT course_id, course_name
from course
WHERE start_date < '12-12-2021';

-- b
SELECT client_id, client_name 
from client
WHERE address LIKE '%a%';

-- c
SELECT COUNT(*)
from course;

SELECT COUNT(*)
from teacher;

SELECT COUNT(*)
from participant;

-- d
select MAX(course_length_weeks)
FROM course;

-- e
select MIN(course_length_weeks)
FROM course;

--f
SELECT p.participant_id, p.first_name, p.last_name, p.phone_no, c.client_id, c.client_name
from client c
JOIN participant p
ON c.client_id = p.client;

-- g
SELECT teacher.first_name, teacher.last_name, teacher.phone_no
from course
INNER JOIN teacher ON course.teacher = teacher.teacher_id
WHERE course_id = 4;

-- h
SELECT participant.first_name, participant.last_name, course_name, teacher.first_name, teacher.last_name
FROM course
INNER JOIN participant ON course.course_id = participant.participant_id
INNER JOIN teacher ON course.teacher = teacher.teacher_id
WHERE course_id = 2;












