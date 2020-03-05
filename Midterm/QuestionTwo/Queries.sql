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
SELECT Count(*) FROM Student join StudentCourse on
	Student.sid = studentCourse.sid
WHERE studentCourse.course_id = "MTH 280";
*/

#Question 3
/*
SELECT * FROM building LEFT JOIN room on
	building.bid = room.bid
WHERE building.bid IS NULL
OR room.bid IS NULL;
*/

#Question 4
#Find the classrooms that have classes vs no classes but are "class rooms"
#Left or Right Join Time
/*
SELECT room_num, seats, bname FROM room join building on
	room.bid = building.bid
WHERE room_type != "lab";
*/

#Question 5
/*
SELECT CONCAT(course.course_id,'-', course.course_section) AS course_code, course_name, CONCAT(bname, ' ', room.room_num) AS location
	FROM professor join professorcourse on
		professor.pid = professorcourse.pid
        join course on
			professorcourse.course_id = course.course_id AND professorcourse.course_section = course.course_section
			join courseroom on
				course.course_id = courseroom.course_id AND course.course_section = courseroom.course_section
				join room on
					courseroom.bid = room.bid AND courseroom.room_num = room.room_num
					join building on
						room.bid = building.bid
WHERE professor.pfn = "Lisa" AND professor.pln = "Hall";
*/

#Question 6
/*
SELECT CONCAT (course_id,'-', course_section) AS course_code, COUNT(*)
	FROM StudentCourse
GROUP BY course_code;
*/