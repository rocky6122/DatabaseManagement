#Project One
#Written by John Imgrund

#To run the Query for any given question simply 
#uncomment the query underneath the comments designating each question

USE project_one;

#Question One
#What is the most common hearing fuel by house age?
/*
SELECT (YearBlt DIV 100 * 100) AS Century, HeatFuel, COUNT(*)
		FROM building JOIN heating ON
			building.heating_id = heating.heating_id
GROUP BY Century, HeatFuel
ORDER BY YearBlt;
*/

#Question Two
#How does age affect current building Value?
/*
SELECT (YearBlt DIV 100 * 100) AS Century, AVG(CurrentBuildingValue) AS AverageBuildingValue, COUNT(*)
		FROM building JOIN property_value ON
			building.property_value_id = property_value.property_value_id
GROUP BY Century
ORDER BY YearBlt;
*/

#Question Three
#How does age effect number of rooms/bedrooms
/*
SELECT (YearBlt DIV 100 * 100) AS Century, AVG(NumofRooms) AS AverageRooms, AVG(NumofBedrooms) AS AverageBedrooms, COUNT(*)
		FROM building JOIN rooms ON
			building.rooms_id = rooms.rooms_id
GROUP BY Century
ORDER BY YearBlt;
*/

#Question Four
#Does age effect property grade
/*
SELECT (YearBlt DIV 100 * 100) AS Century, Grade, COUNT(*)
		FROM building JOIN property_grade ON
			building.property_grade_id = property_grade.property_grade_id
GROUP BY Century, Grade
ORDER BY YearBlt;
*/

#Question Five
#Does age effect total gross area
/*
SELECT (YearBlt DIV 100 * 100) AS Century, AVG(TotalGrossArea) AS AverageArea, COUNT(*)
		FROM building JOIN area ON
			building.area_id = area.area_id
GROUP BY Century
ORDER BY YearBlt;
*/