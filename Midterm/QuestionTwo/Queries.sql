use class_schedule;

#Written by John Imgrund

#Question 1
/*
SELECT bid, room_num, COUNT(*) FROM courseroom
GROUP BY bid, room_num
ORDER BY COUNT(*)DESC;
*/

#Question 2
/*
SELECT Count(*) FROM Student JOIN StudentCourse ON
	Student.sid = studentCourse.sid
WHERE studentCourse.course_id = "MTH 280";
*/

#Question 3
/*
SELECT * FROM building LEFT JOIN room ON
	building.bid = room.bid
WHERE building.bid IS NULL
OR room.bid IS NULL;
*/

#Question 4
#Find the classrooms that have no courses running in them
/*
SELECT room.room_num, seats, bname FROM building JOIN room ON
	building.bid = room.bid
    LEFT JOIN courseroom ON
		room.bid = courseroom.bid AND room.room_num = courseroom.room_num
WHERE room_type != "lab" AND (room.bid IS NULL OR courseroom.bid IS NULL);
*/

#Question 5
/*
SELECT CONCAT(course.course_id,'-', course.course_section) AS course_code, course_name, CONCAT(bname, ' ', room.room_num) AS location
	FROM professor JOIN professorcourse ON
		professor.pid = professorcourse.pid
        JOIN course ON
			professorcourse.course_id = course.course_id AND professorcourse.course_section = course.course_section
			JOIN courseroom ON
				course.course_id = courseroom.course_id AND course.course_section = courseroom.course_section
				JOIN room ON
					courseroom.bid = room.bid AND courseroom.room_num = room.room_num
					JOIN building ON
						room.bid = building.bid
WHERE professor.pfn = "Lisa" AND professor.pln = "Hall";
*/


#Question 6
/*
SELECT CONCAT (course_id,'-', course_section) AS course_code, COUNT(*)
	FROM StudentCourse
GROUP BY course_code;
*/

#Question 7
/*
SELECT CONCAT (course_id,'-', course_section) AS course_code, COUNT(*)
	FROM StudentCourse
GROUP BY course_code
ORDER BY COUNT(*)ASC;
*/

#Question 8
/*
SELECT CONCAT (course_id,'-', course_section) AS course_code 
	FROM courseroom JOIN room ON
		courseroom.bid = room.bid AND courseroom.room_num = room.room_num
WHERE room_type = "classroom" AND course_id LIKE "CSI%";
*/

#Question 9
/*
SELECT COUNT(DISTINCT course_id) AS NumberOfCourses FROM course;
*/

#Question 10
#Find all professors who are not teaching a class, thus free to teach
/*
SELECT CONCAT(pfn, ' ', pln) AS Professor 
	FROM professor LEFT JOIN professorcourse ON
		professor.pid = professorcourse.pid
WHERE professor.pid IS NULL OR professorcourse.pid IS NULL;
*/